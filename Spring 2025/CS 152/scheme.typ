#import "data.typ": *
#show: meta.with(title: "Scheme")

= Basic Arithmetic
\+, \-, \*, and \/ represent addition, subtraction, multiplication, and division respectively.

== #ex
```scheme
( + 1 2 )
```

= Other Arithmetic Operation
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
- Made by function `cons`.
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
== With parameters
```scheme
; farg.scm
(define hello
  (lambda (name)
    (string-append "Hello " name)))
```
```scheme
; main.scm
(load "farg.scm")
(hello "World")
```
=== Another form
```scheme
(define (hello name)
  (string-append "Hello " name "!"))
```

= Branching
== The `if` expression
`(if predicate then_value else_value)`

= `and` and `or`
== `and`
`(and 1 2 3)` returns 3
- Return `#f` if any argument is `#f`
== `or`
`(or 1 2 3)` returns 1
- Returns value of first argument which is not `#f`

= `cond` expression
```scheme
(cond
  (predicate_1 clauses_1)
  (predicate_2 clauses_2)
  ...
  (predicate_n clauses_n)
  (else clauses_else))
```
= Functions that make predicates
== `eq?`
- Compares addresses of two objects and returns `#t` if they are the same
== `eqv?`
== `equal?`

= Functions that check data type

= Local Variables
== `let` expression
`(let binds body)`
- You can use `let*` as syntactic sugar that doesn't need nesting for `let` to bind variables with nesting 
=== #ex
```scheme
(let ((i 1) (j 2))
  (+ i j))
```
= Repetition
== Recursion
```scheme
(define (fact n)
  (if (= n 1)
      1
      (* n (fact (- n 1)))))
```

== Tail Recursion
```scheme
(define (fact-tail n)
  (fact-rec n n))

(define (fact-rect n p)
  (if (= n 1)
    p
    (let (( m ( - n 1)))
      (fact-rec m (* p m)))))
```

== Named `let`
- Available to express a loop