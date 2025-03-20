# Chapter 3: The Rapid Risk Audit
Starting With a Simple Quantitative Risk Model

## Terminology
* **Assets** create value that threats may compromise—leading to financial impact. A whole enterprise can be an asset. A business unit or region can be an asset. Even an application or service can be an asset.
* **Threats** compromise the value of assets. Threats can be things such as extortion from ransomware, fraud from business email compromise, or disruption due to attacks on a vendor. From an enterprise risk perspective it can be anything that plausibly and materially impacts the business from meeting its goals. This term is sometimes defined differently in cybersecurity—for example, it may refer to specific categories of actors or even specific viruses. But we will use it to be synonymous with a “peril” as it is used in insurance. Here, we will define a threat as a combination of some cause or attack vector combined with a specific loss. A “threat event” is an instance of one of those losses occurring due to the stated cause. Table 3.1 shows a list of proposed basic threats you can use to get started. The same threats are provided in the Chapter 3 spreadsheets on the book’s website.
* **Likelihood** measures the chance that a threat successfully compromises an asset’s value leading to some amount of financial impact in a given period of time. Unless stated otherwise, our default likelihood will be the chance that the stated threat even will occur at least once in a 12-month period. (Note that statisticians differentiate likelihood from probability, but the terminology is so ingrained in risk management that we’ll just defer to the common usage.)
* **Impact** is the amount lost when a threat successfully compromises an asset’s value. Impact is always eventually expressed in monetary terms. Even when impact involves reputation, quality, safety, or other non-financial damages, we express that pain in terms of equivalent dollar amounts. The authors have expressed all these forms of damage in monetary terms, and clients have always eventually accepted the practical necessity of it given that resources to reduce risks cost real money and decisions have to be made.
* **Controls** reduce the likelihood or impact of a threat event. It includes not just technologies such as multifactor authentication or encryption but also training and policy enforcement.
* **Confidence Interval or Credible Interval (CI)** represents your uncertainty about continuous quantities. In this model, we will use it for monetary impacts. Unless stated otherwise, we will always assume an interval is a 90% CI. This means we allow for a 5% chance the true loss could be below the lower bound and a 5% chance that the true loss is above the upper bound. We will also assume this is a “skewed” distribution of impacts. There is no chance the loss can be zero or negative but there is some small chance it could be far above our upper bound. Sometimes statisticians use the term “credible interval,” which refers to a subjective estimate of uncertainty to differentiate it from statistical inferences about a population. In probabilistic models, these are usually used in the same way, and since we will simply use the initials “CI,” we find no need to make any finer points about the distinction.


## Rapid Audit Steps:
1. Identify your internal sources: These are the people you will inter- view to answer the following questions. The concepts will probably be a bit unfamiliar to them at first, so be patient and coach them through the process. You may need to rely on your own knowledge to estimate some items (e.g., likelihood of ransomware) but other questions need input from the business (e.g., the cost of business disruption). If they previously used a risk matrix, the same individuals who provided input for that may be the sources for this risk audit. If they prefer the existing list of risks they identified, you can skip the next two steps (define assets, define threats). Whether you use an existing list of risks or generate a new one, we call that a “one-for-one substitution” because each risk that would have been plotted on a risk matrix is converted to an equivalent quantitative model. If your risk matrix had 20 risks plotted on it, then you use those same 20 risks in the spreadsheet we provided, instead of defining a new set of threats for each asset, as we are about to do. But if you want to start with a clean slate, then follow the rest of the process below.

2. Define your assets: The first issue your internal sources can address is how to classify assets. You can treat the entire enterprise as one big asset—which it is. Or you can break it up into a few separate parts, such as operational business units. This is an easy starting point for a rapid audit. You use the existing organizational chart as your guide. For a rapid risk audit, avoid a highly granular approach, such as listing every server. Keep it simple and limit it to no more than a dozen major business units. The methods and benefits of further decomposition will be addressed later in the book.

3. Define your threats: A “starter” list of threats are provided in the spreadsheet (the same as Table 3.1) but you can change them or add more. There are a lot of possible ways to develop a taxonomy of threats, so the criteria you should use is what your sources feel makes sense to them. Again, if they have an existing risk register they prefer to use, then use that instead of a list they are unfamiliar with.

4. Assess likelihoods: For each threat of each asset, assess the likeli- hood that the threat event will be experienced by that asset sometime within a one-year period. If you have multiple assets and are using Table 3.1 for threats, you will repeat the process to estimate likelihoods for each threat/asset combination. For many analysts, this seems like the most challenging part of the process. Often, there will be at least some industry reports to use as a starting point. See a list of some sources later in this chapter. But if you feel you have nothing else to go on, just start with Laplace’s rule of succession (LRS) based on your own experience, as described in the previous chapter. Remember, for the LRS just think of how many observations are in a “reference class” (your years of experience, other companies in a given year, etc.) and out of those observations how many “hits” (threat events of a given type) were observed.

5. Assess impacts: For each of the threats for each asset, estimate a 90% CI for potential losses. This is a simple form of a “probability distribu- tion,” which represents the likelihood of quantities. We will assume this distribution of potential losses is skewed (lopsided) in a way that is similar to a distribution commonly used to model losses. In this type of distribution, the average of all possible losses is not the middle of the range but closer to the lower bound. (This means that when we compute the mean loss in the next step, we don’t just use the middle of the range.) For a primer on using subjective CIs, see the inset “Thinking about Ranges: The Elephant Example.”

6. Compute Annual Expected Losses (AEL): We are going to compute the mean loss in this skewed distribution and multiply that value times the likelihood of the event. The spreadsheet you can download uses a more precise calculation for the mean of this skewed set of potential losses. But we can also just use the following simple equation:
Annual Expected Loss Per Threat Likelihood (0.65 LB 0.35 UB)
See Table 3.2 for an example with computed AEL values.

7. Add up all the AELs: When all asset AELs are combined, you have
an AEL for the entire organization.

8. Use the output: The total AEL for the enterprise is itself informative. It provides a quick assessment of the scale of the problem. The AEL for each individual threat/asset combination also gives us a simple way to prioritize which risks are the biggest.

## Initial Sources of Data

* **Insurance premiums vs. total AEL:** Insurance companies need to collect a lot of data on claims to price their policies competitively and still make a profit. This means that what they are willing to quote for cyber insurance tells us something about the likelihood and magnitude of potential losses. We can use this as a reality check on the total AELs in the rapid risk audit. Insurance companies generally hope to get a “claims payout ratio” of less than 60%. That’s the amount of collected premiums paid out for claims. It excludes other business overhead, so it has to be a lot less than 100% to be profitable. How- ever, actual losses experiences by clients could be higher than 60% because industry data indicates that about 20% of claims are denied. Claims paid out also exclude anything below the “retention” (i.e., the deductible the client is expected to cover on their own) and anything above the limit of the policy. So a rule of thumb would be that your insurer believes your real AEL will be something more than half your premium but no more than the whole premium assuming you have a small retention and large limit. If your AEL is far above or far below that range, you either have reason to believe your risks are different than what the insurer believes or you might reconsider likelihoods or CIs.
* **Impact of ransomware extortion:** Palo Alto Networks 2022 Unit 42 Ransomware Threat Report provides some basis for estimating extortion payments. The average payment for all of their cases was about $530,000. Demands ranged upward of $50 million, but $5 million is a more common upper bound, although such requests were met with relatively tiny payments. For your specific range, consider that extortion requests range from 0.7% to 5% of revenue. Actual payments are negotiated down to 0% to 90% of initial demands with most falling around 50%. So you might consider the upper bound of your CI to be closer to 2% or 3% of revenue.

* **Impact-data compromise:** You should know something about the number of personal records maintained in various assets. That should give you an upper bound. This applies regardless of whether the com- promise was due to an internal threat, or compromise of the cloud, a vendor, and so forth. The simplest way to convert that into a monetary loss is just to multiply the bounds for number of records lost times some fixed cost per record. The 2015 Verizon DBIR report recommended a cost of $0.58 per record. This particular “cost per record” metric was not updated in 2022 (although it could be adjusted for inflation), but there are more realistic methods. The 2022 report does give some indication of ranges of losses for various events where cost per record decreases with larger breaches. We don’t recommend using sources that put the per record averages up in the multiple hundred per record. Such analy- sis isn’t accounting for how the cost per records scale downward based on amount.
* **Impact-business disruption:** This is an area where you should have data internal to your firm. Outages of specific systems are one part of cybersecurity risks where there are more immediate observations within the firm and some knowledge of their consequences. Someone in your firm should know something about orders taken per minute, service level agreements, and examples of lost business based on past outages. For small companies that can start at $100 a minute. For larger companies the average value is closer to $5,600 a minute although We have seen questionable research that puts it closer to an average of $9,000 a minute. These are just rough guesstimates with some stat- ing that the cost of disruption is 50 times that of payment. This is why people pay ransoms: the need for availability far outweighs the current average cost of extortion.

The point of risk analysis is to support decisionsWhat is worth to move 1 hight risk to a medium? If I have $1m to spend and should I mitigate 10 lows or 1 medium?

## Return on Control Calculation

```
return on control = (reduction of expected losses / cost of control) -1
```

## Monte Carlo Simulation
A Monte Carlo simulation uses a computer to generate a large number of scenarios based on prob- abilities for inputs. For each scenario, a specific value would be randomly generated for each of the unknown variables. Then these specific values would go into a formula to compute an output for that single scenario. This process usually goes on for thousands of scenarios.

To generate a lognormal distribution, the tool provided on the book’s website uses the following formula in Excel:

```
lognorm.inv(rand(), mean of ln(X), standard deviation of ln(X))
```
where:

```
standard deviation of ln(X) = (ln(UB) − ln(LB))/3.29
```

```
mean of ln(X) = (ln(UB) + ln(LB))/2
```

So if we had a 90% CI for an impact of $100,000 to $8 million, then the mean and standard deviation we need to use for lognorm.inv (which is the mean and standard deviation of the log of the original distribution) would be:

```
mean of ln(x) (ln(8000000) ln(100000))/2= 13.7
```

```
standard deviation of ln(x) (ln(8000000) ln(100000))/3.29 = 1.33
```

To generate the loss for an event with a 5% chance of occurrence and an impact of $1 million to $9 million, we would write

```
if(rand() 0.05, lognorm.inv(rand(), (ln(9000000) ln(1000000))/2, (ln(9000000) ln(1000000))/3.29), 0)
```

Most of the time (95%), this function would produce a zero. And just 5% of the time it would generate a value with a 90% chance of falling between $1 million and $9 million. Note that since this is a 90% CI, there is a 5% chance of being below the lower bound (but above zero, since the log normal distribution can only produce positive values) and a 5% chance of being above the upper bound and sometimes well above. If the event occurs in the example above, there is a 1% chance the loss could exceed $14.2 million.

Table 3.4 and 3.5 show the output
