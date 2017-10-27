FROM node:8.8-alpine

RUN apk update
RUN apk add vim bash

COPY ./bashrc /root/.bashrc
RUN alias ll="ls -la"

WORKDIR /var/app
COPY ./app/package.json /var/app/package.json

RUN npm install

RUN npm install nodemon -g

EXPOSE 8080

CMD tail -f /dev/null

