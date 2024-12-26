# Digital VLSI Design with VHDL and Vivado SDK

The repository contains VHDL code developed for the Digital VLSI course - ECE NTUA. The design, simulation, and implementation of the digital systems were carried out using Vivado SDK 2018.3 (from Xilinx). The targeted hardware platform is the Zybo board from Xilinx, which features a Zynq-7000 SoC (integrating an ARM dual-core processor with FPGA logic).

## Key Projects
### FIR Filter:
This project implements a Finite Impulse Response (FIR) Filter of depth N on the FPGA, processing 8-bit input values. The filter's modules are:
- ROM module:
Stores the N constant coefficients that are multiplied with the N input values to get the output.
- RAM module:
Acts as a FIFO, storing the N most recent input values that contribute to the output. data access is address-based.
- MAC unit:
The final output requires the multiply-accumulate functionality from the N most recent inputs, which is done in the MAC module.
- Control Unit:
This unit synchronizes the above modules and the output, and provides valid inputs to each unit ensuring proper operation. 
- FIR filter unit:
Integrates all the modules to a standalone digital system with defined inputs and outputs. 

The FIR filter has been tested at a simulation level (files inside the FIR_filter directory), but also implemented on the FPGA (files inside the FIR_with_Zybo directory). An IP block has been created and mapped to the programmable logic of the FPGA SoC, enabling communication with the ARM processors via the AXI4 interface. 

### Debayering Filter:
This project includes the design of a Debayering Filter for NxN images, where N can be parameterized. The filter converts a Bayer image to RGB by using a 3x3 sliding window to calculate the brightness of each color in a given pixel and considering that the Bayer image follows the GBRG standard. The circuit is able to output the color of a pixel at every clock cycle and signal when an image has been completely processed.
The debayering filter consists of three main modules:
- Serial-to-Parallel Module:
Converts serial input data into a 3x3 matrix using 3 FIFOs and 9 DFFs. This parallel output is passed to subsequent stages to compute RGB values.
- Accumulator:
Computes the RGB values for each pixel based on the parallel input from the Serial-to-Parallel module and the pixel's row and column indices. It determines the pixel's state and calculates the averages of neighboring pixels of the same color.
- Control Unit:
Manages the operation of the above modules. It increments a pixel_counter for tracking row and column indices, manages delays for outputs, and ensures proper handling of new images.
- Debayer Block:
Integrates all the modules, combining inputs and outputs into a cohesive system. Testing is performed through the debayer_block_tb testbench, included with the code files.

The design has been developed and verified at the behavioral simulation level.

### Systolic Array Multiplier:
The final project implements a systolic 4-bit Carry-Propagate Multiplier using Full Adders. The circuit supports feeding a new pair of inputs at every clock cycle and outputs the correct result in each subsequent cycle after an initial latency period. Again the design has been developed and verified at the behavioral simulation level.
The Multiplier consists of the following modules:
- depth_reg:
Implements a FIFO that provides each input a delay to the output according to the depth size.
- custom_FA:
Utilizes a depth_reg and a synchronous Full-Adder in order to provide the addition result with a specific delay.
- Pipelined_Multiplier:
Combines all previous modules in order to multiply the 2 numbers. Gets as input 2 4-bit values and provides an output 8-bit value
- Pipelined_Multiplier_tb:
Used as the testbench to verify correct operation of the multiplier.
