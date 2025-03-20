# AWS Secret Manager

Meant for storing secrets
different from SSM Param store because you can.. 
* Force rotation of secret every X days
* Automate generation of secret on rotation (w/ Lambda)
* Integration with RDS (MySQL, Postgres, Aurora)
* Secrets encrypted w/ KMS 

Mostly meant for RDS integration

## Multi-region secrets
* can replicate secrets across regions
* SM keeps read replicas in sync w/ primary secret
* can promote replica secret to standalone

Use Case: Multi region apps, DR, multi-region DB
