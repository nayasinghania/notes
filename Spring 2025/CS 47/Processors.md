---
tags:
  - cs47
---
## Control Unit
- Connects to the memory
## [Program Counter (PC)](MIPS%20Assembly.md#Program%20Counter%20(PC))
- Keeps track of [memory](Memory.md) addresses
## Response Time and Throughput
### Relative Performance
* Define performance as 1/execution time
* Performance $e_x$ / performance $e_y=$  execution time $_y$ / execution time$_x=n$
### Measuring Execution Time
- MIPS (million instructions per second), not to be confused with [MIPS Assembly Language](../CS%20152/Assembly.md)
#### Elapsed Time
- Total response time (processing, I/O, OS overhead, idle time)
#### CPU Time
- Time spent processing a given job (discounts I/O time and other jobs)
- Comprises user CPU time and system CPU time
- Different programs are affected differently by CPU and system performance
### CPU Clocking
#### Clock Period
- Cycle time
- Ex. $250ps=0.25ns=250*10^{-12}s$
#### Clock Frequency
- Clock rate
- Cycles per second
- Ex. $4.0 GHz = 4000 MHz = 4.0*10^9Hz$
## Uniprocessors
- Single core processor
## Multiprocessors
- Multiple processors per chip
- Requires explicitly parallel programming
	- Software must be written with parallel execution in mind
	- Multicore processors require software to be designed with concurrent execution techniques