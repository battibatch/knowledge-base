# AI Engineering: Building Apps with Foundation Models
Huyen, Chip
2025

Provides a framework for adapting models to specific apps

## Chapter 01: Intro

Why do AIs use tokens instead fo word or chars? 
1. compared to chars, tokens allow the model to break words into meaningful components. Cooking can become cook and ing
2. There are fewer unique tokens than unique words, reducing the vocabulary size, improving efficiency
3. tokens help the model process unknown words - chatgpting can become chatgpt and ing

Self supervised learning means the language model can learn from sequences w/o labels; improve scaling

AI engineering is about leveraging existing models

discusses top uses cases - coding, docs, a/v, bots, etc 

Planning AI Apps
* Use cases eval based on risk/opportunity
    * if you don't, your competitor will
    * missed opps to boost profits and productivity
    * don't want to be left behind

role of AI and humans in app
* critical or complementary - can app work w/o AI?
* reactive or proactive (chat bot responses vs traffic alerts) 
* Dynamic or static (face recognition vs object detection)

Define what success for the app looks like
* usefulness threshold
* cost metrics

AI Engineering stack
* 3 layers of the AI stack
    * Application dev
        * Interface
        * prompt eng
        * Context construction
        * Evaluation
    * model development
        * Inference optimization
        * dataset engineering
        * Modeling and training
        * Evaluatino
    * Infrastructure
        * Compute mgmt
        * Data mgmt
        * Serving
        * Monitoring
    

## Chapter 02: Understanding Foundational Models

Model Architecture
* transformer architecture (lots of detail, ignored)

Model Size - Number of parameters
* each param is stored using 2 bytes so 7B params needs 14GB GPU mem for inference
* Bigger is not always better - newer smaller can outperform older larger
* training data quality matter - better more focused data is better

Compute is expensive. Run the right sized model

Scaling bottlenecks - foundations use so much data there is a realist concern we'll run out if internet data to use
* Research is looking at AI generating data to train on, but concerns

Post training
goal is address 2 issues: 
1. optimized for test completion and not conversations
2. if data is indiscriminate, it can be wrong, rude, sexists, racist, etc. 
* Fine tune the model to solve for this
* post training only takes about 2% of compute (98% for pretraining) 

Supervised finetuning is give demonstration data to the model to train it on specific things the company wants - teach to have a conversations
Preference finetuning is to teach it what kind of conversations to have
* Reinforced learning from human feedback is common


## Chapter 03: 

## Chapter 04: 

## Chapter 05: 

## Chapter 06: 

## Chapter 07: 

## Chapter 08: 

## Chapter 09: 

## Chapter 10: 


