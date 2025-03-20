# IAM Identity Center

Successor called AWS Single Sign On

set up in Management account

One login for all
* AWS Accounts in AWS Org
* Business cloud apps
* SAML 2.0 enabled apps
* EC2 windows instances

ID provides:
* AWS Built in
* AD, Okta, OneLogin, etc.

Browser - IAM ID Center -> ID provider -> SSO to AWS org or Business cloud App

Define permission sets in IAM ID center
then associate with OU, then assign users

Fine grained permission
* multiaccounts 
    * manage access across account in AWS Org
    * Permission Sets - collection of 1 or more IAM policies assigned to users and groups to define AWS Access

* Application Assignments
    * SSO access to many SAML2.0 apps
    * Provide required URLS, certs, metadata

* Attribute based Access Control
    * Fine grain permission based on tags and attributes on users
        * Resource based policies
    * assigned to cost center, locale, 
    * Use Case: Define permissions once, update permissions for  users by changing attributes
    * can be defined at key/value pair in IdP

## External ID providers
SAML 2.0

SAML 2.0 does not provide a way to query IdP to learn about users and groups
* Therefore, you must create users and group in the IAM ID Center that are identical to the users and groups of the external IdP

SCIM - System for cross domain ID Management
* Auto provisioning (Synch) of users ids from external IdP to IAM ID Center
* Must be supported by IdP 
* Perfect compliment to using SAML 2.0 

## MFA 
2 modes
* every time they sign in
* only when thie sign in context changes