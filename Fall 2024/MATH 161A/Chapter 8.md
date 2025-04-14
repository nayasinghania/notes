---
tags:
  - math161a
---
## 8.1 - Hypotheses and Test Procedures
### Statistical Hypothesis

> [!info] Definition
> A claim about a single population parameter, about values of several population parameters, or about the form of a probability distribution

### Test Procedure

> [!info] Definition
> A rule, based on sample data, for deciding whether $H_0$ should be rejected

> [!example]
> …

A hypothesis test consists of
* Stating the hypothesis
* Choosing a test statistic
* Finding a $P\text{-}value$
* Drawing the final conclusion
#### Test Hypotheses

> [!info] Definition
> States two contradictory statements known as the null hypothesis (denoted by $H_0$) an the alternative hypothesis (denoted by $H_a$)

* The null hypothesis is the claim that is initially assumed to be true
* The alternative hypothesis is the claim that is contradictory to the null hypothesis
#### Test Statistic
* Many options
##### Right-tailed (Upper-tailed) Test
$H_0:\mu=\mu_0$
$H_a: \mu>\mu_0$
$Z=\frac{\overline X-\mu_0}{\frac{S}{\sqrt n}}\sim approx\: N(0,1)$
##### Left-tailed (Lower-tailed) Test
$H_0:\mu=\mu_0$
$H_a: \mu<\mu_0$
$Z=\frac{\overline X-\mu_0}{\frac{S}{\sqrt n}}\sim approx\: N(0,1)$
##### Two-tailed Test
$H_0:\mu=\mu_0$
$H_a: \mu\neq\mu_0$
$Z=\frac{\overline X-\mu_0}{\frac{S}{\sqrt n}}\sim approx\: N(0,1)$
The $P\text-value$ is twice the area in the tail beyond the test statistic value
#### $P\text-value$

> [!info] Definition
> The probability, calculated assuming $H_0$ is true, of obtaining a value of the test statistic at least as contradictory to $H_0$ as the value calculated from the available sample data

#### Errors in Hypothesis Testing
##### Type I Error

> [!info] Definition
> Rejecting the null hypothesis when it is true

* $\alpha$ (significance level) is used to represent the probability of a type I error
* $\alpha=P(reject\:H_0|H_0\:is\:true)$
* Common values of $\alpha$ 
	* 0.05
	* 0.01
	* 0.10
##### Type II Error

> [!info] Definition
> Failing to reject the null hypothesis when it is false

* $\beta$ is used to represent the probability of a type II error
* $\beta=P(fail\:to\:reject\:H_0|H_0\:is\:false)$
* Power of the test
	* $1-\beta=P(reject\:H_0|H_0\:is\:false)$
##### Which Error is More Important to Control?
* $H_0$: the person accused of a crime is innocent
* $H_a$: the person accused of a crime is guilty
###### Type I Error
###### Type II Error

#### Sample Size, Significant Level, and the Power of Test

> [!tip]
> If the size of a sample is fixed, then decrease of $\alpha$ leads to increase in $\beta$ and, as a result, the power of the test decreases

> [!tip]
> …
#### Decision Criterion
Reject $H_0$ if $P\text-value\leq\alpha$
Fail to reject $H_0$ if $P\text-value>\alpha$
## 8.2 - $z$ Tests for Hypotheses about a Population Mean
### Case 1 - Normal Population

> [!info] Assumptions
> * $X_1,X_2,…,X_n$ are $iid$ $rvs$
> * $X\sim N(\mu,\sigma^2)$
> * $\mu$ is unknown, $\sigma$ is provided

#### Test Statistic ($TS$)
$$Z=\frac{\overline X-\mu_0}{\sigma}*\sqrt n$$ where $H_0:\mu=\mu_0$

##### Upper-tailed Test
$H_0$ contains the inequality >
##### Lower-tailed Test
$H_0$ contains the inequality <
##### Two-tailed Test
$H_0$ contains the inequality $\neq$

> [!example] Example 18
> Given
> * $H_0:\mu=75$
> * $H_a:\mu<75$
> * $\sigma=9$
> * Normal distribution
> * $n=25$
> * $\overline x=72.3$
> * $\alpha=.002$
> 
> Find conclusion
> 1. $H_0:\mu=75,\:H_a:\mu<75$ (left tailed test)
> 2. $TS$ value $z=\frac{\overline x-75}{9}*5=-1.5$
> 3. $P\text-value=\phi(-1.5)=P(Z\leq-1.5)=.0668$
> 4. Since $.0668 >\alpha=.002\Rightarrow$ fail to reject $H_0$
> 5. There is not enough evidence that the true average drying time of the paint with the additive is less than 75 minutes

#### Sample Size Calculations
Given
* $H_0: \mu=\mu_0$
* $H_a: mu<\mu_0$
* $\alpha$
* $\beta$ 
* $\mu=\mu^1 \neq \mu_0$
Find $n$
* $\beta(\mu^1=1-\phi(\frac{\mu_0-\mu^1}{\sigma}*\sqrt n-Z_a))\Rightarrow1-\beta=\phi(\frac{\mu_0-\mu^1}{\sigma}*\sqrt n-Z_a))\Rightarrow\phi(Z_\beta)$
* $\frac{\mu_0-\mu^1}{\sigma}*\sqrt n-Z_\alpha=Z_\beta$
* $n=(\sqrt n)^2=(\frac{(Z_\beta + Z_\alpha)\sigma}{\mu_0-\mu^1})$

> [!example] Example 18
> Given
> * $\alpha=.002$
> * $\beta(70)=.01$
> * $\mu^1=70$
> * $\mu_0=75$
> 
> Find $n$
> 1. $Z_\alpha=2.88$
> 2. $Z_\beta=Z_{.01}=2.33$
> 3. $n=…=87.95\Rightarrow n=88$

### Case 2 - A Large Sample ($n>30$)
From unknown distribution ($\sigma$ is unknown)
#### Test Statistic ($TS$)
$$Z=\frac{\overline X-\mu_0}{S}*\sqrt n,\: H_0:\mu=\mu_0$$
If $H_0$ is true, $Z\sim\:approx\:N(0,1)$

> [!example] Example 24
> 1. Hypothesis
> 	* $H_0:\mu=153,H_a:\mu>150$
> 	* Right tailed test
> 1. $TS$ value
> 	* $z=\frac{\overline x-\mu_0}{S}*\sqrt n=\frac{191-153}{89}$
> 	* $z\approx3.25$
> 	* 



