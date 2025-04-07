// PC-E220 Emulator adapted to use pixels + winit rendering

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

static PROGRAM: &[u8] = include_bytes!("../assets/a.bin");
static BANK0_SYSTEM: &[u8] = include_bytes!("../assets/bank0.bin");
static BANK1_BASIC: &[u8] = include_bytes!("../assets/bank1.bin");
static BANK2_PERIPHERY: &[u8] = include_bytes!("../assets/bank2.bin");
static BANK3_MONITOR: &[u8] = include_bytes!("../assets/bank3.bin");
static BANK4_FONTS: &[u8] = include_bytes!("../assets/bank4.bin");
static BANK5_ASM: &[u8] = include_bytes!("../assets/bank5.bin");
static BANK6_ENG1: &[u8] = include_bytes!("../assets/bank6.bin");
static BANK7_ENG2: &[u8] = include_bytes!("../assets/bank7.bin");

fn main() {
    // Load initial roms
    let mut machine = PCE220Machine::new();
    for (i, byte) in PROGRAM.iter().enumerate() {
        machine.poke(0x0000 + i as u32, *byte);
    }
    for (i, byte) in BANK0_SYSTEM.iter().enumerate() {
        machine.poke(0x8000 + i as u32, *byte);
    }
    for (i, byte) in BANK1_BASIC.iter().enumerate() {
        machine.poke(0xC000 + i as u32, *byte);
    }

    let mut cpu = Cpu::new();
    cpu.set_trace(true);
    // BFF4 RUN Mode
    cpu.state.set_pc(0xbff4);
    //cpu.state.set_pc(0x0000);

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
    higher_cols: bool,
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
            higher_cols: false,
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
        let trunc_address = address & 0xff;
        let value = self.in_values[address as usize % 256];

        println!(
            "PORT IN → addr: 0x{:02X}, value: 0x{:02X} ({})",
            trunc_address, value, value as char
        );

        self.in_port = Some(trunc_address as u8);
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

        //let timeout = time::Duration::from_millis(20);
        //thread::sleep(timeout);

        match trunc_address {
            // switch memory from bank
            0x19 => {
                // 0xC000 mapping
                let bank = value & 0x07;
                println!("Bank-mapping 0xC000 → bank: {}", bank);
                let data = match bank {
                    0x00 => BANK0_SYSTEM,
                    0x01 => BANK1_BASIC,
                    0x02 => BANK2_PERIPHERY,
                    0x03 => BANK3_MONITOR,
                    0x04 => BANK4_FONTS,
                    0x05 => BANK5_ASM,
                    0x06 => BANK6_ENG1,
                    0x07 => BANK7_ENG2,
                    _ => BANK1_BASIC,
                };
                for (i, byte) in data.iter().enumerate() {
                    self.poke(0xC000 + i as u32, *byte);
                }
                let exp = (value >> 6) & 0x1;
                if exp == 0x01 {
                    print!("Expansion selected!");
                }
            }
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
                if self.higher_cols {
                    self.last_col -= 1;
                } else {
                    self.last_col += 1;
                }
            }
            // LCD-control out
            // from: https://wwwhomes.uni-bielefeld.de/achim/pc-e220/char_out.txt
            // ; the 24x4 character LCD has on each position 6x8 pixels
            // ; the left 12 columns (0-11) are addressed from left to right
            // ; but the right 12 column are logical the rows 4-7 and these
            // ; columns are addressed by 0-11 from right to left!
            0x58 => {
                // first part of row, rows start with 0x8b, cols with 0x40
                if value & 0x40 != 0x40 {
                    let row = value & 0x07;
                    if row < 4 {
                        self.row = row as usize;
                        self.higher_cols = false;
                        println!("LCD-control → row: {}", self.row);
                    } else {
                        self.row = (row - 4) as usize;
                        self.higher_cols = true;
                        println!("LCD-control → row high: {}", self.row);
                    }
                } else {
                    // column
                    println!("LCD-control → value: {}", value);
                    println!("LCD-control → (val & 0x3f): {}", (value & 0x3f));
                    println!("LCD-control → (val & 0x3f) / 5: {}", (value & 0x3f) / 5);
                    let val = ((value & 0x3f) / 5) as usize;
                    if self.higher_cols {
                        self.col = 23 - val;
                        self.last_col = 5;
                    } else {
                        self.col = val;
                        self.last_col = 0;
                    }
                    println!("LCD-control → col: {}", self.col);
                }
            }
            _ => {}
        }
    }

    fn use_cycles(&self, _cycles: u32) {}
}
