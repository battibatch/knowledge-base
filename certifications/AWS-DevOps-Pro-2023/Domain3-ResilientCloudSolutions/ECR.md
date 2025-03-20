# ECR
Elastic container registry
Store ang manage docker images
privately and publicly images
fully integrates w/ ECS
Backed by s3
Access managed via IAM
supports image scanning, version, image tags, image lifecycle

### Lifecycle policies
automatically remove old or unused images based on age or count.

container 1 or more rules
all rules evaluated at the same time and then applied on priority

images are cleaned up within 24 hour after they meet criteria

Helps reduce cost

### uniform pipeline
apps are based on tech type
but built uniformly deployable to ECS or Fargate
