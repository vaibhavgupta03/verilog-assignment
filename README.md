# Tutorial-1: Verilog Structural Modelling

## Course
EEN - 611 FPGA Implementation of Signal Processing Systems  
Department of Electrical Engineering  
Spring Semester 2026

## Overview
This repository contains solutions to Tutorial-1 on Verilog structural modelling. The assignment covers fundamental digital logic design concepts using Verilog HDL, focusing on structural modelling techniques.

## Assignment Questions

### 1. Logic Gates
**Objective:** Write Verilog code for the logic gates AND, OR, NOT, NAND, NOR, XOR, XNOR and verify with test bench.  
**Status:** Solved  
**Files:** `qn1/and.v`, `qn1/or.v`, `qn1/not.v`, `qn1/nand.v`, `qn1/nor.v`, `qn1/xor.v`, `qn1/xnor.v`, `qn1/testbench.v`  
**Description:** Implemented structural models for all basic logic gates and a comprehensive testbench for verification.

### 2. Half Adder
**Objective:** Design a half adder and verify the performance through Verilog code.  
**Status:** Not implemented yet

### 3. 1-bit Full Adder
**Objective:** Design a 1-bit full adder and verify the performance through Verilog code.  
**Status:** Not implemented yet

### 4. 1-bit Full Adder using Half Adder Modules
**Objective:** Develop a 1-bit full adder Verilog module using the half adder Verilog modules.  
**Status:** Not implemented yet

### 5. 4-bit Ripple Carry Adder
**Objective:** Design and develop a 4-bit ripple carry adder Verilog module using the 1-bit full adder modules.  
**Status:** Not implemented yet

### 6. 4-bit Prime Number Detector
**Objective:** Design a 4-bit prime number detector and write a Verilog structural module.  
**Status:** Not implemented yet

### 7. 4 × 1 Multiplexer
**Objective:** Design and verify the 4 × 1 multiplexer function through Verilog structural module.  
**Status:** Not implemented yet

### 8. 3 × 8 Line Decoder
**Objective:** Design a 3 × 8 line decoder and verify the performance through Verilog.  
**Status:** Not implemented yet

### 9. 4 × 1 Multiplexer with Tristate Buffers
**Objective:** Design a 4 × 1 multiplexer with tristate buffers and verify the performance through Verilog.  
**Status:** Not implemented yet

### 10. Full Subtractor with Half Subtractor Modules
**Objective:** Design a full subtractor with half subtractor Verilog modules.  
**Status:** Not implemented yet

## Directory Structure
```
verilog-assignment/
├── README.md
├── Tutorial-1.pdf
└── qn1/
    ├── and.v
    ├── or.v
    ├── not.v
    ├── nand.v
    ├── nor.v
    ├── xor.v
    ├── xnor.v
    ├── testbench.v
    ├── waveform.vcd
    └── mysim
```

## How to Run the Simulations

### Prerequisites
- Icarus Verilog (iverilog) installed on your system
- GTKWave for waveform viewing (optional)

### Running Question 1 (Logic Gates)
1. Navigate to the `qn1/` directory:
   ```
   cd qn1
   ```

2. Compile the Verilog files:
   ```
   iverilog -o mysim testbench.v and.v or.v not.v nand.v nor.v xor.v xnor.v
   ```

3. Run the simulation:
   ```
   vvp mysim
   ```

4. View the waveform (optional):
   ```
   gtkwave waveform.vcd
   ```

### General Instructions for Other Questions
- Create a new directory for each question (e.g., `qn2/`, `qn3/`, etc.)
- Implement the required Verilog modules
- Create appropriate testbenches
- Follow the same compilation and simulation steps as above

## Notes
- Only Question 1 has been implemented so far.
- All designs use structural modelling as required by the assignment.
- Testbenches are provided to verify the functionality of each module.
- Waveform files are generated for analysis in GTKWave.

## Author
[Your Name]

## Submission
This repository contains the complete solution to Tutorial-1. Ensure all Verilog files compile without errors and testbenches pass before submission.
