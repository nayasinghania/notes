---
tags:
  - cs47
---
- Holds the address of the stack frame for a subroutine
- When a subroutine returns to its caller the stack frame is popped from the stack
- Local variables only exist as memory locations while a subroutine is active
- A subroutine is active if it is currently executing or if a subroutine it has called is active
- Register `$30` or `$fp` is reserved for use as a frame pointer
- When a subroutine starts running, the frame pointer and the stack pointer contain the same address
## Frame Based Linkage Convention