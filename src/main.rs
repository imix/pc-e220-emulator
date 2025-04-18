// PC-E220 Emulator adapted to use pixels + winit rendering
//

// PC-E220 Emulator refactored with separate CPU and UI threads using Arc + Mutex

use std::io::*;
use std::sync::{Arc, Mutex};
use std::thread;
use std::time::Duration;

use iz80::{Cpu, Machine};
use pixels::{Pixels, SurfaceTexture};
use winit::dpi::LogicalSize;
use winit::event::{ElementState, Event, KeyboardInput, VirtualKeyCode, WindowEvent};
use winit::event_loop::{ControlFlow, EventLoop};
use winit::window::WindowBuilder;

const WIDTH: usize = 144;
const HEIGHT: usize = 32;

// ROM Includes
static RAM7800: &[u8] = include_bytes!("../assets/ram_7800.bin");
static BANK0_SYSTEM: &[u8] = include_bytes!("../assets/bank0.bin");
static BANK1_BASIC: &[u8] = include_bytes!("../assets/bank1.bin");
static BANK2_PERIPHERY: &[u8] = include_bytes!("../assets/bank2.bin");
static BANK3_MONITOR: &[u8] = include_bytes!("../assets/bank3.bin");
static BANK4_FONTS: &[u8] = include_bytes!("../assets/bank4.bin");
static BANK5_ASM: &[u8] = include_bytes!("../assets/bank5.bin");
static BANK6_ENG1: &[u8] = include_bytes!("../assets/bank6.bin");
static BANK7_ENG2: &[u8] = include_bytes!("../assets/bank7.bin");

fn main() {
    let machine = Arc::new(Mutex::new(PCE220Machine::new()));
    let cpu = Arc::new(Mutex::new(Cpu::new()));

    // Load memory once at the start
    {
        let mut machine = machine.lock().unwrap();
        // on startup load rom to 0x0000, will be removed later
        load_memory(&mut machine, 0x0000, BANK0_SYSTEM);
        // load_memory(&mut machine, 0x7800, RAM7800);
        // probably not necessary, setup code in bank0-0.asm does this
        load_memory(&mut machine, 0x8000, BANK0_SYSTEM);
        load_memory(&mut machine, 0xC000, BANK1_BASIC);
        machine.in_values[3] = 1;
        machine.in_values[0x19] = 1;
    }

    // Enable CPU trace mode once at the start
    {
        let mut cpu = cpu.lock().unwrap();
        cpu.set_trace(true);
    }

    // Spawn CPU emulation thread
    let cpu_clone = Arc::clone(&cpu);
    let machine_clone = Arc::clone(&machine);
    thread::spawn(move || loop {
        {
            let mut cpu = cpu_clone.lock().unwrap();
            let mut machine = machine_clone.lock().unwrap();
            for _ in 0..1000 {
                cpu.execute_instruction(&mut *machine);
                cpu.signal_interrupt(false);
            }
        }
        thread::sleep(Duration::from_micros(100));
    });

    // UI thread
    let event_loop = EventLoop::new();
    let window = WindowBuilder::new()
        .with_title("PC-E220 Emulator")
        .with_inner_size(LogicalSize::new(WIDTH as f64 * 4.0, HEIGHT as f64 * 4.0))
        .with_resizable(false)
        .build(&event_loop)
        .expect("Failed to build window");

    let surface_texture = SurfaceTexture::new(WIDTH as u32, HEIGHT as u32, &window);
    let mut pixels = Pixels::new(WIDTH as u32, HEIGHT as u32, surface_texture).unwrap();

    let machine_ui = Arc::clone(&machine);
    let cpu_ui = Arc::clone(&cpu);

    event_loop.run(move |event, _, control_flow| {
        *control_flow = ControlFlow::Poll;

        match event {
            Event::RedrawRequested(_) => {
                let machine = machine_ui.lock().unwrap();
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
                event: WindowEvent::KeyboardInput { input, .. },
                ..
            } => {
                let mut machine = machine_ui.lock().unwrap();
                let mut cpu = cpu_ui.lock().unwrap();
                if let Some(keycode) = input.virtual_keycode {
                    match input.state {
                        ElementState::Pressed => {
                            println!("Key pressed → keycode: {:?}", keycode);
                            machine.key_pressed(keycode);
                            machine.in_values[0x16] = 0x01;
                            cpu.signal_interrupt(true);
                        }
                        ElementState::Released => {
                            println!("Key released → keycode: {:?}", keycode);
                            machine.key_released(keycode);
                        }
                    }
                }
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

fn load_memory(machine: &mut PCE220Machine, address: u16, memory: &[u8]) {
    for (i, byte) in memory.iter().enumerate() {
        machine.poke(address + i as u16, *byte);
    }
}

struct PCE220Machine {
    mem: [u8; 65536],
    pub framebuffer: [u8; WIDTH * HEIGHT],
    pub in_values: [u8; 256],
    pub in_port: Option<u8>,
    pub out_port: Option<u8>,
    pub out_value: u8,
    // keyboard
    kb_scan_col: u8,
    kb_pressed: Option<VirtualKeyCode>,
    // display
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
            kb_scan_col: 0,
            kb_pressed: None,
            row: 0,
            col: 0,
            last_col: 0,
            higher_cols: false,
        }
    }
    pub fn key_pressed(&mut self, keycode: VirtualKeyCode) {
        self.kb_pressed = Some(keycode);
    }
    pub fn key_released(&mut self, keycode: VirtualKeyCode) {
        self.kb_pressed = None
    }
    pub fn get_kb_column(&mut self) -> u8 {
        let coord: Option<(u8, u8)> = match self.kb_pressed {
            Some(VirtualKeyCode::Escape) => Some((0x01, 0x01)), // off
            Some(VirtualKeyCode::Q) => Some((0x01, 0x02)),
            Some(VirtualKeyCode::W) => Some((0x01, 0x04)),
            Some(VirtualKeyCode::E) => Some((0x01, 0x08)),
            Some(VirtualKeyCode::R) => Some((0x01, 0x10)),
            Some(VirtualKeyCode::T) => Some((0x01, 0x20)),
            Some(VirtualKeyCode::Y) => Some((0x01, 0x40)),
            Some(VirtualKeyCode::U) => Some((0x01, 0x80)),

            Some(VirtualKeyCode::A) => Some((0x02, 0x01)),
            Some(VirtualKeyCode::S) => Some((0x02, 0x02)),
            Some(VirtualKeyCode::D) => Some((0x02, 0x04)),
            Some(VirtualKeyCode::F) => Some((0x02, 0x08)),
            Some(VirtualKeyCode::G) => Some((0x02, 0x10)),
            Some(VirtualKeyCode::H) => Some((0x02, 0x20)),
            Some(VirtualKeyCode::J) => Some((0x02, 0x40)),
            Some(VirtualKeyCode::U) => Some((0x02, 0x80)),

            Some(VirtualKeyCode::Z) => Some((0x04, 0x01)),
            Some(VirtualKeyCode::X) => Some((0x04, 0x02)),
            Some(VirtualKeyCode::C) => Some((0x04, 0x04)),
            Some(VirtualKeyCode::V) => Some((0x04, 0x08)),
            Some(VirtualKeyCode::B) => Some((0x04, 0x10)),
            Some(VirtualKeyCode::N) => Some((0x04, 0x20)),
            Some(VirtualKeyCode::M) => Some((0x04, 0x40)),
            Some(VirtualKeyCode::Comma) => Some((0x04, 0x80)),

            // Some(VirtualKeyCode::BASIC) => Some((0x08, 0x01)),
            // Some(VirtualKeyCode::TEXT) => Some((0x08, 0x02)),
            // Some(VirtualKeyCode::CAPS) => Some((0x08, 0x04)),
            // Some(VirtualKeyCode::?) => Some((0x08, 0x08)),
            Some(VirtualKeyCode::Tab) => Some((0x08, 0x10)),
            Some(VirtualKeyCode::Space) => Some((0x08, 0x20)),
            Some(VirtualKeyCode::Up) => Some((0x08, 0x40)),
            Some(VirtualKeyCode::Down) => Some((0x08, 0x80)),

            Some(VirtualKeyCode::Left) => Some((0x10, 0x01)),
            Some(VirtualKeyCode::Right) => Some((0x10, 0x02)),
            //Some(VirtualKeyCode::C) => Some((0x10, 0x04)),
            Some(VirtualKeyCode::Numpad0) => Some((0x10, 0x08)),
            Some(VirtualKeyCode::Period) => Some((0x10, 0x10)),
            //Some(VirtualKeyCode::N) => Some((0x10, 0x20)),
            Some(VirtualKeyCode::NumpadAdd) => Some((0x10, 0x40)),
            Some(VirtualKeyCode::NumpadEnter) => Some((0x10, 0x80)),

            Some(VirtualKeyCode::L) => Some((0x20, 0x01)),
            //Some(VirtualKeyCode::O) => Some((0x20, 0x02)),
            //Some(VirtualKeyCode::Insert) => Some((0x20, 0x04)),
            Some(VirtualKeyCode::Numpad1) => Some((0x20, 0x08)),
            Some(VirtualKeyCode::Numpad2) => Some((0x20, 0x10)),
            Some(VirtualKeyCode::Numpad3) => Some((0x20, 0x20)),
            Some(VirtualKeyCode::NumpadSubtract) => Some((0x20, 0x40)),
            //Some(VirtualKeyCode::NumpadEnter) => Some((0x20, 0x80)),
            Some(VirtualKeyCode::I) => Some((0x40, 0x01)),
            Some(VirtualKeyCode::O) => Some((0x40, 0x02)),
            Some(VirtualKeyCode::Insert) => Some((0x40, 0x04)),
            Some(VirtualKeyCode::Numpad4) => Some((0x40, 0x08)),
            Some(VirtualKeyCode::Numpad5) => Some((0x40, 0x10)),
            Some(VirtualKeyCode::Numpad6) => Some((0x40, 0x20)),
            Some(VirtualKeyCode::NumpadMultiply) => Some((0x40, 0x40)),
            //Some(VirtualKeyCode::NumpadEnter) => Some((0x40, 0x80)),
            Some(VirtualKeyCode::P) => Some((0x80, 0x01)),
            Some(VirtualKeyCode::Back) => Some((0x80, 0x02)),
            //Some(VirtualKeyCode::Insert) => Some((0x80, 0x04)),
            Some(VirtualKeyCode::Numpad7) => Some((0x80, 0x08)),
            Some(VirtualKeyCode::Numpad8) => Some((0x80, 0x10)),
            Some(VirtualKeyCode::Numpad9) => Some((0x80, 0x20)),
            Some(VirtualKeyCode::NumpadDivide) => Some((0x80, 0x40)),
            //Some(VirtualKeyCode::NumpadEnter) => Some((0x80, 0x80)),
            _ => None, // no match
        };
        println!("Key pressed → want col: {:?}", self.kb_scan_col);
        if let Some((x, y)) = coord {
            if self.kb_scan_col == x {
                println!("Key pressed → coord: {:?}", coord);
                return y;
            }
        }
        0
    }
}

impl Machine for PCE220Machine {
    fn peek(&self, address: u16) -> u8 {
        self.mem[address as usize % 65536]
    }

    fn poke(&mut self, address: u16, value: u8) {
        self.mem[address as usize % 65536] = value;
    }

    fn port_in(&mut self, address: u16) -> u8 {
        let trunc_address = address & 0xff;
        if (trunc_address == 0x10) {
            self.get_kb_column()
        } else {
            let value = self.in_values[address as usize % 256];

            println!(
                "PORT IN → addr: 0x{:02X}, value: 0x{:02X} ({})",
                trunc_address, value, value as char
            );

            self.in_port = Some(trunc_address as u8);
            value
        }
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
            // set keyboard scan column
            0x11 => {
                self.kb_scan_col = (value & 0xff) as u8;
            }
            // clear interrupt reasons
            0x16 => {
                let keep_bits = value ^ 0xff;
                self.in_values[0x16] = self.in_values[0x16] & keep_bits;
            }
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
                load_memory(self, 0xC000, data);
                self.in_values[0x19] = bank;

                let exp = (value >> 6) & 0x1;
                if exp == 0x01 {
                    print!("Expansion selected!");
                }
            }
            // Guess: unmap ROM from 0x0000
            // did not find anything in the documentation about this port
            // it is called exacly once in the source, when 0xfffa is called from
            // the boot code in bank0-0.asm
            0x1A => {
                let data: [u8; 0x4000] = [0; 0x4000]; // 16 KB of zeroes
                load_memory(self, 0x0000, &data);
            }
            // LCD-data out
            0x5A => {
                // each byte represents 8 successive pixels in a column
                println!(
                    "LCD-data → row: {}, col: {}, last_col: {}",
                    self.row, self.col, self.last_col
                );
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
                    self.last_col = self.last_col.saturating_sub(1);
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
}
