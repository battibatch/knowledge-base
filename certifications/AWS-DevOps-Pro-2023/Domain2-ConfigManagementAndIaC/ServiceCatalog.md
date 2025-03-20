# Service Catalog

## Overview
To limit the available products to users
predefined by admins
give users a controlled env to deploy resources
Uses CFN
each product is CFN template

Admin define a CFN template that defines a portfolio of products
each portfolio has roles to define access

users can only see product list, provision 

Users cannot launch any CFN template, only the ones admin defined

teams are presented with self service portal to access product
good for governance, compliance, and consistency
give user access to launch without AWS knowledge
integrates w/ 3rd party like ServiceNow

## StackSet Constraints
allow admin to config product deployment options using CFN stacks

Accounts, regions, permissions

CFN stacksets itself does not give guardrails about where you can/not deploy but Service Catalog Constraints can

## Launch Constraints
how you want a product to be launched

IAM role assigned to a product to allow user to launch w/ minimal permissions

## Version Control and Sync on Service Catalog
Push a new product into GH
Invoke Lambda to read new info from template and update/create products

