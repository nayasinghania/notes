#import "data.typ": *
#show: meta.with(title: "Scheme")

= Basic Arithmetic
\+, \-, \*, and \/ represent addition, subtraction, multiplication, and division respectively.

== #ex
```scheme
( + 1 2 )
```

= Other Arithmetic Operations
#cols[
- quotient
- remainder
- modulo
- sqrt
- exp
- log
#colbreak()
- trigonometry
  - sin
  - cos
  - tan
  - asin  
  - acos
  - atan 
]

= Lists
== Cons Cells
- Memory spaces which stores two addresses.
  - / car: The part storaing the address to 1
  - / cdr: The part storing the address to 2 
- Made by funtion `cons`.
=== Lists
- Lists are beaded cons cells with the cr part of the last cons cell being `'()`
- `'()` is called the empty List

= atoms
- Data structures that do not use cons cells
- Numbers, characters, strings, vectors, and `'()` are atom
- `'()` is an atom and a list

= quotient
- A special form named `quote` is used to prevent tokens from evaluation
- symbol`'`

== Special forms

= Functions car and cdr
- If the value of `car` is a beaded cons cell, it returns the address of the first element of the list.

= Function List

= Defining Functions
== Hello World
```scheme
; Hello world as a variable
(define vhello "Hello World")
```
```scheme
(cd "C:\\doc\\scheme")
(load "hello.scm")
```