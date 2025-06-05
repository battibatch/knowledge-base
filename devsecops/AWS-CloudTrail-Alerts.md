# AWS CloudTrail Logs Alerts

This page is mean to be a cheat sheet of sorts on what logs an organization should alert on. Ideally, this page is tool agnostic, and focuses strictly on which logs. The goal is to start broad and narrow in to identify the nuance of logs to help prevent alert fatigue.

There are 3 types of CloudTrail events:
* Management (Default)
* Data (cost extra)
* Insights - API call and error rates (cost extra)


## `eventName` Always alert

### Account Events
* `CreateAccount`
* `UpdateAccount`
* `DeleteAccount

### Billing Events
* `ModifyBilling`
* `{Create,Delete}Budget`

### IAM Changes
* `{Create,Update,Delete}User`
* `{Create,Update,Delete}AccessKey`
* `{Attach,Detach}UserPolicy`
* `{Create,Update,Delete}Policy`
* `{Create,Update,Delete}Role`
* `AddUserToGroup`, `RemoveUserFromGroup`

### Privilege Escalation
* `{Attach,Detach}RolePolicy`
* `{Put,Delete}RolePolicy`

### Changes to Encryption Keys
* `CreateKey`
* `ImportKeyMaterial`
* `ScheduleKeyDeletion`
* `DisableKey`
* `DeleteAlias`

### Security Events
* `StopLogging`
* `{Create,Update,Delete}Trail`
* `{Put,Delete}BucketPolicy`, `PutBucketAcl`
    * Check to make sure there is no public access to S3 Buckets

**NOTE**: Also alert on `"errorCode": "Client.UnauthorizedOperation",` messages, especially in the production account and outside normal business hours.


## `eventName` Alert if from unexpect source/user
These are harder to set up alerts for because you do not want ot trigger alerts every time a deployment takes place. Include a conditional to check the `userIdentity` field.

### Infrastructure/Networking Changes
* `{Create,Delete}Vpc`, `ModifyVpcAttribute`
* `{Create,Delete}Subnet`
* `{Create,Attach,Detach,Delete}InternetGateway`
* `{Create,Delete}NatGateway`
* `{Create,Delete}RouteTable`, `ReplaceRouteTableAssociation`

### Resource Provisioning and Deprovisioning
* `{Run,Terminate,Start,Stop}Instances`
* `{Create,Delete}DBInstances`
* `{Create,Delete}Bucket`
* `{Create,Delete,Update}Function`
* `AuthorizeSecurityGroup{Ingress,Egress}`
    * Check for Internet Access (0.0.0.0/0)
* `RevokeSecurityGroup{Ingress,Egress}`
* `UpdateSecurityGroupRuleDescription{Ingress,Egress}`
