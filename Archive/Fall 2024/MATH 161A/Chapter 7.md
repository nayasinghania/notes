---
tags:
  - math161a
---
## 7.1 - Basic Properties of Confidence Intervals

### Point Estimate

> [!info] Definition
> A point estimate of a population parameter is a single number used to approximate a population parameter
### Interval Estimate

> [!info] Definition
> An interval estimate (or a confidence interval) of a population parameter is an interval that with a certain degree of confidence contains the value of the population parameter
### Confidence Intervals

> [!info] Definition
> Let $X_1,X_2,…,X_n$ be a random sample from a distribution that has a parameter $\theta$
> Suppose $h_(X_1,X_2,…X_n,\theta)$ is a function whose distribution is known and it (the distribution) doesn't depend on $\theta$
> Consider the probability
> $$P(a<h(X_1,X_2,…X_n,\theta)<b)=1-\alpha$$
> where $1-\alpha$ is called the **confidence interval**, usually expressed as a percentage $100(1-\alpha)$%
> Typical confidence intervals are 
> * 90% $(\alpha =10…$
#### Interpretation of a Confidence Interval

> [!info] Definition
> A confidence level is the proportion of times that the confidence interval actually does contain the population parameter, assuming that the estimation process is repeated a large number of times
>

Procedure for Constructing a $CI$ for $\mu$ (a normal distribution with known $\alpha$)
1. Verify that a random sample is drawn from a normally distributed population
2. Refer to Table $A3$ and find the critical value …
3…..

> [!example] Example 6
> Given
> * $X_i=$ the yield point of the $i^{th}$ bar
> * $i=1,…,25;\:n=25$
> * $X_i\sim N(\mu,\sigma^2=100^2)$
> Compute a 90% $CI$ for $\mu$
> * $\mu=$ the true average yield point = mean yield
> 1. $1-\alpha=.90\Rightarrow\alpha=.1\Rightarrow\frac{\alpha}{2}=.05$
> 2. Critical value $Z_{\frac{\alpha}{2}}=Z_{.05}$
> 	* Table $A3\Rightarrow Z_{.05}=1.645$
> 1. The margin of error
> 	* $E=Z_{\frac{\alpha}{2}}\frac{\alpha}{\sqrt{n}}=1.645*\frac{100}{\sqrt{25}}=329$
> 1. Confidence limits
> 	* Lower: $\overline{X}-E=8439-32.9=8406.1$
> 	* Upper: $\overline{X}+E=8439+32.9=8471.9$
> 	* A 90% confidence interval for $\mu$ is (8406.1, 8471.9)
> 	* Interpretation
> 		* We are 90% confident that the true average yield point of all modified bars is between 8406.1 $lb$ and 8471.9 $lb$
#### Relationship between Confidence Level, Sample Size, and Width
* If a sample size is fixed, then any increase in the confidence level makes the corresponding confidence interval wider
* For a given confidence level, the width of the confidence interval can be reduced if we increase the sample size
#### Sample Size Determination
Given: $1-\alpha$ and width $w=2E$
Find: $n$, sample size
* $w=2E=2Z_{\frac{\alpha}{2}}*\frac{\sigma}{\sqrt{n}}\Rightarrow n=(\frac{2Z_{\frac{\alpha}{2}}\sigma}{w})^2$

> [!example] Example 4
> Given
> * $\sigma=3$
> * $1-\alpha=.99$
> * $w=1$
> Find $n$
> 1. $\alpha=0.01,\:\frac{\alpha}{2}=.005$
> 2. $Z_{.005}=2.575$
> 3. $n=(\frac{2(2.575)*3}{1})^2=238.1$
> 	* $n=239$

## 7.2 - Confidence Intervals for Large Samples

### Central Limit Theorem

> [!info] Definition
> If $n>30$
> $$\overline X\sim approx\:N(\mu,\frac{\sigma^2}{n})$$
> where $X_1,X_2,…,X_n$ are $iid$ with mean $\mu$ and standard deviation $\sigma$ 

Let $X_1,X_2,…,X_n$ be a random sample from some distribution and let $n$ be sufficiently large. Then,
$$Z=\frac{\overline X-\mu}{S}*\sqrt n\sim appox\:N(0,1)$$
where $\mu$ is the mean of the distribution of $X_i$'s. Then,
$$P(-Z_{\alpha/2}<\frac{\overline X-\mu}{S}<Z_{\alpha/2})\approx1-\alpha$$
An approximate $100(1-\alpha)$% $CI$ for $\mu$:
$$\overline x-z_{\frac{\alpha}{2}}*\frac{S}{\sqrt n}<\mu<\overline x + z_{\frac{\alpha}{2}}*\frac{S}{\sqrt n}$$
> [!example] Example 16
> Given
> * $X_i=$ the breakdown voltage of the $i^{th}$ circuit for $i=1,…,48$
> * $n=48$ ($n$ is large)
> * $\overline x=54.7$
> * $S=5.2$
> 
> Calculate A $95$% $CI$ for $\mu$, the average breakdown voltage
> 1. $\alpha=.05,\:\frac{\alpha}{2}=.025$
> 2. Critical values $Z_{.025}=1.96$
> 3. $Z_{\frac{\alpha}{2}}*\frac{S}{\sqrt n}=1.96\frac{52}{\sqrt{48}}=1.47$
> 4. 
> 	* Lower limit: $54.7-1.47=52.23\approx53.2$
> 	* Upper limit: $54.7+1.47=56.17\approx56.2$
> 	* An approximate 95% $CI$ for $\mu$ is (53.2,56.2)
> 1. We are approximately 95% confident that $\mu$ is between $53.2\;kV$ and $56.2\:kV$
> 
> Find the sample size
> * Given: $w=2,1-\alpha=.95,range=70-40=30$
> * $S\approx \frac{30}{4}=1.5$
> * $n=(2*1.96*\frac{7.5}{2})^2=216.09$
> * $n=217$
### Estimating Sample Size
Let $w$ be the width of a $CI$
$$w=2*Z_{\frac{\alpha}{2}}*\frac{S}{\sqrt n}$$
Solve for $n\Rightarrow n=(2*Z_{\frac{\alpha}{2}}*\frac{S}{w})^2$
If the distribution of $X_i$'s is not too skewed, then a possible estimate of $S$ is 
$$S\approx\frac{range}{4}=\frac{max-min}{4}$$
### Bounds for Unknown $\mu$
An approximate 100(1-$\alpha$)% lower confidence bound for $\mu$ is
$$\overline x -Z_\alpha * \frac{S}{\sqrt n}<\mu$$
and an upper confidence bound for $\mu$ is
$$\overline x+z_\alpha*\frac{S}{\sqrt n}>\mu$$
### Population Proportions
* Population proportion of successes: $p=\frac{M}{N}$
* Sample proportion: $\hat p=\frac{X}{n}$

> [!example] Example 20
> Add image here

### Traditional Confidence Interval
$$\hat p\pm z_{\frac{\alpha}{2}}\sqrt{\frac{\hat p(1-\hat p)}{n}}$$
### Equation
$$n\approx\frac{4z\hat p\hat q}{w^2}$$
## 7.3 - Intervals Based on a Normal Distribution

### Assumption
* $X_1,X_2,…,X_n$ form a random sample from $N(\mu,\sigma^2)$ where both $\mu$ and $\sigma$ are unknown
### Compute
* A $100(1-\alpha)$% $CI$ for $\mu$
### Function
* $T=\frac{\overline{X}-\mu}{S}*\sqrt{n}$ where $S$ is a sample standard deviation
### Student $t$-Distribution

> [!info] Definition
> Suppose that $X_1,X_2,…,X_n$ are $iid$ $rv$s and $X_i\sim N(\mu,\sigma^2)$. Then
> $$T=\frac{\overline{X}-\mu}{…}$$…
#### Properties
1. The Student $t$-Distribution is different for different sample sizes
2. The Student $t$-Distribution has the same general symmetric bell shape as the standard normal distribution but it reflects the greater variability
3. $E(T)=0$ if $\nu>1$
4. $V(T)=\frac{\nu}{\nu-2}$ if $\nu>2$
	* Note: $V(T)\rightarrow1$ as $\nu\rightarrow \infty$
5….
$T\sim t\text- dist(\nu=df)$
$\nu=df=$degrees of freedom $=n-1$

> [!example] Example 39
> Given
> * $X_i=\text{work of adhesion for the } i^{th} \text{ specimen}$
> * $i=1,…,5$
> 
> Assumption
> * $X_I\sim N(\mu,\sigma^2)$
> * $\mu=\text{the true average work of adhesion for all such specimens}$
> 
> Calculate a 95% $CI$ for $\mu$
> * $\overline{x}=107.78,\:s=1.076$
> 1. $\alpha=.05\Rightarrow\frac{\alpha}{2}=.025$
> 2. Critical value: $t_{.025,5-1}=2.776$
> 	* Use Table $A5$
> 1. Margin of Error
> 	* $E=2.776*\frac{1.076}{\sqrt5}=1.34$
> 1. Confidence Limits
> 	* Lower: 106.44
> 	* Upper: 109.12
> 1. A 95% $CI$ for $\mu$ is $(106.44,109.12)$
> 	* With 95% confidence we conclude that the true average work $\mu$ is between 106.44 and 109.12
#### One-Sided $CI$

Let $X_1,X_2,…,X_n$ be $iid$ $rv$s such that $X_i\sim N(\mu,\sigma^2)$ for $i=1,…,n$
$\mu$ and $\sigma$ are unknown
$T=\frac{\overline X-\mu}{\frac{S}{\sqrt n}}\sim \text{t-dist} (\nu=n-1)$
Consider …
Collect the data $x_1,x_2,…,x_n$
Calculate $\overline x$ and $S$
$\frac{\overline x -\mu}{S}\sqrt n < t_{\alpha,n-1}$
Solve for $\mu$ 
$\overline x - t_{\alpha,n-1}*\frac{S}{\sqrt n}<\mu$ $\Rightarrow 100(1-\alpha)$% lower confidence bound for $\mu$ 
$\mu<\overline x + t_{\alpha,n-1}*\frac{S}{\sqrt n}$ $\Rightarrow 100(1-\alpha)$% upper confidence bound for $\mu$ 

> [!example] Example 34
> Given
> * $X_i=$ the proportional limit stress of the $i^{th}$ joint for $i=1,…,14$ and $n=14$
> * Assume that $X_i\sim N(\mu,\sigma^2)$
> * $\mu=$ the true average proportional limit stress of all joints
> * $\overline x=8.48$, $s=.79$
> 
> Find a $95$% lower confidence bound for $\mu$ 
> 1. $1-\alpha=.95\Rightarrow \alpha =.05$
> 2. Critical value $t_{\alpha,n-1}=t_{.05,13}=1.771$
> 3. A $95$% lower confidence bound for $\mu$ 
> 	* $\overline x - t_{\alpha,n-1}*\frac{S}{\sqrt n}=8.49-1.771*\frac{.79}{\sqrt{14}}$
> 	* We are $95$% confident that $\mu>8.11\:MPa$

If $n>30$
$$T=\frac{\overline X-\mu}{S}*\sqrt n\sim approx\:N(0,1)$$
## 7.4 - Confidence Interval for the Variance and Standard Deviation

### Chi Squared Distribution
$\chi^2(\nu=n-1)$
#### The $pdf$
* Positively skewed

#### Assumption
Let $X_1,X_2,…,X_n$ be $iid$, where $X_i\sim N(\mu,\sigma^2)$

> [!info] Proposition
> Let $S$ be a sample variance. Then,
> $$\frac{(n-1)S^2}{\sigma^2}\sim\chi^2(\nu=n-1)$$

$$P(\chi^2_{1-\frac{\alpha}{2},n-1}<\frac{(n-1)S^2}{\sigma^2}<\chi^2_{\frac{\alpha}{2},n-1})=1-\alpha$$
A $100(1-\alpha)$% $CI$ for $\sigma^2$ is $$\frac{(n-1)S}{\chi^2_{\frac{\alpha}{2},n-1}}<\sigma^2<\frac{(n-1)S}{\chi^2_{1-\frac{\alpha}{2},n-1}}$$
> [!example] Example 4
> Given
> * $X_i=$ the amount of lateral expansion of the $i^{th}$ arc weld
> * $i=1,…,9$
> * $n=9$
> * $S=2.81$
> * Assume $X_i\sim N(\mu,\sigma^2)$
> 
> Find a $95$% $CI$ for $\sigma^2$ and  $\sigma$ 
> 1. $\alpha=.05\Rightarrow \frac{\alpha}{2}=.025$
> 2. Critical Values
> 	* Table $A7$
> 	* $\chi^2_{.975,8}=2.180$
> 	* $\chi^2_{.025,8}=17.534$
> 1. Confidence Interval
> 	* Lower limit: $\frac{(n-1)S^2}{\chi^2_{\frac{\alpha}{2},n-1}}=\frac{8*2.81^2}{17.534}=3.60$
> 	* Upper limit: $\frac{(n-1)S^2}{\chi^2_{1-\frac{\alpha}{2},n-1}}=\frac{8*2.81^2}{2.18}=28.98$
> 	* A $95$% $CI$ for $\sigma$ is $(1.90,\:5.38)$
