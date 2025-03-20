# CodeArtifact
## Overview

artifact management system
Maven, Gradle, npm yarn twine pip NuGet
Devs and CodeBuild can get dependencies from CArtifact
define domain > repositories in Domain
Can be proxy for public artifact repo

CodeBuild push/fetch from CArtifact

EventBridge
when a package is created/modified/deleted
Lambda, Step Functions SNS, SQS, CPipeline

rebuild/redeploy with latest security fixes

Resource Policy enables cross account access
All packages or non of them, no granular control

## Upstream Repos
Allows access to all deps from one place
Up to 10 upstream repo

can only have 1 external connection repository
external connection is connection to external/public repo
repo A connects to public NPM
if not available in repo A, pulls and cache to CArtifact

Retention
if requested package version is found in an Upstream repo, a reference is retained and is always available from the Downstream repo

the retain package version is not affected by changed to the Upstream repo

intermediate repos do not keep the packages ie, kept edges, close to dev and closest to external

Domains can span multi accounts and they share storage
Encrypted and fast copy
can define Domain Resource Policy

Create Repo > Create/Define Domain > Create

Can use AWS CLI to configure or manually set it up 
