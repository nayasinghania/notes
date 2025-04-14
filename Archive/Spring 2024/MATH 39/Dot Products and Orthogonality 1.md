---
tags:
  - math39
---


Find the coordinates of the vector [...] with respect to both the elementary basis and the basis [...]

  

Write as augmented matrix

Reduce to RREF

  

The dot product of two vectors

  

Properties of dot product

x . y = y . x

x . (y + z) = x .y + x . z

(ax) . y = ax . y = x . (ay)

|| x || ^ 2 = x . x

|| x || >= 0

|| x || = 0 if and only if x = 0

|| a x || = | a | || x ||

  

Assuming Euclidean Geometry, we can define the angle between two vectors by 

x . y = || x || || y || cos(theta)

  

Two vectors in the real number space are orthogonal if x . y = 0

  

Distance between two vectors in IR is d(x,y) = || x - y ||

  

Cauchy Inequality

| x . y | <= || x || || y ||

  

Triangular inequality

|| x + y || <= || x || + || y ||

  

A set of nonzero vectors is orthogonal if x_i . x_j = 0 for all i \= j

  

An orthogonal set of vectors is orthonormal if x_i . x_i = 1 for each x_i ( || x || = 1)

  

Every set of orthogonal vectors in IR is linearly independent

  

Example

  

Shoe that the vectors 

<3,0,-4>

<0,1,0>

<4,0,3> 

are orthogonal and then scale them to form an orthonormal set

  

<3,0,-4> .  <0,1,0> = 0 + 0 + 0 = 0

<3,0,-4> . <4,0,3>  = 12 + 0 + -12 = 0

<0,1,0> . <4,0,3> = 0 + 0 + 0 = 0

  

This is an orthogonal set

  

To get the orthonormal set

  

First, for each vector you get a value by adding the squares of each value then square rooting it (this is the magnitude of the vector

  

Then…

v_1 = x_1 / || x || = 1 / 5 (x_1) = < 3 / 5, 0, -4 /5 >

  

v_2 = …

  

v_3 = …

  

This is the orthonormal set

  
  
  

How would you find all vectors orthogonal to a given set of vectors

  

Find a basis for the space of vectors orthogonal to <1,2,3,4> and <5,6,7,8>

  

Solve as a system (find RREF of matrix augmented with 0 in both rows)

  
  
**