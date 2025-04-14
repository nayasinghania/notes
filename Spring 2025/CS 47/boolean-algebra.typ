#import "data.typ": *
#show: meta.with(title: "Boolean Algebra")

= #def
A mathematical system dealing with binary variables and logic operations

= Origin
Developed by George Boole in the mid-19th century

= Importance
Fundamental to digital logic design and circuit analysis

= Boolean Variables
A boolean variable assumes two values
- FALSE (0)
- TRUE (1)

== Basic Operations
- AND (.) or conjunction ($and$)
- OR (+) or disjunction ($or$)
- NOT (') or negation ($not$)

== Logic Gates

=== #def
Electronic devices that perform logical operations on one or more binary inputs to produce a single binary output

=== Types
==== AND
Ensures all inputs must be true for an output to be true
==== OR
Ensures any input can be true for an output to be true
==== NOT
Ensures any input is inverted for an output to be the inversion of an input
==== NAND
Ensures only one input can be true for an output to be true
==== NOR
Ensures no inputs can be true for an output to be true
==== XOR
Ensures one input must be true for an output to be true
==== XNOR
Ensures both inputs must be identical for an output to be true

=== Applications in Computing
==== CPUs
- Fundamental building blocks of CPU architecture
- Used extensively in various parts of the CPU
==== ALU
- Consists of a network of logic gates that manipulate binary data to perform tasks like addition, subtraction, AND, OR, and NOT operations
==== Registers
- Each register in the register file is implemented using a group of flip-flops and logic gates to store and manipulate data
- / Flip Flops: A group of gates arranged such that they have memory of previous inputs
==== Control Unit
- It uses logic gates to decode instruction opcodes, determine the
sequence of operations, and control the flow of data within the CPU

=== Importance of Logic Gate Design
- / Speed: Logic gates enable fast computation and processing, contributing to the overall performance of the laptop
- / Efficiency: Compact and optimized logic gate designs help conserve space and power, essential for portable devices like laptops
- / Versatility: Logic gates allow for the implementation of a wide range of functions and operations, making laptops capable of handling diverse tasks efficiently.
- / Low Power Consumption: Modern logic gate technologies, such as CMOS (Complementary Metal-Oxide-Semiconductor), offer low power consumption characteristics, extending the battery life of laptops and improving energy efficiency

=== Universal Gate
==== #def
A gate that can be used to implement any other gate
=== Primary Gates
- NAND (AND followed by NOT)
- NOR (OR followed by NOT)

= Functions and Terms
== #ex
$ F(X,Y,Z) = X Y'+Z' $
- This is a boolean expression - function list of variables
- Each part of the right hand side of the equation is called a 'term'

= Identities
#cols[
  1. $X + 0 = X$
  2. $X * 1 = X$
  3. $X +  1 = X$
  4. $X * 0 = 0$
  5. $X + X = X$
  #colbreak()
  6. $X * X = X$
  7. $X + ovr(X) = 1$
  8. $X * ovr(X) = 0$
  9. $ovr(X) = X$
]

= Laws
#cols[
  1. $X+Y=Y+X$
  2. $X Y = Y  X$
  3. $X+(Y+Z)=(X+Y)+Z$
  4. $X(Y Z) = (X Y)Z$
  #colbreak()
  5. $X(Y+Z = X Y + X Z)$
  6. $X + Y Z = (X + Y)(X + Z)$
  7. $ovr(X + Y)=ovr(X)*ovr(Y)$
  8. $ovr(X*Y)=ovr(X)+ovr(Y)$
]

= Consensus Theorem
== #ex
$ X Y + ovr(X)Z +  Y Z = X Y + ovr(X)Z $

= Complement of a function
== #def
Apply DeMorgan's theorem as many times as needed to obtain the complement

== #ex
$ F_1 = ovr(X)Y ovr(Z) + ovr(X) ovr(Y) Z $
$ ovr(ovr(X)Y ovr(Z) + ovr(X) ovr(Y) Z) = (ovr(ovr(X) Y ovr(Z))) *  (ovr(X) ovr(Y) Z) = (X + ovr(Y) + Z)(X+Y+ovr(Z)) $

= Sum of Products (SOP)
/ Minterm: A product term in which all variables appear exactly one (either complemented or uncomplemented)
== SOP of Minterms

#table(
  columns: (auto, auto, auto, auto, auto),
  table.header("X", "Y", "Z", "Product Term", "Symbol"),
  "0", "0", "0", "X'Y'Z'", $m_0$,
  "0", "0", "1", "X'Y'Z", $m_1$,
  "0", "1", "0", "X'YZ'", $m_2$,
  "0", "1", "1", "X'YZ", $m_3$,
  "1", "0", "0", "XY'Z'", $m_4$,
  "1", "0", "1", "XY'Z", $m_5$,
  "1", "1", "0", "XYZ'", $m_6$,
  "1", "1", "1", "XYZ", $m_7$,
)

= Product of Sums (POS)
/ Maxterm: A sum term in which all variables appear exactly one (either complemented or uncomplemented)

== POS of Maxterms
#table(
  columns: (auto, auto, auto, auto, auto),
  table.header("X", "Y", "Z", "Sum Term", "Symbol"),
  "0", "0", "0", "X+Y+Z", $M_0$,
  "0", "0", "1", "X+Y+Z'", $M_1$,
  "0", "1", "0", "X+Y'+Z", $M_2$,
  "0", "1", "1", "X+Y'+Z'", $M_3$,
  "1", "0", "0", "X'+Y+Z", $M_4$,
  "1", "0", "1", "X'+Y+Z'", $M_5$,
  "1", "1", "0", "X'+Y'+Z", $M_6$,
  "1", "1", "1", "X'+Y'+Z'", $M_7$,
)

