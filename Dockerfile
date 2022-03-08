FROM node:lts-alpine as builder



ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}

# RUN apk --no-cache add python make g++
COPY package*.json /usr/src/app/

RUN npm install

COPY . /usr/src/app/

EXPOSE 3000

CMD [ "npm","run","start" ]