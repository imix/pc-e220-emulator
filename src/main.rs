// PC-E220 Emulator adapted to use pixels + winit rendering

use std::fs;
use std::io::*;
use std::sync::mpsc;
use std::sync::mpsc::Receiver;
use std::sync::mpsc::TryRecvError;
use std::thread;
use std::time;

use ez80::{Cpu, Machine};
use pixels::{Pixels, SurfaceTexture};
use winit::dpi::LogicalSize;
use winit::event::{Event, WindowEvent};
use winit::event_loop::{ControlFlow, EventLoop};
use winit::window::WindowBuilder;

const WIDTH: usize = 144;
const HEIGHT: usize = 32;

fn main() {
    // Load ROMs with configurable base addresses
    let rom_paths = vec![("assets/bank0.bin", 0x8000), ("assets/bank1.bin", 0xC000)];

    let roms: Vec<_> = rom_paths
        .into_iter()
        .map(|(path, base)| {
            let data = fs::read(path).unwrap_or_else(|_| panic!("Missing {}", path));
            (base as u32, data)
        })
        .collect();

    // Build emulator
    let mut machine = PCE220Machine::new();
    for (addr, data) in &roms {
        for (i, byte) in data.iter().enumerate() {
            machine.poke(*addr + i as u32, *byte);
        }
    }
    let mut cpu = Cpu::new();
    cpu.set_trace(true);
    // BFF4 RUN Mode
    cpu.state.set_pc(0xbff4);

    let event_loop = EventLoop::new();
    let window = WindowBuilder::new()
        .with_title("PC-E220 Emulator")
        .with_inner_size(LogicalSize::new(WIDTH as f64 * 4.0, HEIGHT as f64 * 4.0))
        .with_resizable(false)
        .build(&event_loop)
        .expect("Failed to build window");

    let surface_texture = SurfaceTexture::new(WIDTH as u32, HEIGHT as u32, &window);
    let mut pixels = Pixels::new(WIDTH as u32, HEIGHT as u32, surface_texture).unwrap();

    let stdin_channel = spawn_stdin_channel();
    let mut in_char_waiting = false;
    machine.in_values[3] = 1; // TX Ready

    event_loop.run(move |event, _, control_flow| {
        *control_flow = ControlFlow::Poll;

        match event {
            Event::RedrawRequested(_) => {
                for _ in 0..1000 {
                    cpu.execute_instruction(&mut machine);

                    if let Some(port) = machine.out_port {
                        match port {
                            2 => {}
                            3 => {}
                            _ => {}
                        }
                        machine.out_port = None;
                    }

                    if let Some(port) = machine.in_port {
                        match port {
                            2 => in_char_waiting = false,
                            3 => {}
                            _ => {}
                        }
                        machine.in_port = None;
                    }

                    if !in_char_waiting {
                        match stdin_channel.try_recv() {
                            Ok(key) => {
                                machine.in_values[2] = key;
                                in_char_waiting = true;
                                machine.in_values[3] = 3;
                            }
                            Err(TryRecvError::Empty) => {
                                machine.in_values[3] = 1;
                            }
                            Err(TryRecvError::Disconnected) => {}
                        }
                    }
                }

                let frame = pixels.frame_mut();
                for y in 0..HEIGHT {
                    for x in 0..WIDTH {
                        let i = y * WIDTH + x;
                        let pix = machine.framebuffer[i];
                        let rgba = [pix, pix, pix, 255];
                        let idx = i * 4;
                        frame[idx..idx + 4].copy_from_slice(&rgba);
                    }
                }

                pixels.render().unwrap();
            }
            Event::WindowEvent {
                event: WindowEvent::CloseRequested,
                ..
            } => {
                *control_flow = ControlFlow::Exit;
            }
            Event::MainEventsCleared => {
                window.request_redraw();
            }
            _ => {}
        }
    });
}

fn spawn_stdin_channel() -> Receiver<u8> {
    let (tx, rx) = mpsc::channel::<u8>();
    thread::spawn(move || loop {
        let mut buffer = String::new();
        stdin().read_line(&mut buffer).unwrap();
        for mut c in buffer.bytes() {
            if c == 10 {
                c = 13;
            }
            tx.send(c).unwrap();
        }
    });
    rx
}

struct PCE220Machine {
    mem: [u8; 65536],
    pub framebuffer: [u8; WIDTH * HEIGHT],
    pub in_values: [u8; 256],
    pub in_port: Option<u8>,
    pub out_port: Option<u8>,
    pub out_value: u8,
    row: usize,
    col: usize,
    last_col: usize,
}

impl PCE220Machine {
    pub fn new() -> Self {
        PCE220Machine {
            mem: [0; 65536],
            framebuffer: [0; WIDTH * HEIGHT],
            in_values: [0; 256],
            out_port: None,
            out_value: 0,
            in_port: None,
            row: 0,
            col: 0,
            last_col: 0,
        }
    }
}

impl Machine for PCE220Machine {
    fn peek(&self, address: u32) -> u8 {
        self.mem[address as usize % 65536]
    }

    fn poke(&mut self, address: u32, value: u8) {
        self.mem[address as usize % 65536] = value;
    }

    fn port_in(&mut self, address: u16) -> u8 {
        let value = self.in_values[address as usize % 256];
        self.in_port = Some(address as u8);
        value
    }

    fn port_out(&mut self, address: u16, value: u8) {
        let trunc_address = address & 0xff;

        println!(
            "PORT OUT → addr: 0x{:02X}, value: 0x{:02X} ({})",
            trunc_address, value, value as char
        );

        self.out_port = Some(address as u8);
        self.out_value = value;

        let timeout = time::Duration::from_millis(100);
        thread::sleep(timeout);

        match trunc_address {
            // LCD-data out
            0x5A => {
                // each byte represents 8 successive pixels in a column
                println!("LCD-data → row: {}, col: {}", self.row, self.col);
                for row_idx in 0..7 {
                    let pos_x = self.col * 5 + self.last_col;
                    let pos_y = self.row * 8 + row_idx;
                    let pixel = (value >> row_idx) & 0x01;
                    println!(
                        "LCD-data → pos_x: {}, pos_y: {}, pixel: {}",
                        pos_x, pos_y, pixel
                    );
                    self.framebuffer[pos_y * WIDTH + pos_x] = pixel * 255;
                }
                self.last_col += 1;
            }
            // LCD-control out
            0x58 => {
                // value: column*4+row | 40 , 0 <= column < 24, 0 <= row < 4
                let val = value | 0x40;
                self.row = (val & 0x03) as usize;
                self.col = ((val & 0xFC) >> 2) as usize;
                self.last_col = 0;
                println!("LCD-control → row: {}, col: {}", self.row, self.col);
            }
            _ => {}
        }
    }

    fn use_cycles(&self, _cycles: u32) {}
}
