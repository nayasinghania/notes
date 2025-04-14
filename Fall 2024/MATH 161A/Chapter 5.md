---
tags:
  - math161a
---
## 5.1 - Jointly Distributed Random Variables

### Joint Probability Mass Function

> [!info] Definition
> Suppose $X$ and $Y$ are defined on the same sample space of an experiment
> $$p(x,y)=P(X=x\:and\:Y=y)$$
> $$\sum\limits_x\sum\limits_yp(x,y)=1$$
> where $(x,y)$ is any ordered pair of real numbers

> [!example]
> Roll two fair dice green and blue
> $X=$ the number of dots on the green die
> $Y=$ the number of dots on the blue die
> $S=\{(1,1),…,(6,6)\}$
> $p(x,y)=\{^{\frac{1}{36},\:x,y=1,2,…,6}_{0,\:otherwise}\}$

> [!example] Example 75
> 2. $P(X\leq15\:and\:Y\leq15)$
> 	* $p(12,12)+p(12,15)+p(15,12)+p(15,15)=.25$

### Marginal Probability Mass Function

> [!info] Definition
> $$p_X(x)=\sum\limits p(x,y)$$ 
> $$y:p(x,y)>0$$
> $x$ is a possible value of $X$
> 
> $$p_Y(y)=\sum\limits p(x,y)$$ 
> $$x:p(x,y)>0$$
> $y$ is a possible value of $Y$

> [!example] Example 75
> The marginal $pmf$ of $X$:
> 
> | $x$ | 12 | 15 | 20 |
> | ---- | -- | --- | --- |
> | $p_X(x)$ | $.05+.05+.1=.2$ | $.05+.1+.35=.5$ | $0+.2+.1=.3$ |
> 
> The marginal $pmf$ of $Y$:
> 
> | $y$ | 12 | 15 | 20 |
> | ---- | -- | --- | --- |
> | $p_Y(y)$ | $.1$ | $.35$ | $.55$ |
### Independence of Two Random Variables

> [!Info] Definition
> $Rv$'s $X$ and $Y$ are independent if 
> $$p(x,y)=p_X(x)*p_Y(y)$$
> for any $(x,y)$
## 5.2 - Expected Values

> [!info] Definition
> Suppose $p(x,y)$ is the joint $pmf$ of $X$ and $Y$. For $h(X,Y)$,
> $$E(h(X,Y))=\sum\limits_x\sum\limits_y h(x,y)p(x,y)$$
> provided the sum exists

> [!example] Example 24
> $(A,B)\Rightarrow$ (seat for $A$, seat for $B$)
> 6 seating options
> $P(A=1,B=2)=\frac{1}{30}$
> $X=$ the $A$'s seat number, $Y=$ the $B$'s seat number
> $E(h(X,Y))=12(2)*\frac{1}{30}+12(3)*\frac{1}{30}+6(4)*\frac{1}{30}=2.8$

> [!info] Proposition
> Let $X$ and $Y$ be $rv$s with the joint $pmf$ $p(x,y)$ and expected values $E(X)$ and $E(y)$
> For real numbers $a$ and $b$,
> $$E(aX+bY)=aE(X)+bE(Y)$$

> [!example] Example 75
> 4. $E(X+Y)$
> 	* $E(X+Y)=E(X)+E(Y)$
> 	* $E(X)=12(.2)+15(.5)+20(.3)=15.9$
> 	* $E(Y)=12(.1)+15(.35)+20(.55)=17.45$
> 	* $E(X+Y)=\$33.35$

## 5.4 -
$$\sigma_X=\frac{\sigma}{\sqrt n}$$
## 5.5 - The Distribution of a Linear Combination

> [!info] Definition
> Let $X_1,X_2,…,X_n$ be $rv$s
> A linear combination of $X_1,X_2,…,X_n$ is a $rv$ $y=a_1X_1+a_2X_2+…+a_nX_n$ where $a_1,a_2,…a_n$ are real numbers

> [!info] Proposition
> Given the $RV$s $X_1,X_2,…,X_n$ with their means $\mu_1,\mu_2,…,\mu_n$ and the variances $\sigma_1^2,\sigma_2^2,..\sigma_n^2$
> 1. $E(a_1X_1 + a_2X_2 + … + a_nX_n) = a_1\mu_1+a_2\mu_2+…+a_n\mu_n$
> 2. If $X_1,X_2,…,X_n$ are independent, then $V(a_1X_1 + a_2X_2 + … + a_nX_n)=a_1\sigma_1^2+a_2\sigma_2^2+…+a_n\sigma_n^2$

> [!example]
> Let $X_1,X_2,…,X_n$ be $iid$ $rv$s with mean $\mu$ and $\sigma^2$
> $$E(\overline{X}=\mu)$$
> $$V(\overline{X})=\frac{\sigma^2}{n}$$

> [!example] 
> Given $rv$s $X_1,X_2$ and $\mu_1=1,\mu_2=2$ and $\sigma_1=3,\sigma_2=4$
> Find $E(X_1-2X_2),V(X_1-2X_2)$
> Assume that $X_1$ and $X_2$ are independent
> $E(X_1-2X_2)=E(X_1)-2E(X_2)=1-2*2=-3$
> $V(X_1-2X_2)=1^2V(x_1)+(-2)^2V(X_2)$
> $=1*3^2+4*4^2$

> [!info] Proposition
> Let $X_1,X_2,…,X_n$ be independent $rv$s such that $$X_i\sim N(\mu_i,\sigma_i^2)$$ where $i=1,2,…,n$
> Then,
> $$Y=a_1X_1+a_2X_2+…+a_nX_n$$ and $$Y\sim N(\sum\limits_{i=1}^na_i \mu_i,\sum\limits_{i=1}^na_i^2\sigma_i^2)$$

> [!example] Example 60
> Given
> * Six cylinder cars
> 	* $X_1,X_2$
> 	* $E(X_1)=E(X_2)=22$
> 	* $\sigma_{x_1}=\sigma_{x_2}=1.2$
> * Four cylinder cars
> 	* $X_3,X_4,X_5$
> 	* $E(X_3)=E(X_4)=E(X_5)=26$
> 	* $\sigma_{X_3}=\sigma_{X_4}=\sigma_{X_5}=1.5$
> * Consider $Y=\frac{X_1+X_2}{2}-\frac{X_3+X_4+X_5}{3}$
> * Find $P(0\leq Y),P(Y>-2)$, assuming that $X_i$s are normally distributed
> 	* So $Y\sim N(\mu_Y,\sigma^2_Y)$
> 	* $E(Y)=\mu_Y=\frac{1}{2}(22+22)+\frac{-1}{\:\:3}(26+26+26)=22-26=-4$
> 	* $V(Y)=(\frac{1}{2})^2(1.2^2+1.2^2)+(\frac{-1}{3})(1.5^2+1.5^2+1.5^2)$
> 	* $=\frac{1.2^2}{2}+\frac{1.5^2}{3}$
> * $P(Y\geq0)=1-P(Y<0)$
> 	* $=1-\phi(\frac{0-(-Y)}{\sqrt{1.47}})=1-\phi(3.30)$
> 	* $1-.9995=.0005$
> * $P(Y>-2)=1-P(Y\leq-2)=1-\phi(\frac{-2+4}{\sqrt{1.47}})$
> 	* =$1-\phi(1.65)=1-.9505=.0495$
