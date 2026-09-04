# Digital & Analog IC Design — Verilog / Vivado / CMOS

A collection of digital design implementations in Verilog (simulated and synthesized using Xilinx Vivado) and analog CMOS circuit designs, ranging from fundamental logic gates to sequential systems and finite state machines, alongside basic analog amplifier design and simulation.

## Overview

This repository documents a structured progression through digital logic design and analog IC design — starting from combinational building blocks, moving through sequential elements, and extending into memory and control systems on the digital side, with foundational CMOS amplifier topologies on the analog side.

Each design is self-contained with its own source code, testbench, and simulation results, making it easy to navigate, reuse, or extend individual modules.

## Repository Structure

```
digital-design-verilog/
│
├── DIGITAL
│   │
│   ├── COMBINATIONAL
│   │   ├── Logic Gates
│   │   ├── MUX
│   │   ├── DEMUX
│   │   ├── Encoder
│   │   ├── Decoder
│   │   ├── Half Adder
│   │   ├── Full Adder
│   │   ├── Ripple Carry Adders
│   │   └── Multipliers
│   │
│   ├── SEQUENTIAL
│   │   ├── SR Flip-Flop
│   │   ├── JK Flip-Flop
│   │   ├── D Flip-Flop
│   │   ├── T Flip-Flop
│   │   ├── Counters
│   │   ├── Ring Counter
│   │   ├── Johnson Counter
│   │   ├── Shift Register
│   │   └── FSM
│   │
│   └── MEMORY
│       └── 16 × 4 Memory
│
└── ANALOG / CMOS VLSI
    ├── CMOS Basic Gates
    ├── Differential Amplifier
    ├── CMOS Inverting Amplifier
    ├── Common Source Amplifier
    ├── Common Gate Amplifier
    └── Common Drain Amplifier
```

Each individual design folder follows a consistent internal layout:

```
design-name/
├── src/
│   └── design.v
├── testbench/
│   └── tb_design.v
└── results/
    ├── rtl_schematic.png
    └── simulation_waveform.png
```

## Contents

### Digital Design (Verilog)

#### Combinational

| Module | Description |
|---|---|
| `Logic Gates` | Basic logic gate implementations |
| `MUX` | 4:1, 8:1 Multiplexers |
| `DEMUX` | 1:4, 1:8 Demultiplexers |
| `Encoder` | 4:2, 8:3 Encoders |
| `Decoder` | 2:4, 3:8 Decoders |
| `Half Adder` | Half Adder |
| `Full Adder` | Full Adder |
| `Ripple Carry Adders` | 4-bit and 8-bit Ripple Carry Adders (including 8-bit RCA built from two 4-bit RCAs) |
| `Multipliers` | 2-bit and 4-bit Multipliers |

#### Sequential

| Module | Description |
|---|---|
| `SR Flip-Flop` | SR Flip-Flop |
| `JK Flip-Flop` | JK Flip-Flop |
| `D Flip-Flop` | D Flip-Flop |
| `T Flip-Flop` | T Flip-Flop |
| `Counters` | 4-bit Up/Down Counter, Mod-10, Mod-12 Counters |
| `Ring Counter` | Ring Counter |
| `Johnson Counter` | Johnson Counter |
| `Shift Register` | Universal Shift Register |
| `FSM` | Finite State Machine design |

#### Memory

| Module | Description |
|---|---|
| `16 × 4 Memory` | 16×4 Memory design |

### Analog Design (CMOS VLSI)

| Module | Description |
|---|---|
| `CMOS Basic Gates` | CMOS implementation of basic logic gates |
| `Differential Amplifier` | Differential amplifier design and simulation |
| `CMOS Inverting Amplifier` | CMOS inverting amplifier design and simulation |
| `Common Source Amplifier` | Common Source amplifier configuration |
| `Common Gate Amplifier` | Common Gate amplifier configuration |
| `Common Drain Amplifier` | Common Drain amplifier configuration |

## Tools & Technologies

HDL: Verilog

EDA Tool: AMD Vivado

Simulation: Vivado Simulator

Design Level: RTL

Verification: Verilog Testbenches

Version Control: Git & GitHub

## Tools Used

- **Xilinx Vivado** — RTL design, simulation, and synthesis (digital modules)
- **Verilog HDL** — Design and testbench implementation
- Analog CMOS designs simulated using the tool indicated within each respective module folder

## How to Use

1. Navigate to the specific design folder under `DIGITAL/COMBINATIONAL`, `DIGITAL/SEQUENTIAL`, `DIGITAL/MEMORY`, or `ANALOG / CMOS VLSI`.
2. The `src/` folder contains the design source file.
3. The `testbench/` folder contains the corresponding testbench used for simulation.
4. The `results/` folder contains the RTL schematic and simulation waveform captured from Vivado.

## To simulate a design in Vivado:

1. Create a new project and add the `.v` files from `src/` and `testbench/` for the module you want to run.
2. Set the testbench file as the simulation top module.
3. Run Behavioral Simulation.
4. View the generated waveform in the Vivado simulator.

## Author

GLADVIN SAMUVEL V M

Electronics & Communication Engineering,
Aspiring VLSI Engineer

Focus Areas:
 RTL Design | Verilog HDL | ASIC | Digital IC Design |RISC V
