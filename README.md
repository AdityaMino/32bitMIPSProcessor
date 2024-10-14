# 32bitMIPSProcessor
This project involves designing and implementing a 32-bit processor using Verilog Hardware Description Language (HDL). The processor is created as part of this NIELIT Internship, as an effort to understand the basics of computer architecture and digital design. 

## Abstract 
This project involves designing and implementing a 32-bit processor using Verilog Hardware Description Language (HDL). The processor is created as part of this NIELIT Internship, as an effort to understand the basics of computer architecture and digital design. The design takes a modular approach, including essential components such as the Arithmetic Logic Unit (ALU), Control Unit, Registers, and Memory Interface and others.

## Methodology
The MIPS 32 Processor project involves creating a 32-bit MIPS processor in Verilog HDL with a five-stage pipeline: Instruction Fetch (IF), Instruction Decode (ID), Execution (EX), Memory Access (MEM), and Write Back (WB). The design supports a range of instructions and branching operations to execute efficiently.

![image](https://github.com/user-attachments/assets/4db6f62a-4d85-42f0-a07a-abccf22edb00)


Key Design Aspects include -
1.	Pipelined Architecture

Stages: IF (fetches instructions), ID (decodes and reads registers), EX (performs calculations), MEM (handles memory operations), WB (writes results back).

2.	Instruction Set

Types: Register-to-Register (ADD, SUB), Register-to-Memory (ADDI, LW), Load/Store (LW, SW), Branching (BEQZ, BNEQZ), Halt (HLT).

3.	Instruction Fetch Stage (IF)

Operation: Activated on clk1. Fetches instructions sequentially or from a branch target if a branch is taken.

4.	Instruction Decode Stage (ID)

Operation: Activated on clk2. Reads and decodes registers, extends immediates, and classifies instructions.

5.	Execution Stage (EX)

Operation: Activated on clk1. Performs arithmetic/logic operations, address calculations, and evaluates branch conditions.

6.	Memory Access Stage (MEM)

Operation: Activated on clk2. Executes load/store operations and updates memory.

7.	Write Back Stage (WB)

Operation: Activated on clk1. Updates registers with results or handles HALT instruction.

8.	Branch Handling and Control Signals
   
Branching: Manages branch instructions and updates the program counter. Sets the HALT flag to stop execution when needed.

10.	Memory and Register Storage
    
Registers: 32 general-purpose registers.

Memory: 1024 locations for instructions and data.

This methodology outlines the efficient operation of the MIPS 32 Processor through its pipelined stages, handling various instructions and maintaining accurate control flow.

## RESULTS AND DISCUSSIONS
![image](https://github.com/user-attachments/assets/9a08ba2f-d199-4e88-b5c5-15a0bd3d616e)

The Testbench contains the following assembly code in hexadecimal format, to execute the various instructions –

```assembly
  ADDI R0,R0,0
  ADDI R1,R0,10
  ADDI R2,R0,05
  ADDI R3,R0,25
  ADD R4,R1,R2
  SUB R5,R1,R2
  HLT 
```

RISC architecture enhances CPU performance by enabling greater thread execution and boosting instruction processing speed. This architecture is prevalent in a variety of devices, including smartphones, tablets, and laptops. RISC processors are not only faster but also more cost-effective to design and manufacture due to their simpler components and fewer transistors. This makes them ideal for use in system-on-chip designs, a prominent trend in modern processor development. MIPS-based architectures exemplify RISC principles, though they can vary based on pipeline implementations, such as single-cycle or multi-cycle designs.
The various instructions that can be implemented are as follows:

- Register-Register ALU Operations: Includes instructions like ADD, SUB, AND, OR, SLT, and MUL. These operations perform arithmetic and logical computations between registers.
- Register-Memory ALU Operations: Includes instructions like ADDI, SUBI, and SLTI, which operate on immediate values and registers.
- Load and Store: LW (Load Word) and SW (Store Word) handle memory operations, moving data between registers and memory.
- Branching: Instructions like BEQZ (Branch if Equal to Zero) and BNEQZ (Branch if Not Equal to Zero) facilitate conditional branching based on the outcome of previous computations.
- HALT: A special instruction to stop the processor.
  
## Conclusion 
The MIPS 32 Processor project has successfully demonstrated the advantages of RISC architecture in enhancing CPU performance through increased parallelism and faster instruction execution. The use of fewer transistors in RISC designs not only contributes to reduced production costs but also makes these processors well-suited for integration into system-on-chip applications.

Looking ahead, there is significant potential to further optimize and refine pipeline implementations, such as exploring advanced multi-cycle designs. Future work could focus on expanding the processor’s capabilities, improving efficiency, and adapting the architecture for emerging technologies and applications. This will ensure that the MIPS 32 Processor continues to meet evolving demands and remain relevant in the ever-advancing field of processor design.
