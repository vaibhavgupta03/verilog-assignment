# Verilog Assignment: FPGA Implementation of Signal Processing Systems

This repository contains Verilog implementations for various digital logic components as part of the EEN-611 course tutorial on FPGA Implementation of Signal Processing Systems. The focus is on structural modeling in Verilog.

## Verilog Basics

Verilog is a hardware description language (HDL) used to model electronic systems. Key concepts include:

- **Modules**: Basic building blocks that encapsulate functionality, inputs, and outputs.
- **Structural Modeling**: Describes hardware by instantiating and connecting lower-level modules.
- **Data Types**: `reg` for storage, `wire` for connections, `input`/`output` for ports.
- **Operators**: Bitwise (&, |, ~, ^), logical (&&, ||, !), etc.
- **Testbenches**: Simulation environments to verify module behavior using initial blocks and $monitor/$dumpvars.
- **Simulation**: Use tools like Icarus Verilog or ModelSim to compile and run simulations, generating waveform files (.vcd) for analysis.


## How to Run and Implement

### Prerequisites
- Verilog simulator (e.g., Icarus Verilog, ModelSim, or Vivado).
- Basic knowledge of command-line tools.

### General Steps for Running Verilog Files
1. **Compile the Design**: Use the simulator to compile your Verilog modules and testbench.
   - Example with Icarus Verilog: `iverilog -o simulation_output design_file.v testbench.v`
2. **Run Simulation**: Execute the compiled simulation to generate waveforms and monitor outputs.
   - Example: `vvp simulation_output`
3. **View Waveforms**: Open the generated `.vcd` file in a waveform viewer (e.g., GTKWave) to visualize signal changes.
   - Example: `gtkwave waveform.vcd`
4. **Analyze Output**: Check console output for $monitor statements and verify expected behavior.

### Implementation Tips
- **Structural Modeling**: Instantiate sub-modules and connect them using wires.
- **Testing**: Create comprehensive testbenches with multiple test cases to cover all input combinations.
- **Synthesis**: For FPGA implementation, ensure code is synthesizable (avoid constructs like initial blocks in design modules).
- **Best Practices**: Use meaningful names, add comments, and modularize code for reusability.



## Assignment Solutions

The repository includes solutions to various tutorial questions, implemented using structural Verilog modeling. Each question builds upon basic components to create more complex digital circuits. Refer to `Tutorial-1.pdf` for the full list of questions and implement them following the general guidelines above.
