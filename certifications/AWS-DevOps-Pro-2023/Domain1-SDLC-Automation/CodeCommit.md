# CodeCommit

## Overview

Version Controller
git
code backed up on cloud
viewable and auditable
many devs can use simultaneous

Use it because Git/Bitbucket is expensive
Private git repos
No size limits
fully managed and HA
only in cloud account, better security and compliance
security, access controller and encrypted
integrates with Jenkins, CodeBuild, etc.

Auth with SSH keys or HTTPs
Authz with IAM users/roles/policies
encrypted with KMS
Cross account access via roles

Minimal UI for CodeCommit

If you do not see SSH, it is because you are root user, not IAM user

can define notification rules in repo

* full or basic
* events that trigger notifications
* create SNS topic to trigger email alert

Can create triggers, similar to notifications

## Advanced
## moitoring with eventBridge
pullRequestCreated, pullRequestStatusChanged, referenceCreated, etc...

near real time; take action when there is an event 

## Migrate to CodeCommit

1. create repo in CodeCommit
2. do a git clone 
3. Push to CodeCommit

## Cross region Replication

use case: achieve lower latency pulls for global devs, backups, etc
when even referneceCreated or Updated captured in Event bridge, trigger ECS task to clone repo and push to repo in another region

could also use

## Branch security

* by default push permissions, can commit to all branches
* use IAM policies to limit what branches devs can push to
* resource policy not supported yet

## PR Approval rules

requires code to be reviewed before it can be merged
* specificy pool of users and number of users required to approve
    * IAM users, federated, roles, etc
* an define different rules in different branches




