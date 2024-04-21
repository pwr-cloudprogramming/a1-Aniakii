FROM node:latest

WORKDIR /app

COPY ./src/package*.json .

COPY ./ip.sh /ip.sh
RUN chmod +x /ip.sh

RUN npm install

COPY ./src/. .

CMD ["node", "./server.js"]
