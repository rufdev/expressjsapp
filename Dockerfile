FROM node:lts-alpine as builder

WORKDIR /usr/src/app

ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}

# RUN apk --no-cache add python make g++
COPY package*.json ./
# RUN npm install -g nodemon
RUN npm ci

COPY . .

EXPOSE 3000

CMD [ "npm","run", "start" ]