Project 1:
==========

Wd Fake APP:

steps to build the above docker compose please follow below steps

npm init -y #to initialise package.json
create index.js file
clone the repo and run below command
docker-compose up --build

Questions:

1) How would you test this application?

Ans: clone the repo, cd to source directory fake_app

docker build -t fakeapp/test:v1 .
docker run -d -p 8080:8080 fakeapp/test:v1
curl http://localhost:8080

2) How would you deploy this application

Ans: docker-compose up --build

3) How would you manage configurations for secrets

Ans: we can use secret management tools like vault, aws secret manager and integrate with ur node code to get the password parameters. And even docker-compose we can use secret.yml and add our passowrd arguments and add the ignore files to .gitignore

====================================================================
