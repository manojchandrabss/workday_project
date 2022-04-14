FROM node
EXPOSE 8080

WORKDIR /wd/fakeapp

COPY package.json /wd/fakeapp/
COPY package-lock.json /wd/fakeapp/

RUN npm install --no-optional && npm cache clean --force &&\
    npm install express

COPY . /wd/fakeapp

CMD ["node", "index.js"]
