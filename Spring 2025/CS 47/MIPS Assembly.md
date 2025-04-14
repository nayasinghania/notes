---
tags:
  - cs47
---
## Registers
### General Purpose Registers (GPRs)
- 32 GPRs
#### The $0$ constant
- The register `$zero` holds the constant value $0$
- This register's value cannot be mutated
#### Register 1
- `$at` is reserved by the assembler
- any mutations will be overwritten
#### Registers 2  - 3
- `$v0-v1$
##### syscall
- Performs a system operations based on value in `$v0`
#### Registers 4 - 7
- `$a0-a3`
### Special Purpose Registers (SPRs)
#### Program Counter (PC)
- Points to latest instruction to be executed
- Goes in steps of 4
- This register cannot be accessed or mutated
- Branching & jumping operations can set the value to the PC indirectly
#### High Reg (Hi)
- To hold the results of multiplication / division operations
#### Low Reg (Lo)
- To hold the results of multiplication / division operations