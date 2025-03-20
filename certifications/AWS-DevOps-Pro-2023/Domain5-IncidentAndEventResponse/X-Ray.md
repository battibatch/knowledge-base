# X-Ray 
Visual Analysis of apps with tracing data

trace requests across micro services 
Integrations with: 
* EC2 - install xray agent
* ECS - install xray agent or docker container
* Lambda - check the box
* Beanstalk - agent installed automatically
* API gateway - helpful to debug errors 504

Needs IAM permissions

anytime you see distributes tracing, 

## with beanstalk
agent installed by default
run a daemon by setting option in console or config file
IAM permissions
Make sure app is instrumented with xray SDK to use it
one click to enable and IAM role

