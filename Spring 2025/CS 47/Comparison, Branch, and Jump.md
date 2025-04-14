---
tags:
  - cs47
---
## Jump
- While a program is executing, its instructions are located in main memory
- Each machine cycle executes one machine instruction
- Program counter (PC) contains the address of an instruction to fetch from memory
	- The instruction is fetched into the processor and is prepared for execution
- In the middle of the machine cycle the PC is incremented by four so that it points to the instruction that follows
- When a jump instruction executes, it puts a new address into the PC
- The instruction that follows a jump instruction in memory is said to be in the branch delay slot
- Do a no op after the jump instruction
- J type instruction
	- 6 bit opcode
	- 26 bit address
		- Needs to "become" a 32 bit address
			- sll twice to get 2 zeros on right side
			- take the first 4 high order bits from the PC and fill the higher 4 bits with those bits
### jal and jr
### Pipelining
- Reason for delay in MIPS is pipelining
- Normally, instructions are executed in sequence
- To gain speed, the processor fetches several sequential instructions and start working on them all
- When the machine cycle calls for one of these instructions to be executed, most of the work has already been done
	- These instructions are in an instruction pipe
- This means that the instruction after a jump instruction has mostly been completed when the jump is executed
- The instruction that follows a jump instruction in memory (in the branch delay slot) is always executed
	- This instruction is often a no-op instruction
	- Uses the machine cycle time during the no-op to actually change the PC to the location of the jump
	- `sll $0, $0, 0` is a no-op
- 