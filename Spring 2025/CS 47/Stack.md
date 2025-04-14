---
tags:
  - cs47
---
- Last In First Out (LIFO)
- Stack pointer register
	- `$sp` (`$29`)
- The OS ensures that there is a range of memory for a stack and puts a suitable address into `$sp` 
## Push
- Subtract 4 from the stack pointer
- Store the item at the address in the stack pointer
```assembly
subu $sp, $sp, 4 # point to the place for the new item
sw $t0, ($sp) # store the contents of $t0 as the new top
```
## Pop
- Copy the item by the stack pointer
- Add 4 to the stack pointer
```assembly
lw $t0, ($sp) # copy the top item to $t0
addu $sp, $sp, 4 # point to the item beneath the old top
```
