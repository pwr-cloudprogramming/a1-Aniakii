FROM node:latest

WORKDIR /app

COPY ./src/package*.json .


RUN npm install

COPY ./src/* .


CMD ["node", "./server.js"]
