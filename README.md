# TI-85 Reverse Engineering Project

## Overview

This project contains a reverse-engineered disassembly of the TI-85 calculator's ROM (Page 0), with detailed annotations explaining the Z80 assembly code structure and TI-85 hardware interactions.

## Files

- `ROM/ti85_p0.s` - Annotated Z80 assembly disassembly of TI-85 ROM Page 0 (16KB)
- `docs/ti-ports.txt` - Documentation of TI-85 hardware ports
- `docs/ti-vars.txt` - Documentation of TI-85 variable formats and memory layout
- `docs/ti86linkprot.txt` - Link protocol documentation (TI-86, but relevant)

## Annotated Components

### System Architecture
- **Z80 CPU**: 8-bit processor with 16-bit addressing
- **Memory Map**:
  - 0000-3FFF: ROM Page 0 (this disassembly)
  - 4000-7FFF: Banked ROM pages (selected via port 5)
  - 8000-FFFF: RAM (system memory, user programs, display buffer)
- **Hardware Ports**: 8 I/O ports controlling LCD, keypad, memory paging, etc.

### Key Functions Annotated

#### RST Vectors (Interrupt Handlers)
- **RST0**: System initialization and reset handler
- **RST1-RST3**: Optimized floating-point operations (add, multiply, divide)
- **RST4-RST6**: System functions (FP operations, I/O, keyboard)
- **RST7**: Main interrupt service routine (ON key, 200Hz timer)

#### System Initialization
- **SetStackPointer**: Complete boot sequence including stack setup, video configuration, interrupt initialization, and hardware setup

#### Input/Output Systems
- **Keypad Scanning**: Matrix-based key detection with debouncing and auto-repeat
- **Display Management**: LCD control, contrast setting, buffer management
- **Timer Functions**: 200Hz interrupt handling for display updates and blinking

#### Hardware Interfaces
- Port I/O operations with proper timing
- Interrupt handling and acknowledgment
- Memory-mapped display buffer access

## TI-85 Hardware Details

### Ports
- **Port 0**: Video buffer offset (controls display memory mapping)
- **Port 1**: Keypad interface (write masks, read key states)
- **Port 2**: LCD contrast control
- **Port 3**: ON status, LCD power, interrupt control
- **Port 4**: Video buffer width, interrupt speed
- **Port 5**: Memory page selection (ROM banking)
- **Port 6**: Power mode control
- **Port 7**: Link port for calculator-to-calculator communication

### Memory Organization
- **System RAM** (0x8000+): Stores system state, variables, and temporary data
- **Display Buffer** (0xFC00-0xFFFF): Memory-mapped LCD display
- **VAT (Variable Allocation Table)**: Tracks user variables and programs
- **IY Register**: Used as base pointer for system flags and state

### Keypad Matrix
The TI-85 uses a matrix keypad scanned by writing row masks to port 1 and reading column states. The scanning algorithm detects single key presses and handles debouncing.

## Annotations Structure

The disassembly includes:
- **Instruction-level comments**: Explaining Z80 opcodes and their immediate effects
- **Function-level documentation**: Describing the purpose and algorithm of each routine
- **Hardware context**: Relating code to specific TI-85 ports and peripherals
- **System integration**: Showing how functions interact with the overall calculator operation

## Usage

This annotated disassembly is useful for:
- Understanding TI-85 internal operation
- Developing assembly language programs for the TI-85
- Studying embedded system design and Z80 programming
- Reverse engineering calculator firmware

## Technical Notes

- **Z80 Assembly**: Uses standard Z80 instruction set with TI-85 specific I/O
- **Interrupt System**: IM 1 mode with RST vectors for common operations
- **Memory Banking**: Port 5 controls which ROM page appears at 0x4000-0x7FFF
- **Display**: 128x64 pixel LCD with programmable contrast and buffer offset

## References

- TI-85 Technical Reference (where available)
- Z80 CPU documentation
- Calculator-specific hardware analysis

---

*This disassembly was created through reverse engineering of TI-85 ROM Page 0, with annotations added to explain the Z80 assembly code structure and TI-85 hardware interactions.*