---
tags:
  - cs152
---
* Deals with the representation and technique of algebra that separates the meaning of factual statements and from proofs of their consistency and their truth values
## [Binary](../CS%2047/Number%20Systems.md#Base%202) Operators
### Common Operators
#### OR
- $Y=A+B$

| $A$ | $B$ | $Y$ |
| --- | --- | --- |
| $0$ | $0$ | $0$ |
| $0$ | $0$ | $0$ |
| $1$ | $0$ | $1$ |
| $1$ | $1$ | $1$ |
#### NOT
- $Y=\overline{A}$

| $A$ | $Y$ |
| --- | --- |
| $0$ | $1$ |
| $1$ | $0$ |
#### BUF
- $Y=A$ 

| $A$ | $Y$ |
| --- | --- |
| $0$ | $0$ |
| $1$ | $1$ |
#### AND
- $Y=AB$

| $A$ | $B$ | $Y$ |
| --- | --- | --- |
| $0$ | $0$ | $0$ |
| $0$ | $0$ | $0$ |
| $1$ | $0$ | $0$ |
| $1$ | $1$ | $1$ |
#### XOR
- $Y=A\oplus B$

| $A$ | $B$ | $Y$ |
| --- | --- | --- |
| $0$ | $0$ | $0$ |
| $0$ | $0$ | $1$ |
| $1$ | $0$ | $1$ |
| $1$ | $1$ | $0$ |
#### NAND
- $Y=\overline{AB}$

| $A$ | $B$ | $Y$ |
| --- | --- | --- |
| $0$ | $0$ | $1$ |
| $0$ | $0$ | $1$ |
| $1$ | $0$ | $1$ |
| $1$ | $1$ | $0$ |
#### NOR
- $Y=\overline{A+B}$

| $A$ | $B$ | $Y$ |
| --- | --- | --- |
| $0$ | $0$ | $1$ |
| $0$ | $0$ | $0$ |
| $1$ | $0$ | $0$ |
| $1$ | $1$ | $0$ |
#### XNOR
- $Y=\overline{A\oplus B}$

| $A$ | $B$ | $Y$ |
| --- | --- | --- |
| $0$ | $0$ |     |
| $0$ | $0$ |     |
| $1$ | $0$ |     |
| $1$ | $1$ |     |
### Precedence
* Parenthesis
* NOT
* AND (AND, NAND)
* OR (OR, NOR, XOR)
### Truth Tables
- Consider a Boolean function $N$ containing $n$ Boolean variables $a_0,a_1,...,a_{n-1}$
- A truth table may be constructed containing $2^n$ rows which gives the value of $N$ for every combination of truth values of the variables $a_0,a_1,...,a_{n-1}$
### Evaluating Logical Expressions
##### ~
- Negation
- Ex. ~$(AB)$ is the negation of $A$ and$B$
##### $\rightarrow$
- Implication
- Ex. $A\rightarrow B$
	- True except when $A$ is true but $B$ is false
### Tautology
- A logical expression that is true for every combination of truth values of its variables