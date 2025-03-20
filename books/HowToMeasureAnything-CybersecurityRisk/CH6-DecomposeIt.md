# Chapter 6: Decompose it


* **Decomposition Rule #1:** Decompositions should leverage what you are better at estimating or data you can obtain (i.e., don’t decompose into quantities that are even more speculative than the first).
* **Decomposition Rule #2:** Check your decomposition against a directly estimated range with a simulation, as we just did in the outage example. You might decide to toss the decomposition if it produces results you think are absurd, or you might decide your original range is the one that needs updating.

These two simple rules have some specific mathematical consequences. In order to ensure that your decomposition strategy is informative—that is, results in less uncertainty than you had before—consider the following:
* If you are expecting to reduce uncertainty by multiplying together two decomposed variables, then the decomposed variables need to not only have less uncertainty than the initial range but often a lot less. As a rule of thumb, the ratios of the upper and lower bounds for the decomposed variables should be a lot less than a third the width of the ratio of upper and lower bounds of the original range. For the case in the previous section, the ratio of bounds of the original range was about 47 ($7 million/$150,000), while the other two ranges had ratios of bounds of 16 and 25, respectively.
* If most of the uncertainty is in one variable, then the ratio of the upper and lower bounds of the decomposed variable must be less than that of the original variable. For example, suppose you initially estimated that the cost of an outage for one system was $1 million to $5 million. If the major source of uncertainty about this cost is the duration of an outage, the upper/lower bound ratio of the duration must be less than the upper/ lower bound ratio of the original estimate (5 to 1). If the range of the duration doesn’t have a lower ratio of upper/lower bounds, then you haven’t added information with the decomposition. If you have reason to believe your original range, then just use that. Otherwise, perhaps your original range was just too narrow, and you should go with the decomposition.
* In some cases the variables you multiply together are related in a way that eliminates the value of decomposition unless you also make a model of the relationship. For example, suppose you need to multiply A and B to get C. Suppose that when A is large, B is small, and when B is large, A is small. If we estimate separate, independent ranges for A and B, the range for the product C can be greatly overstated. This might be the case for the duration and cost per hour of an outage. That is, the more critical a system, the faster you would work to get them back online. If you decompose these, you should also model the inverse relationship. Otherwise, just provide a single overall range for the cost of the impact instead of decomposing it.
* If you have enough empirical data to estimate a distribution, then you probably won’t get much benefit from further decomposition.


A simple decomposition strategy for impact is the Confidentiality, Integrity, Availability

Table 6.1
90% CI for Confidentiality and Integrity for 
then, 90% CI for Availability

## Other Decomposition Strategies

* application-oriented decomposition
* Financial theft
* System outages
* Investigation and remediation costs
* Intellectual property (IP)
* Notification and credit monitoring
* Legal liabilities and fines
* Other interference with operations
* Reputation
* 


In each decomposition, you should try to leverage things you know—we can call them observables.

Remember, the reason you do this is to evaluate alternatives. You need to be able to discriminate among different risk mitigation strate- gies.

Our task here is to determine how to further decompose the problem so that, regardless of your industry or the uniqueness of your firm, your decomposition actually improves your estimations of risk.

## Decision Analysis: An Overview of How to Think about a Problem

Howard prescribes three prerequisites for doing the math in decision analysis. He stipulates that the decision and the factors we identify to inform the decision must be clear, observable, and useful.

* **Clear:** Everybody knows what you mean. You know what you mean.
* **Observable:** What do you see when you see more of it? This doesn’t mean you will necessarily have already observed it but it is at least possible to observe and you will know it when you see it.
* **Useful:** It has to matter to some decision. What would you do differently if you knew this? Many things we choose to measure in security seem to
have no bearing on the decision we actually need to make.

Example: The Clear, Observable, and Useful Test Applied to “Threat Actor Skill Level”
* Clear: Can you define what you mean by “skill level”? Is this really an unambiguous unit of measure or even a clearly defined discrete state? Does saying, “We define ‘average’ threat as being better than an amateur but worse than a well-funded nation state actor” really help?
* Observable: How would you even detect this? What basis do you have to say that skill levels of some threats are higher or lower than others?
* Useful: Even if you had unambiguous definitions for this, and even if you could observe it in some way, how would the information have bearing on some action in your firm?