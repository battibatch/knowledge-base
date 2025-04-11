# AWS CloudTrail Logs Alerts

This page is mean to be a cheat sheet of sorts on what logs an organization should alert on. Ideally, this page is tool agnostic, and focuses strictly on which logs. The goal is to start broad and narrow in to identify the nuance of logs to help prevent alert fatigue.

There are 3 types of CloudTrail events:
* Management (Default)
* Data (cost extra)
* Insights - API call and error rates (cost extra)


## Always alert

### Account Events
* `CreateAccount`
* `UpdateAccount`
* `DeleteAccount

### IAM Changes
* `{Create,Update,Delete}User`
* `{Create,Update,Delete}AccessKey`
* `{Attach,Detach}UserPolicy`
* `{Create,Update,Delete}Policy`
* `{Create,Update,Delete}Role`
* `AddUserToGroup`, `RemoveUserFromGroup`

### Security Events
* `StopLogging`, `DeleteTrail`, `UpdateTrail`
* `{Put,Delete}BucketPolicy`, `PutBucketAcl`
    * Check to make sure there is no public access to S3 Buckets
* `AuthorizeSecurityGroup{Ingress,Egress}`
    * Check for Internet Access (0.0.0.0/0)
* `RevokeSecurityGroup{Ingress,Egress}`
* `UpdateSecurityGroupRuleDescription{Ingress,Egress}

`


* `"errorCode": "Client.UnauthorizedOperation",`


`eventName`:

* CreateUser
* CreateRole

* UpdateTrail
