# AWS Storage Gateway

Can use S3 as a hybrid Cloud storage to bridge on prem and coud
Use Case: 
* long cloud migrations
* security requirements
* Compliance requirements
* IT Strategy

Not like EFS/NFS

Storage Gateway is how you expose s3 storage to on prem
s3 is Object storage

## Types of storage Gateway
File
Volume
Tape

works with S3, Glacier, EBS

## RefreshCache API

Storage Gateway updates the file share cache automatically when files are written to File Gateway

when a user uploads a file directly to S3, file gateway will not know about it. 

RefreshCase API will sync it
can be invoked via user on demand or lambda function on poll or automatically when s3Upload has been performed

## Automated Cache refresh
File gateway feature that enabled automatic refresh file gateway cache to stay up to date with changes in S3

Ensure users do not have stale date
No need for RefreshCacheAPI

