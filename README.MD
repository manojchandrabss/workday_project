Project 1:
==========

Wd Fake APP:

steps to build the above docker compose please follow below steps

1) npm init -y #to initialise package.json
2) create index.js file
3) clone the repo and run below command
4) docker-compose up --build

Questions:

a) How would you test this application?

Ans: clone the repo, cd to source directory fake_app

1) docker build -t fakeapp/test:v1 .
2) docker run -d -p 8080:8080 fakeapp/test:v1
3) curl http://localhost:8080

b) How would you deploy this application

Ans: docker-compose up --build

c) How would you manage configurations for secrets

Ans: we can use secret management tools like vault, aws secret manager and integrate with ur node code to get the password parameters. 

      And even docker-compose we can use secret.yml and add our passowrd arguments and add the ignore files to .gitignore (only for local and dev env testing)

====================================================================
