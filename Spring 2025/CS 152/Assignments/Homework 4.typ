#import "../../../shorthand.typ": *

#set text(
  size: 12pt,
)

= Homework 4
CS 152 | Spring 2025 | Dr. Sengupta | Naya Singhania | 017192682

== Question 1
Reduce the following lambda terms
=== a) $(lb x.(x+y))3$

$=[x:=3](x+y)$

$=3+y$

=== b) $(lb x.(lb y.y x)(lb z.x z))(lb y.y y)$

$=[x:=lb y.y y](lb y.y x)(lb z.x z)$

$=(lb y.y (lb y.y y))(lb z. (lb y.y y) z)$

$=[y:=lb z.(lb y. y y)z](lb y.y (lb y.y y))$

$=(lb z.(lb y. y y)z)(lb y.y y)$

$=[z:=lb y. y y]((lb z.(lb y. y y)z))$

$=(lb y. y y)(lb y. y y)$

$=Omega$ combinator (because of the nonterminating recursion)

== Question 2
Prove the following

$+21=3$

$+21=2+1$

$+21 = M + N$

$+21 = lb x.lb y.(M x)((N x)y)$

$+21 = lb x.lb y.(2 x)((1 x)y)$

== Question 3
Use beta reduction to compute the following expression

$(lb x(lb x.+(-x 1))x 3)9$

$=(lb x(lb z.+(-z 1))x 3)9$

$=(lb z.+(-z 1))93$

$=(-91)3$

$=+83$

$=3+8$

$=11$

== Question 4
Write a Scheme function named elements which counts the number of elements in a list
- See attached file `q4.scm`

Example Input  
#image("../Images/Question 4 Input.png")
Example Output
#image("../Images/Question 4 Output.png")

== Question 5

=== a) 
Write a scheme function that calculates the inner product of two vectors
- See attached file `q5a.scm`

Example Input
#image("../Images/Question 5a Input.png")
Example Output
#image("../Images/Question 5a Output.png")

=== b)
Implement function interleave in scheme, which expects as arguments two lists xs and ys, and returns
a single list obtained by choosing elements alternately, first from xs and then from ys. When either
xs or ys runs out, interleave takes the remaining elements from the other list, so that the elements of
the result are exactly the elements of the two argument lists taken together.
- See attached file `q5b.scm`

Example Input
#image("../Images/Question 5b Input.png")
Example Output
#image("../Images/Question 5b Output.png")