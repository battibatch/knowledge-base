# The Pragmatic Programmer 
author
year

## Chapter 01: A Pragmatic Philosophy

### Topic 01: It's Your Life
You own it. You run it. You create it. 
You have Agency. If you jobs sucks, try to fix it. If you cannot, or they won't let you, move on. 

### Topic 02: The Cat Ate my Source Code
The greatest weakness of all is fear of appearing weak
- take resposnibility for you action
- your team needs to be able to trusted and rely on you
    - and you on them 
- healthy communication is built on trust

Provide options, not excuses
- instead of saying what cannot be done. say what can be done

### Topic 03: Software Entropy
when disorder increases in software, it is call technical debt

1 broken window, left un-repaired for a length of time instills the sense of abandonment. eventually, it becomes a reality. Don't live with broken windows
- bad designs, wrong decisions, poor code

First, do no harm
- don't cause collateral damage
- if code is bad, do not follow suit

### Topic 04: Stone Soup and Boiled Frogs
Soldiers are the catalyst, bringing the village together to build something none could do alone

Be the catalyst for change
- do what you can, show it to peeps, let them marvel and suggest enhancements

Remember the big picture
- constantly review what is happening around you

### Topic 05: GOod enough Software
Nothing will be perfect
- write software good enough for your users, and future maintainers
- it will make you more productive

Involve your users in the Trade-Off
- how good do they want it to be? 

make quality a requirements issue 

Know when to stop
- don't over embellish or overrefine.
- move on and let code run for a bit

### Topic 06: Your Knowledge Portfolio
KNowledge and experience are your most important assets
- but they are expiring
- knowledge becomes out of date

Keep a knowledge Portfolio
1. invest regularly
2. Diversify is key to long term success
3. Balance between conservative and high risk investments
4. buy low, sell high (learning emerging techs before they are popular)
5. review and rebalance

Goals
- learn a new languages every year
- read a tech book every month
- Read nontech books
- Take classes
- Participate ion local meet ups 
- experiment w/ different envs
- stay current

Critically analyze what you read and hear
- Ask 5 whys (ask why 5 times)
- Who does this benefit? 
- WHat is the context
- WHen and where would this work
- Why is this a problem? 

### Topic 07: Communicate
English is jsut another programming language
- Know your audience
- KNow what you want to say, outline
- CHoose you moment, not friday at 6pm
- Choose a style, just the facts? hand holding?
- Make it look good
- Involve you audience
- Be a listener
- Get back to people

It is both what you say and how you say it

Build Documentation In, Don't Bolt it on

## Chapter 02: A Pragmatic Approach

### Topic 08: The Essence of Good Design
Good design is easier to change than Bad design
- ETC: Easier to chage
    - Decoupling is ETC
    - Single responsibility is ETC

ETC is value not a rule

### Topic 09: DRY - the Evils of Duplication
Don't Repeat Yourself
- every piece of knowledge must have a single unambiguous, authoritative representation within a system
- More than code
    - Docs
    - intent
    - Data

Make it easy to Reuse

### Topic 10: Orthogonality
2 lines are orthogonal if they meet at right angles.
- In computing, it means independence or decoupling
- changes to 1 thing do not impact the changes to another thing
    - DB is orthogonal to the user interface

Eliminate effects between unrelated things
Benefits
- Gain Productivity
- Reduce Risk 

Design things in layers
![alt text](image.png)

Don't rely on the properties of things you cannot control

Be careful to preserve optionality when introducing 3rd party toolkits and libs

Coding
- Write shy code: do not reveal anything unnecessary to other modules
- Avoid Global Data
- Avoid similar functions

Orthogonal systems are easier to test

same for docs; be able to change appearance without changing content.

### Topic 11: Reversibility

Nothing is forever
There are no final decisions, so make things easier to change
- small components instead of monoliths
- hide 3rd party API behind an abstraction layer

Forgo following fads

### Topic 12: Tracer Bullets
In code, we look for something that gets us from a requirement to some aspect of the final system quickly, visibly and repeatably
- Look for important requirements that define the system
- look for areas where you have doubts and the biggest risks

For example, ths system has 5 architecture layers and we have concerns about how they'd integrate, so we look for a simple feature that will exercise them together
![alt text](image-1.png)

Tracer code is not meant to be disposable

Advantages
- Users get to see something early
- Devs build a structure to work in
- You have an integration platform
- You have something to demonstrate
- You have a better feel for the process

Tracers may miss

Tracer code != prototyping
- prototyping you are aiming to explore a specific aspect of the final system. You will kludge to see that aspect, and if it works, throw it away and do it properly
    - disposable, reconn
- tracer shows how the app as a whole hangs together
    - lean but complete

### Topic 13: Prototypes and Post-it Notes
what to prototypes? 
- anything that carries risk
- anything you haven't tries before
- anything critical to the final system

Prototype to learn
- Architecture
    - Are responsibilities of the major areas well defined and appropriate? 
    - are the collaborations between major components well defined
    - is coupling minimized
    - can you ID potential sources od duplicating
    - are interface definitions ans constraints acceptable
    - does every module have an access path to the data it needs?
- New functionality
- structure of contents of external data
- 3rd party tools or components
- performance issues
- user interface designs

What can you ignore
- correctness
- completeness
- robustness
- style

do not prototype if there is a culture of implementing the prototype; tracer bullet instead


### Topic 14: Domain Languages
static vs dynamic typing
early vs late binding
functional vs OOO

always write code using the vocabulary of the application domain

Program close to the problem Domain

Trade off between internal and External languages
- internal can take advantage of features of its host language
    - but bound by syntax and semantics of host languages
- external languages are not bound by syntax

### Topic 15: Estimating

Estimate to avoid surprises

How accurate is accurate enough? 
- duration is 1-15 days, quote estimate in Days
- duration is 3-6 weeks, quote estimate in Weeks
- duration is 8-20 weeks, quote estimate in months
- duration is 20+ weeks, think hard before estimating

Where do estimates come from
- ask some one who has already done it. 
- Understand what is being asked
- Build a model of the system
- Decompose the model into components
    - Each component will have parameters
- Give each Parameters a value
- Calculate 

Keep track of your estimation prowess and refine

Estimate with a range of scenarios

PERT
- Program
- Evaluation
- Review
- Technique
Every PERT task as an optimistic, most likley, pessimistic estimate

Best way to estimate, is to gain experience through incremental development
- check requirements
- analyze risk (prioritize riskiest first)
- design, implement, integrate
- Validate with users

Iterate the schedule w/ the code

## Chapter 03: The Basic Tools

Tools amplify talent

### Topic 16: The Power of Plain Text

Keep knowledge in Plain text
- Insurance against Obsolescence 
- every tool can operate on plain text

easier to test plain text 

### Topic 17: Shell Games

Use the Power of command shells
make it your own

### Topic 18: Power Editing

Achieve Editor Fluency

think, "There must be a better way to do this"

### Topic 19: Version Control
Use it

use branches for isolation

Version Control as a Project Hub for a team

### Topic 20: Debugging

Debugging is just problem solving, not blame
- Fix the problem, not the blame
- Even for yourself
- Don't Panic

Always start w/ code built cleanly w/o warnings
Gather all relevant data
Reproduce the bug with a single command

failing Test before fixing code
- write the test first

Read the damn Error message!! 

Make sure it is not just a bad result
Sensitivity to input values
- binary chop the data until you find the offending input 

Regression test across releases to make sure it is not reintroduced

Add logging and tracing

Rubber Ducking

Remember the system is most likely not broken

Don't Assume it - Prove it
- prove your bug is fixed

### Topic 21: Text Manipulation

Learn text manipulation language
- Awk
- sed
- perl

### Topic 22: Engineering Daybooks
a kind of journal
- what they did
- things they learned
- sketches of ideas
- readings from metes
- anything to do w/ work

- take notes in meetings
- variables values
- reminders
- doodles

## Chapter 04: Pragmatic Paranoia
You cannot write perfect software

### Topic 23: Design by Contract 
Contract defines rights and responsibilities of all parties

For software, that means
- rights and responsibilities for modules 
- Define Preconditions
- Define Post conditions
- Class invariants (state)

Implement
- enumerate the input domain range
- what the boundary conditions are
- what the routine promises to deliver
- what the routine will not deliver

Use Assertions (runtime checks) to check 

### Topic 24: Dead Programs Tell No Lies
If there is an error, there is an error

Catch and release is for Fish
- If you catch and exception, do something w/ it

Crash Early; don't continue

### Topic 25: Assertive Programming

Use Assertions to prevent the impossible

don't use in place of real error handling though

Leave Assertions on
- if there is a performance problem, only turn off the offender

### Topic 26: How to Balance Resources

Finish what you start
- deal w/ allocated resources

Act Locally
- Deallocate in the opposite order you allocate
- allocate the same set of resources in different places in the same order

BUild code that checks that resources are freed appropriately

### Topic 27: Don't Outrun your Headlights

Take small steps - always
Check for feedback, and adjust before the next step. 

Avoid Fortune Telling


## Chapter 05: Bend, or Break

### Topic 28: Decoupling
coupling is the enemy of change

![alt text](image-2.png)

Train wrecks - Chains of method calls
Globalization - Dangers of static things
    - Avoid global accessible data
    - Includes singletons
    - If it is important enough to be global, wrap it in an API
Inheritance - why subclassing is dangerous

Look for the signs
- wacky dependencies between unrelated modules or libs
- simple changes to one module that propagate through unrelated modules
- devs who are afraid to change code b/c they aren't sure what might be affected
- meetings where every one has to attend b/c no one is sure who will be affected

Tell, don't ask
- you shouldn't make decisions based on the internal state of an object

Law of Demeter: says a method in C should only call: 
- other instance methods in C
- its parameters
- Methods in objects that it creates, both on the stand and in the heap
- Global variables


### Topic 29: Juggling the Real World
Events: the availability of information.

Strategies to write apps to respond to events
- Finite State Machines
    - a spec on how to handle events
    - set of states
    - Make a table
        - Columns are events, rows are states
        ![alt text](image-3.png)
        - Intersection is actions
- The Observer Pattern
    - has a list source of events, the observable
    - has a list of clients, the observers
    - Can introduce performance bottleneck
- Publish/Subscribe
- Reactive Programming and Stream

### Topic 30: Transforming Programming
all programs transform data, converting inputs to outputs; but we rarely think of it this way when we design apps

Programming is about code, but programs are about data

Don't hoard state, pass it around
- think of data as the flow

Never pass raw values between transformations; wrap in a data structure or type

### Topic 31: Inheritance Tax

inheritance is coupling
- Child class to parent, parent's parent, etc.
- code that uses child is couple to all the ancestors

Alternatives
- INterfaces and protocols
    - Prefer interfaces to express polymorphism
- Delegation
    - Delegate to Services: Has-A trumps Is-A
- Mixins and traits
    - Use Mixins to share functionality

### Topic 32: Configuration
keep values that may change external to the app
Parameterize you ap using external configuration
- creds for external services
- Logging levels and desitnations
- port, IP, machine and cluster names
- Env-specific validation parameters
- externally set parameters, i.e. tax rates
- site specific formatting details
- license keys

Static config - flat files, JSON, YAML
Configuration as a Service - service API to access config
- Multiple apps can share config info with auth and access control limiting 
- config changes can be made globally
- configuration data can be maintained via specialized UI
- config data can become dynamic
    - critical for HA

Without external config, code is not adaptable

## Chapter 06: Concurrency
everything is concurrent

### Topic 33: Breaking Temporal Coupling
aspects of time we care about
- things happening at the same time
- ordering or relative position of things in time

analyze workflow to improve concurrency
- create activity diagrams to maximize parallelism
![alt text](image-4.png)

concurrency is a software mechanism, and parallelism is a hardware concern.

### Topic 34: Shared State is Incorrect state

avoid non-atomic updates
- a semaphore is a thing that only 1 person can own at a time
    - create a semaphore, use it to control access to some other resource

Problems can pop up any where resources are mutable:
- files, DBs, external services, etc. 

Random failures are of then concurrency issues. 

### Topic 35: Actors and Process
actor is an independent virtual processor with its own local and private state. Each actor has a mailbox. When a message appears in the mailbox and the actor is idle, it kicks into life and processes the message. When it finishes, it processes another message in the mailbox or it goes back ro sleep. 
- when processing a message, an actor can create other actors, send messages to other actors and create a new state that will become the current state when the next message is processed

Process is a more general purpose virtual processor, often implemented by the Operating system to facilitate concurrency. Processes can be constrained to behave like actors

Actors can only be concurrent
- No single things is in control
- the only state is help in messages and in the local state of an actor
- all messages are 1 way;l there is not reply
- an actor only process 1 message at a time, to completion. 

### Topic 36: Blackboards
another concurrency method
features
- no one needs to know the existence of any one else, they watch the board for info and add their findings
- each person can be trained in different disciplines, the share a single desire only
- each person comes and goes as needed
- no restriction for what can go on the black board.  

use blackboards to coordinate workflow

## Chapter 07: While You are Coding
Coding is not mechanical

### Topic 37: Listen to your lizard brain
instincts are a response to patterns packed into our noncontagious brain
- The trick is to notice it is happening, and then work out why

Fear the blank page
- 2 reasons of this fear
    - doubt 
    - afraid to make a mistake

if code is harder than is should, something may be wrong
- structure or design is wrong
- solving the wrong problem

stop and give yourself time and space to organize your brain
- step away from code: take a walk, lunch, chat, doodle
- You cannot force it
- Create a comment describing in one sentence what you want to do or learn

### Topic 38: Programming by coincidence
be wary of drawing false conclusions
Program deliberately

close enough, isn't

don't assume it, prove it. 

How to program deliberately
- always be aware of wha you are doing
- Can you explain the code in detail to a Jr dev?
- don't code in the dark; if you do not know why is works, you will not know why if fails
- proceed from a plan
- rely only on reliable things
- document your assumptions
- test your code and your assumptions
- prioritize your effort; spend time on important aspects
- Don't be a slave to history.

### Topic 39: Algorithm speed
most significant algorithms are not linear in scale or resources

Big O notation
- O means "on the order of"
- Puts an upper bound on the value of a thing we are measuring (time, memory, etc.) 
- because the highest order term will dominate, reduce to only that term.
- Big O will never given actual numbers
![alt text](image-5.png)

Common sense estimations
- SImple loops O(n)
- Nested loops O(n^2)
- binary chop O(lg n)
- Divide and conquer O(nlg n)
- Combinatoric (traveling salesmen, optimally packing items in a container)

Estimate the order of your algorithms
Then test your estimates

make sure your algorithm is the problem before investigating it

### Topic 40: Refactoring
Software is more like gardening - organic
- weeding things that do not work as planned
- a certain routine is too large and should be split

Refactoring is 
- disciplined; not a free-for-all
- external behavior does not change
- do not add new features
- low risk small steps
- and exercise in pain mgmt

When to refactor? 
- Duplication
- Non-orthogonal design
- outdated knowledge or requirements
- usage
- performance
- tests pass

Refactor early, and often

make sure you have good tests before you refactor

### Topic 41: Test to Code
Testing is not about finding bugs
- benefits of testing happen when you think about and write the tests and when you run them

Tests drive code; a test is the first user of your code

TDD cycle
1. decide on small piece of functionality you want to add
2. write a test that will pass once that functionality is implemented
3. run all tests, verify only the new tests fails
4. write the smallest amount of code to pass the test; verify test passes
5. refactor; verify

Avoid
- too much time ensuring 100% coverage
- lots or redundant tests
- bottom up designs
    - Build end to end, not bottom up or top down

write unit tests
test Against contract
design to test
do ad hoc testing
build a test window into deployments
create a culture of testing
    - test first is the best choice
    - test during is a decent fallback
    - test later == test never
    - treat test code as prod code

Test your software, or your users will

### Topic 42: Property based testing
trust, but verify
- unit tests test known knowns

use property-based tests to validate assumptions
- properties are contracts and invariants
- Create test data

### Topic 43: Stay Safe out there
do not be careless
be paranoid as spies and dissidents
Get off the happy path

Security basic principles
1. minimize attach surface area
    - code complexity leads to attack vectors
    - input data must be validated
    - avoid unauthed services
    - keep authed user count as low as possible
    - output data as attack vector (password is used by another user)
    - debugging info has lots of info
2. Principle of Least privilege
3. secure defaults
4. Encrypt sensitive data
5. maintain secure updates

### Topic 44: Naming things

names reveal a lot about your intent and belief

renaming is very hard

## Chapter 08: Before the Project

### Topic 45: The Requirements Pit
No one knows exactly what they wan

Programmers help people understand what they want
- do not take a clients' need as gospel, ask questions
- look for edge cases

Requirements are a process and learned in a feedback loop
- help clients understand the consequences of their requirements

Work with a user to think like a user

policy is metadata, not requirements

temper requirements with reality

Requirement docs are not for clients
- they take too long to create
- client never reads them
- They should be simple and short and steer devs

Requirements are not architecture or design or UI
- they are NEED

Maintain a glossary

### Topic 46: Solving Impossible Puzzles
DOn't think out side the box, find the box
- understand tht constraints
- recognize the degrees of freedom
- Categorize and prioritize your constraints

Get out of your own way
- take a break, let unconscious work it
- rubber duck or explain to person

Get lots of experience on lots of things to prepare for hard problems

Don't Panic

### Topic 47: Working Together

work with, have discussions, take notes
pair program
- build code, not ego
- start small
- criticize code, not people
- listen to others viewpoints, different isn't wrong
- retrospectives

Conway's Law - the solution looks a lot like the communication structure

### Topic 48: The Essence of Agility
Agile is not a noun; agile is how you do things
- individuals and interactions over process and tools
- working software over comprehensive documentation
- customer collaboration over contract negotiation
- Responding to change over following a plan

There can never be an agile process
- there is no single plan

what do you do? 
1. work out where you are
2. make the smallest meaningful step towards where you want to be
3. evaluate where you end up and fix anything you broke

Agile drives design
- make things easy to change

## Chapter 09: Pragmatic Projects

### Topic 49: Pragmatic Teams
maintain small, stable teams
- No broken windows - quality is a team issue
- boiled frogs - people assume some one else is doing ti
- Schedule your knowledge portfolio - if you are serious about improvement, schedule it. 
- Communicate team presence
    - Generate a team brand
- DRY - instant and frictionless communication 
- Team Tracer bullets - organize fully functioning teams
- Automation to enable consistency
- Know when to stop adding paint - give the team ability to shine in their own way

### Topic 50: Coconuts don't cut it
cargo cult - imitating the form, but not the content
    - plane made out of coconuts

i.e. scrum, but meeting weekly with monthly sprints

Context matters
- Do what works, not what is fashionable
- do you have the skills/resources of spotify? 

One size fits no one well

The real goal is to drive delivery time down to zero
- deliver when users need it, continuous deployment

### Topic 51: Pragmatic Starter kit
1. Version Control
- drives builds, tests, releases
2. Regression Testing
- test early, often and automatically
- code isn't done until test runs
    - unit, integration, validations, performance
    - testing the tests, use saboteurs
- chaosmonkey
- test state coverage, not code coverage
- Find bugs once
3. Full Automation
- do not use manual procedures

### Topic 52: Delight your users

users are motivated by a business problem you can solve

learn what the definition of success is in {day,week,month,year}
- make sure every one is clear about expectations of value
- when making decision, think about what moves closer to those expectations
- critically analyze requirement with expectations in mind
- continuously think about expectations 


### Topic 53: Pride and Prejudice

Sign your work
do not shrink from responsibility

code ownership can cause problems with cooperations
- golden rule applies to code too


## Postface
first, Do not harm

Don't enable scumbags



