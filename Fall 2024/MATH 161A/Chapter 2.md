---
tags:
  - math161a
---
cx
## 2.1 - [Sample](Chapter%201.md#Sample) Spaces and Events

### Sample Space

> [!info] Definition
> The collection of all outcomes of an experiment, represented by $S$

> [!example]
> * Roll a die twice, $S = \{(1,1),(1,2),…,(6,6)\}$
> * Flip a coin until you get heads, $S = \{H,TH,TTH,TTTH,…\}$

### Event

> [!info] Definition
> An event $E$ of an experiment is a subset of the sample space $S$ of the experiment

> [!example]
> * Experiment: toss a die twice
> 	* $S=\{(1,1),(1,2),…,(6,6)\}$
> 	* Event: getting a double
> 		* $E=\{(1,1),(2,2),(3,3),(4,4),(5,5),(6,6)\}$
> * Experiment: flip a coin until two heads are obtained (not necessarily consecutively)
> 	* $S=\{HH,THH,TTHH,…\}$
> 	* Event A: the coin is tossed 4 times
> 		* $A=\{HTTH,THTH,TTHH\}$

> [!tip]
> Event $E$ has occurred if the resulting outcome  is in $E$
#### Simple

Only one outcome
#### Compound

More than one outcome
#### Null

Event with no outcomes
### Set Operations

#### Complement

> [!info] Definition
> The complement of event $A$, $A^1$, is the set of all outcomes in the sample space $S$ that are not in $A$
> ![[Attachments/complement]]
#### Union

> [!info] Definition
> The union of events $A$ and $B$, $A \cup B$, read as "$A$ or $B$", is the set of all outcomes $S$ that are in $A$ or $B$  or in both $A$ and $B$
> ![[Attachments/union]]
#### Intersection

> [!info] Definition
> The intersection of events $A$ and $B$, represented by $A \cap B$ read as "$A$ and $B$", is the set of all outcomes that are in both $A$ and $B$
> ![[Attachments/intersection]]
#### Mutual Exclusivity

> [!info] Definition
> $A$ and $B$ are disjoint or mutually exclusive if $A \cup B = \emptyset$
#### Pairwise Disjoint

> [!info] Definition
> $A_1,A_2,A_3,…$ are mutually exclusive or pairwise disjoint if for any $i \neq j$, $i,j=1,2,3,…$, $A_{i} \cap A_{j} = \emptyset$

> [!example]
> * Experiment: roll the die twice
> 	* Events
> 		* $A_1$: getting a sum of 7 dots
> 			* $A_1=\{(1,6),(6,1),(2,5),(5,2),(3,4),(4,3)\}$

### Textbook Exercise 8

* Let $A_i$ denote the event that the plant at site $i$ is completed by the contract date
* Events: $A_1,A_2,A_3$
* At least one plant is completed by the contract date
	* $A_{1}\cup A_{2}\cup A_3$
* All plants are completed by the contract date
	* $A_{1} \cap A_{2}\cap A_3$
* Only the plant at site 1 is completed by the contract date
	* $A_{1}\cap A_2^1\cap A_3^1$
* Exactly one plant is completed by the contract date
	* $(A_1 \cap A_2^1 \cap A_3^1) \cup (A_1^1 \cap A_2 \cap A_3^1) \cup (A_1^1 \cap A_2^1 \cap A_3)$
*  Exactly the plant at site 1 or both of the other two plants are completed by the contract date 
	* $A_1 \cup (A_2 \cap A_3)$

## 2.2 - The Axioms and Properties of Probability

The probability of event $A$, $P(A)$ is a measure of chance that event $A$ will occur
### The Three Axioms

1. For any event $A, P(A) \geq 0$
2. $P(S)=1$
3. Let $A_1,A_2,A_3,…$ be an infinite collection of pairwise disjoint events
	* Then, $P(A_1,A_2,A_3,…) = P(A_1) + P(A_2) + P(A_3) + …$
### Properties

1. $P(\emptyset) = 0$
2. Let $A_1,A_2,…,A_n$ be pairwise disjoint events
	* Then $P(A_1 \cup … \cup A_n) = P(A_1) + P(A_2)$
3. For any event $A, P(A) + P(A^1) = 1$ or $P(A)=1-P(A^1)$

> [!example]
> * Roll a fair die twice. What is the chance that the sum of the dots will be at least 4?
> 	* $A=\{(1,3),(3,1),(2,2),…\}$
> 	* $A^1=\{(1,1),(1,2),(2,1)\}$
> 	* $P(A) = 1 - \frac{3}{36} = \frac{11}{12}$

1. For any $A,P(A)\leq1$
2. For any event $A$ and $B,P(A \cup B) = P(A) + P(B) - P(A \cap B)$
3. For any events $A,B,C$, $P(A \cup B \cup C)  = P(A) + P(B) + P(C) - P(A\cap B) - P(A \cap C) - P(B\cap C) + P(A \cap B \cap C)$
### Textbook Example 18

5 $10 bills, 4 $5 bills, 6 $1 bills

If the bills are selected one by one in random order, what is the probability that at least two bills must be selected to obtain a first $10 bill?

$P($the first bill is not $10) = $\frac{10}{15} = \frac{2}{3}$

### Textbook Example 26

Let $A_i(i = 1,2,3)$

* What is the probability that the system does not have a type 1 defect?
	* $P(A_1^1) = 1 - P(A_1) = 0.88$
* What is the probability that the system has both type 1 and type 2 defects?
	* $P(A_1 \cap A_2) = P(A_1) + P(A_2) - P(A_1 \cup A_2)=0.06$
* What is the probability that the system has both type 1 an type 2 defects but not a type 3 defect?
	* $P(A_1 \cap A_2 \cap A_3^1) = P(A_1 \cap A_2) - P(A_1 \cap A_2 \cap A_3) = 0.05$
* What is the probability that the system has at most two of these defects?
	* $P($at most 2 defects) = $1-P($all three defects)
	* $1 - .01 = 0.99$ 
* Probability of at least one defect?
	* $P($at least one defect) $=P(A_1 \cup A_2 \cup A_3) =$ *use property 6*
### Relative Frequency Approach to Probability

Consider an experiment that can be repeated $n$ times in and identical and independent fashion.

> [!info] Definition
> The relative frequency of event $A$, is$f_n(A)=$ # of time $A$ occurs / $n$ 
> $f_n(A) =$ a limit value as $n \rightarrow \infty$
> $P(A)$ is the limiting value

## 2.3 - Counting Techniques

### The Product Rule

> [!info] Definition
> Suppose an experiment or procedure consists of $k$ steps, and there are
> $n_1$ ways to complete step $1$,
> $n_2$ ways to complete step $2$
> .
> .
> .
> $n_k$ ways to complete step $k$
> Then, there are $n_1 * n_2 * … * n_k$ ways to perform the experiment or complete the procedure

> [!Example]
> Flip a coin and then roll a 6 faced die
> 1. Flip a coin: $H$ or $T$ (two branches)
> 2. Roll a die $1,2,3,4,5,6$ (each branch from step 1 gets 6 branches)
> 3. Outcomes
> 	* $H1,H2,H3,…,H6$
> 	* $T1,T2,T3,…T6$
> 	* $2*6=12$
#### Textbook Example 32

Receiver: Kenwood, Onkyo, Pioneer, Sony, Sherwood (5)
Compact disk player: Onkyo, Pioneer, Sony, Techniques (4)
Speakers: Boston, Infinity, Polk (3)
Turntable: Onkyo, Sony, Teac, Techniques (4)

* In how many ways can one component of each type be selected?
	* $5*4*3*4 = 240$
* In how many ways can components be selected if both the receiver and compact disk player are to be Sony?
	* $1*1*3*4=12$
* In how many ways can components be selected if none is to be Sony?
	* $4*3*3*3=108$
* In how many ways can a selection be made if at least one Sony component is to be included?
	* All selections - selections without Sony $=240-108=132$
* If someone flips switches on the selection in a completely random fashion, what is the probability that the system selected contains at least one Sony component?
	* $P($at least one Sony$)=\frac{132}{240}$
	* Exactly one Sony component?
		* $P($exactly one Sony$)=\frac{1*3*3*3 + 4*1*3*3 + 4*3*3*1}{240}$
### Permutations

> [!info] Definition
> Let $0<k\leq n$, $k,n$ are integers
> A $k$-permutation of a set of $n$ distinct objects (elements) is an **ordered** selection of $k$ objects of the set
> $P_{k,n} =$ the number of $k$-permutations of $n$ elements
> It can be shown that $P_{k,n}=n(n-1)…(n-k+1)=\frac{n!}{(n-k)!}$
> $P_{n,n}=n!$

> [!example]
> $n=7$, $k=3 \Rightarrow \{a,b,c,d,e,f,g\}$
> Some 3-permutations: $abc,cab,bca,bfe$
> $P_{3,7}=7*6*5=7*6*5*\frac{4!}{4!} = \frac{7!}{(7-3)!}$

#### Textbook Example 30

A combination lock with 4 digits 0-9
Find the # of non-repetitive combinations $\Rightarrow \frac{10!}{6!}=10*9*8*7$

### Combinations

> [!info] Definition
> A $k$-combination of a set of $n$ distinct elements is subset of $k$ elements of the set
> $C_{k,n}=$ The # of $k$-combinations of $n$ elements
> $(^n_k)$
> $C_{k,n} = \frac{P_{k,n}}{k!}=\frac{n!}{(n-k)!*k!}$

> [!example]
> $\{a,b,c,d,e,f,g\},n=7,k=3$
> Some 3-combinations: $\{a,b,c\}=\{b,c,a\}$
> Permutations: $abc,bca,…,cba\Rightarrow 3!=6$
> $C_{3,7}=\frac{P_{3,7}}{3!}=\frac{7!}{(7-3)!*3!}$

#### Textbook Example 34

* 25 failed keyboards
	* 6 with electrical defects
	* 19 with mechanical defects
* How many ways are there to randomly select 5 of these keyboards for a thorough inspection (without regard to order)?
	* $(^{25}_5) = 53130$
* In how many ways can a sample of 5 keyboards be selected so that exactly two have an electrical defect?
	* $(^6_2)*(^{19}_3)=15*969=14535$
* If a sample of 5 keyboards is randomly selected, what is the probability that at least 4 of these will have a mechanical defect?
	* $P($exactly 4$)+P($all 5)
	* $\frac{(^{19}_4)*(^6_1)+(^{19}_5)}{(^{25}_5)}$
## 2.4 - Conditional Probability

* Suppose $A$ and $B$ are events
* $P(A|B)$ is read as "the probability of $A$ given $B$"
* $P(A|B)=$ the probability of $A$ given that $B$ has occurred
* $B$ is the conditioning event

> [!info] Definition
> For events $A$ and $B$ with $P(B)>0$, $P(A|B)=\frac{P(A\cap B)}{P(B)}$

![[Attachments/conditional prob def]]

### Textbook Example 50

* Given that the shirt that just sold was a short-sleeved plaid, what is the probability that its size was medium?
	* $P(M$ | short sleeve and plaid)
	* $=P(M$ & short sleeve & plaid) / $P$(short sleeve & plaid)
	* $=\frac{0.08}{0.04+0.08+0.03}=\frac{8}{15}$
* Given that the shirt that just sold was a medium plaid, what is the probability that it was short-sleeved?
	* $P$(short sleeve | $M$ & plaid)
	* $=P$(short sleeve & $M$ & plaid) / $P(M$ & plaid)
	* $=\frac{0.08}{0.08+0.10}=\frac{8}{18}$

### Multiplication Rule

> [!info] Definition
> For any event $A$ and $B$, the $P(A \cap B)=P(A|B)*P(B)$ if $P(B)>0$

> [!example]
> A box contains five blue balls and eight red ones. Two balls are removed, one at a time, at random without replacement. What is the probability that both balls are red?
> * $P$(1st red & 2nd red)
> * $=P$(1st red)$*P$(2nd red | 1st red)
> * $=\frac{8}{13}*\frac{7}{12}$

For events $A,B,C$, $P(A\cap B\cap C)=P(A)*P(B|A)*P(C|A\cap B)$
#### Example 22

400 backup power supply units, 8 are defective
* If 3 of the units are randomly selected for testing, what is the probability that the entire batch will be accepted
	* $P$(1st ok & 2nd ok & 3rd ok)
	* $=\frac{392}{400}*\frac{391}{399}*\frac{390}{398}=0.94…$

### The Law of Total Probability

> [!info] Definition
> Let $A_1,A_2,…,A_n$ be pairwise disjoint events such that $S=A_1 \cup A_2 \cup …\cup A_n$. Then for any event B, 
> $P(B)=P(B|A_1)P(A_1)+P(B|A_2)P(A_2)+…+P(B|A_n)P(A_n)$

![[Attachments/complete prob|250]]

$P(B)=P(B\cap A_1)+P(B\cap A_2)+P(B\cap A_3)$
$P(B)=P(B|A_1)P(A_1)+P(B|A_2)P(A_2)+P(B|A_3)P(A_3)$

#### Example 60

70% discovered after disappearing
Of discovered - 60% with locator
Of not discovered - 90% without locator

$F=$ aircraft found
$F^1=$ aircraft not found
$L=$ aircraft has locator
$L^1=$ aircraft has no locator

![[../GEOL 7/Attachments/ex 60]]

$\Rightarrow P(F\cap L)=.42$
$\Rightarrow P(F\cap L^1)=.28$
$\Rightarrow P(F^1\cap L)=.03$
$\Rightarrow P(F^1\cap L^1)=.27$

* If is has a locator, what is the probability that it will not be discovered?
	* $P(F^1|L)=\frac{P(F^1\cap L)}{P(L)}=\frac{.03}{P(F\cap L)+P(F^1\cap L)}=\frac{.03}{.42+.03}=\frac{3}{45}=\frac{1}{15}\approx 0.07$
* If it does not have a locator, what is the probability that it will be discovered?
	* $P(F|L^1)=\frac{P(F\cap L^1)}{P(L^1)}=\frac{.28}{1-.45}=\frac{.28}{.55}\approx 0.51$
### Bayes Theorem

> [!info] Definition
> $A_1,A_2,…,A_n$ are pairwise disjoint and $S=A_1\cup A_2\cup …\cup A_n$ with $P(A)>0$
> $i=1,…,n$ ($P(A_i)$ is prior probability of $A_i$). Then for with $P(B)>0,$ Posterior probability of $A_i=$  $P(A_i|B)=\frac{P(B|A_i)*P(A_i)}{P(B|A_1)*P(A_1)+P(B|A_2)*P(A_2)+…+P(B|A_n)*P(A_n)}$

> [!example] Example 64
> 60% short, 30% medium, 10% long
> short - 80% word, medium - 50% word, long, 30% word
> randomly selected
> ---
> ![[../GEOL 7/Attachments/ex 64]]
> $S$ = short
> $M$ = medium
> $L$ = long
> $W$ = word
> $T$ = LaTeX
> * probability that selected review was submitted in word
> 	* $P(W)=P(S\cap W)+P(M\cap W)+P(L\cap W)=.48+.15+.03=.66$
> * if in word, posterior probabilities of it being short, medium, or long
> 	* $P(S|W)=\frac{P(S\cap W)}{P(W)}=\frac{.48}{.66}\approx .73$
> 	* $P(M|W)=\frac{P(M\cap W)}{P(W)}=\frac{.15}{.66}\approx .23$
> 	* $P(L|W)=\frac{P(L\cap W)}{P(W)}=\frac{.03}{.66}\approx .04$

## 2.5 - Independence of Events

> [!info] Definition
> Events $A$ and $B$ are independent if $P(A\cap B)=P(A)*P(B)$
> Otherwise, $A$ and $B$ are dependent

> [!info] Proposition
> Let $A$ and $B$ be events with $P(A\cap B)>0,P(B)>0$
> $A$ and $B$ are independent if and only if $P(A|B)=P(A)$
> $(P(B|A)=P(B))$

> [!example]
> Roll a fair die
> $A=$ "the # of dots is even" $=\{2,4,6\}$
> $P(A)=\frac{1}{2}$
> $B=$ "the # of dots is divisible by 3" $=\{3,6\}$
> $P(B)=\frac{1}{3}$$
> $C=$ "at least 5 dots" $=\{5,6\}$
> $P(C)=\frac{1}{3}$
> $P(A|B)=\frac{1}{2}$
> $P(A)=\frac{1}{2}$, so $A$ and $B$ are independent
> $P(B|C)=\frac{1}{2}$
> $P(B)=\frac{1}{3}$, so $B,C$ are dependent


### ???
> [!info] Definition
> Events $A_1,A_2,…,A_n$ are mutually independent for any subset of indices$i_1,i_2,…,i_n$, where $m=1,2,…,n$
> $P(A_{i_1},A_{i_2},…,A_{i_m})=P(A_{i_1})*P(A_{i_2})*…*P(A_{i_m})$

> [!example]
> $A,B,C$ are events $\Rightarrow$ mutually independent
> $P(A\cap B)=P(A)P(B)$
> $P(A\cap C)=P(A)P(C)$
> $P(B\cap C)=P(B)P(C)$
> $P(A\cap B\cap C)=P(A)P(B)P(C)$

> [!example] Example 82
> red, green dice
> Let $A$ be red 3, $B$ be green 4, $C$ be total on both dice is 7
> Are these pairwise independent?
> $A=\{(3,1),(3,2),…,(3,6)\}$
> $B=\{(1,4),(2,4),…,(6,4)\}$
> $C=\{(1,6),(2,5),(3,4),(6,1),(5,2),(4,3)\}$
> $P(A)=P(B)=P(C)=\frac{6}{36}=\frac{1}{6}$
> $P(B|A)=\frac{|\{(3,4)\}|}{6}=\frac{1}{6}=P(B)$
> $P(B\cap C)=\frac{1}{36}=P(B)*P(C)$
> $P(A|C)=\frac{1}{6}$
> Yes
> Are these mutually independent?
> $P(A\cap B\cap C)=\frac{|\{3,4\}|}{36}=\frac{1}{36}\neq P(A)P(B)P(C)\Rightarrow No$

### Multiplication Rule for Independent Events

> [!info] Definition
> If events $A_1,A_2,…,A_n$ are independent, then $P(A_1\cap A_2\cap … \cap A_n)=P(A_1)*P(A_2)*…*P(A_n)$

> [!tip]
> Mutually independent = independent

> [!example] Example 80
> System of components: 1 and 2 connected in parallel (subsystem works iff either 1 or 2 work); since 3 and 4 connected in series, that subsystem works. iff both 3 and 4 work. Components work independently of one another
> $P$(component $i$ works)$=0.9$ for $i=1,2$ and $=0.8$ for $i=3,4$; calculate $P$(system works)
> * $sys \Rightarrow sub1, sub2$
> * $P(sys)=P$($sub1 \cup sub2$) $=1-P$($sub1^1 \cap sub2^1$)
> * $=1-P(sub1^1)*P(sub2^1)$
> * $P(sub1^1)=P(com1^1\cap com2^1)=(0.1)^2=0.01$
> * $P(sub2^1)=1-P(sub2)=1-(0.8)^2=0.36$
> * $P(sys)=1-0.01*0.36=0.9964$


