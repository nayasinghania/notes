---
tags:
  - cs47
---
## History
- Earliest written form of numeral systems date back to at least 300 BCE (Devanagari numerals)
## Bases
- A number base is the number of digits or combination of digits that a system of counting uses to represent numbers
- A base can be any whole number greater than 0
- The most commonly used number system is the decimal system, commonly known as base 10
- Mathematically, base is written as a subscript after the number 
- $V_k, 10_{16},10_{10}, 10_{8}, 10_{2}$
### Base 2
- Computers use binary to reflect a high and low states
#### Negative numbers
- Sign magnitude representation doesn't work
##### Twos Complement
1. Convert the absolute value of the negative number into its binary representation
2. Invert all bits (one's complement)
3. Add 1 to the one's complement
>[!tip]
>Instead of subtracting two binary numbers, convert second number to two's complement (flip + 1) then add
#### Overflow
- Occurs in binary arithmetic when the result of an operation exceeds the maximum or minimum value
- Ex. adding 7 + 1 would not be -8 in a 4 bit signed situation
	- It should be 8
##### Detection
- If MSB changes from 0 to 1
### Conversion between bases
#### Binary
##### Binary to decimal
- Multiply starting from least significant bit
- Example
	- $K=2$
	- $2^3=8$
	-  $2^2=4$
	- $2^1=2$
	- $2^0=1$
##### Decimal to binary
- Most significant bit (tiniest when dividing) $\rightarrow$ least significant bit (largest when dividing)
- Prepending $0$s will not change the value
	- Useful when a certain number of bits is required but the number has less bits
- Example
	- Convert $91_{10}$ to 8-bit binary number
		- $91/2=45$ remainder 1
		- $45/2=22$ remainder 1
		- $22/2=11$ remainder 0
		- $11/2=5$ remainder 1
		- $5/2=2$ remainder 1
		- $2/2=0$ remainder 0
		- $1/2=0$ remainder 1
		- $\rightarrow1011011\rightarrow01011011_{2}$
#### Hexadecimal
##### Hexadecimal to decimal
##### Decimal to hexadecimal
##### Hexadecimal to binary
- 4 bit binary $\rightarrow$ 1 digit hexadecimal