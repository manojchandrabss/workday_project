Project 1:
==========

Wd Fake APP Runbook:

steps to build the above docker compose please follow below steps

1) npm init -y #to initialise package.json
2) create index.js file
3) clone the repo and run below command
4) docker-compose up --build

Questions:

A) How would you test this application?

Ans: clone the repo, cd to source directory fake_app

1) docker build -t fakeapp/test:v1 .
2) docker run -d -p 8080:8080 fakeapp/test:v1
3) curl http://localhost:8080

B) How would you deploy this application

Ans: docker-compose up --build

C) How would you manage configurations for secrets

Ans: we can use secret management tools like vault, aws secret manager and integrate with ur node code to get the password parameters. 

      And even docker-compose we can use secret.yml and add our passowrd arguments and add the ignore files to .gitignore (only for local and dev env testing)

====================================================================

Project 2
=========

Terraform runbook:

1) clone the repo
2) cd to fake_terraform folder
3) terraform init
4) terraform fmt
5) terraform validate
6) terraform plan
7) terraform apply
8) once validated
9) terraform destroy

Questions:


A) What type of security concerns do you have around the VPC?

Ans:
   1) Vpc should always have private subnets with Nat attached to it
   2) To access instances we need to have seperate vpc for bastion host attached to IG and Add peering between application vpc and bastion host vpc for           more secured connections
   3) Public subnets should only be used for LB, CICD tools and route it underlying private instances for more security

B) What questions do you have about the 2 users that have full admin access?

Ans: 
   1) All users should be given minimal or requried previleges. This should be handled from organisational level identity management
   2) Use multiple groups and roles/policies for more secured accesing of services.
     
C) What security precautions would you take for system users vs. human users?

Ans: 
   1) I would consider giving minimum or access based on purpose. depending on the users use case we have to differiate the groups and assign the user to approriate group.
   2) Integrate LDAP/AD will make this more easier from organisational standpoint for more secured access controls
   3) All manual changes should be blocked from aws security stand point and we should only use IAAC
