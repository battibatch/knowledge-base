# Chapter 2: A Measurement Primer for Cybersecurity

Measurement = A quantitatively expressed reduction of uncertainty base on one or more observations.


Nominal scales do not tell us much, not even the order

Ordinal scales (high, med, low) are too limited to be use
* They denote an order but tell us nothing about the amount of the difference between values on the scale.

## Bayesian Measurement: A pragmatic Concept for Decisions
When we talk about measurement as “uncertainty reduction,” we imply that there is some prior state of uncertainty to be reduced. And since this uncertainty can change as a result of observations, we treat uncertainty as a feature of the observer, not necessarily the thing being observed.

We quantify this initial uncertainty and change in uncertainty from observation by using probabilities. This means that we are using the term “probability” to refer to the state of uncertainty of an observer or what some have called a “degree of belief.” If you are almost certain that a given system will be breached, you can say there is a 99% probability. If you are unsure, you may say there is a 50% probability.

This view of probabilities is called the subjectivist or sometimes the Bayesian interpretation.

His simple formula, known as Bayes’s theorem, describes how new information can update prior probabilities. “Prior” could refer to a state of uncertainty informed mostly by previously recorded data, but it can also refer to a point before any objective and recorded observations.

We use probability because we lack perfect information, not in spite of it.

Total elimination of uncertainty is not necessary for a measurement, but there must be some uncertainty reduction.

Clarification Chain:
1. If it matters at all, it is detectable/observable.
2. If it is detectable, it can be detected as an amount (or range of possible amounts).
3. If it can be detected as a range of possible amounts, it can be
measured.

## Definitions for Uncertainty and Risk and Their Measurements
**Uncertainty:** The lack of complete certainty, that is, the existence of more than one possibility. The “true” outcome/state/result/value is not known.
**Measurement of Uncertainty:** A set of probabilities assigned to a set of possibilities. For example: “There is a 20% chance we will have a data breach sometime in the next five years.”
**Risk:** A state of uncertainty where some of the possibilities involve a loss, catastrophe, or other undesirable outcome.
**Measurement of Risk:** A set of possibilities, each with quantified probabilities and quantified losses. For example: “We believe there is a 10% chance that a data breach will result in a legal liability exceeding $10 million.”

## Statistical Significance: What’s the Significance?

You may notice that the beliefs some hold about statistics will contradict the following facts:

* There is no single, universal sample size required to be “statistically significant.”
* To compute it correctly, statistical significance is a function of not only sample size but also the variance within a sample and the “null hypothesis.” These would be used to compute something called a “P-value.” This result is then compared to a stated “significance level.” Lacking those steps, the declaration of what is statistically significant cannot be trusted.
* Once you know how to compute statistical significance and understand what it means, then you will find out that it isn’t even what you wanted to know in the first place. Statistical significance does not mean you learned something and the lack of statistical significance does not mean you learned nothing.

For now, it is probably better if you drop the phrase “statistically significant” from your vocabulary. What you want to determine is whether you have less uncertainty after considering some source of data and whether that reduction in uncertainty warrants some change in actions. 

```
Rule of Five:

There is a 93.75% chance that the median of a population is between the smallest and largest values in any random sample of five from that population.
```

The chance of randomly selecting five values that happen to be all above the median is like flip- ping a coin and getting heads five times in a row. The chance of getting heads five times in a row in a random coin flip is 1 in 32, or 3.125%; the same is true with getting five tails in a row. The chance of not getting all heads or all tails is then 100% − (3.125% × 2), or 93.75%. Therefore, the chance of at least one out of a sample of five being above the median and at least one being below is 93.75% (round it down to 93% or even 90% if you want to be conservative).

```
Laplace’s Rule of Succession:

Given that some event occurred m times out of n observations, the probability it will occur in the next observation is (1 + m)/(2 + n).
```
LRS is actually an estimation method that errs on the side of uncertainty. If we have no data at all about a population proportion (a sample size of zero, no hits or misses), then LRS defaults to 50%.

Remember, this is just an initial estimate, and it is based on an extremely conservative assumption (erring on the side of uncertainty) because it assumes that your only information is your own experience.

## Building on Simple Estimation Methods

1. No matter how complex or “unique” your measurement problem seems, assume it has been measured before.
2. If you are resourceful, you can probably find more sources of data than you first thought.
3. You probably need less data than your intuition tells you—this is actually even more the case when you have a lot of uncertainty now.
