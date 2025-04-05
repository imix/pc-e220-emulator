// PC-E220 Emulator adapted to use pixels + winit rendering

use std::fs;
use std::io::*;
use std::sync::mpsc;
use std::sync::mpsc::Receiver;
use std::sync::mpsc::TryRecvError;
use std::thread;


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
    let rom_paths = vec![
        ("assets/bank0.bin", 0x8000),
        ("assets/bank1.bin", 0xC000),
        ("assets/bank2.bin", 0x0000),
        ("assets/bank3.bin", 0x4000),
        ("assets/bank4.bin", 0x10000),
        ("assets/bank5.bin", 0x14000),
        ("assets/bank6.bin", 0x18000),
        ("assets/bank7.bin", 0x1C000),
    ];

    let roms: Vec<_> = rom_paths
        .into_iter()
        .map(|(path, base)| {
            let data = fs::read(path).unwrap_or_else(|_| panic!("Missing {}", path));
            (base as u32, data)
        })
        .collect();

    // Build emulator
    let mut machine = VilleMachine::new();
    for (addr, data) in &roms {
        for (i, byte) in data.iter().enumerate() {
            machine.poke(*addr + i as u32, *byte);
        }
    }
    let mut cpu = Cpu::new();
    cpu.state.set_pc(0x0000);

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
                            2 => {},
                            3 => {},
                            _ => {}
                        }
                        machine.out_port = None;
                    }

                    if let Some(port) = machine.in_port {
                        match port {
                            2 => in_char_waiting = false,
                            3 => {},
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
                            },
                            Err(TryRecvError::Empty) => {
                                machine.in_values[3] = 1;
                            },
                            Err(TryRecvError::Disconnected) => {},
                        }
                    }
                }

                let frame = pixels.frame_mut();
                for (i, &pix) in machine.framebuffer.iter().enumerate() {
                    let rgba = [pix, pix, pix, 255];
                    let idx = i * 4;
                    frame[idx..idx + 4].copy_from_slice(&rgba);
                }

                pixels.render().unwrap();
            }
            Event::WindowEvent { event: WindowEvent::CloseRequested, .. } => {
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
            if c == 10 { c = 13; }
            tx.send(c).unwrap();
        }
    });
    rx
}

struct VilleMachine {
    mem: [u8; 65536],
    pub framebuffer: [u8; WIDTH * HEIGHT],
    pub in_values: [u8; 256],
    pub in_port: Option<u8>,
    pub out_port: Option<u8>,
    pub out_value: u8,
    lcd_x: usize,
    lcd_y: usize,
    lcd_busy: bool,
}

impl VilleMachine {
    pub fn new() -> Self {
        VilleMachine {
            mem: [0; 65536],
            framebuffer: [0; WIDTH * HEIGHT],
            in_values: [0; 256],
            out_port: None,
            out_value: 0,
            in_port: None,
            lcd_x: 0,
            lcd_y: 0,
            lcd_busy: false,
        }
    }
}

impl Machine for VilleMachine {
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
        self.out_port = Some(address as u8);
        self.out_value = value;

        if address == 0x5A {
            for i in 0..8 {
                let pixel_y = self.lcd_y + i;
                if self.lcd_x < WIDTH && pixel_y < HEIGHT {
                    let bit = (value >> i) & 1;
                    self.framebuffer[pixel_y * WIDTH + self.lcd_x] = bit * 255;
                }
            }
            if self.lcd_x + 1 < WIDTH {
                self.lcd_x += 1;
            } else {
                self.lcd_x = 0;
                self.lcd_y = (self.lcd_y + 8) % HEIGHT;
            }
            self.lcd_busy = true;
        }

        if address == 0x58 {
            let val = value & 0x3F;
            let col = (val >> 2) as usize;
            let row = (val & 0x03) as usize;
            self.lcd_x = col * 6;
            self.lcd_y = row * 8;
            self.lcd_busy = true;
        }
    }

    fn use_cycles(&self, _cycles: u32) {}
}

// ========== assets/bank0.bin ==========
// ROM bank at 0x0000 - 0x3FFF

// ========== assets/bank1.bin ==========
// ROM bank at 0x4000 - 0x7FFF

// ========== assets/bank2.bin ==========
// ROM bank at 0x8000 - 0xBFFF

// ========== assets/bank3.bin ==========
// ROM bank at 0xC000 - 0xFFFF

// ========== assets/bank4.bin ==========
// ROM bank at 0x10000 - 0x13FFF

// ========== assets/bank5.bin ==========
// ROM bank at 0x14000 - 0x17FFF

// ========== assets/bank6.bin ==========
// ROM bank at 0x18000 - 0x1BFFF

// ========== assets/bank7.bin ==========
// ROM bank at 0x1C000 - 0x1FFFF

