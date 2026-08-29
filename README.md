# Digital & Analog IC Design — Verilog / Vivado / CMOS

A collection of digital design implementations in Verilog (simulated and synthesized using Xilinx Vivado) and analog CMOS circuit designs, ranging from fundamental logic gates to sequential systems and finite state machines, alongside basic analog amplifier design and simulation.

## Overview

This repository documents a structured progression through digital logic design and analog IC design — starting from combinational building blocks, moving through sequential elements, and extending into memory and control systems on the digital side, with foundational CMOS amplifier topologies on the analog side.

Each design is self-contained with its own source code, testbench, and simulation results, making it easy to navigate, reuse, or extend individual modules.

## Repository Structure

```
digital-design-verilog/
├── README.md
├── .gitignore
│
├── digital/
│   ├── logic-gates/
│   ├── mux-demux/
│   ├── encoders-decoders/
│   ├── adders/
│   ├── multipliers/
│   ├── flip-flops/
│   ├── counters/
│   ├── shift-registers/
│   ├── memory/
│   └── fsm/
│
└── analog/
    ├── cmos-basic-gates/
    ├── differential-amplifier/
    ├── cmos-inverting-amplifier/
    └── cmos-amplifiers/
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

| Module | Description |
|---|---|
| `logic-gates` | Basic logic gate implementations |
| `mux-demux` | 4:1, 8:1 Multiplexers and 1:4, 1:8 Demultiplexers |
| `encoders-decoders` | 4:2, 8:3 Encoders and 2:4, 3:8 Decoders |
| `adders` | Half Adder, Full Adder, 4-bit and 8-bit Ripple Carry Adders (including 8-bit RCA built from two 4-bit RCAs) |
| `multipliers` | 2-bit and 4-bit Multipliers |
| `flip-flops` | SR, JK, D, and T Flip-Flops |
| `counters` | 4-bit Up/Down Counter, Mod-10, Mod-12, Ring and Johnson Counters |
| `shift-registers` | Universal Shift Register |
| `memory` | 16×4 Memory design |
| `fsm` | Finite State Machine design |

### Analog Design (CMOS)

| Module | Description |
|---|---|
| `cmos-basic-gates` | CMOS implementation of basic logic gates |
| `differential-amplifier` | Differential amplifier design and simulation |
| `cmos-inverting-amplifier` | CMOS inverting amplifier design and simulation |
| `cmos-amplifiers` | Common Source, Common Gate, and Common Drain amplifier configurations |

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

1. Navigate to the specific design folder under `digital/` or `analog/`.
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
Electronics & Communication Engineering
Aspiring VLSI Engineer

Focus Areas:
 RTL Design | Verilog HDL | FPGA | Digital IC Design
