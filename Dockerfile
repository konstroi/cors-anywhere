FROM node:10.11-alpine

WORKDIR /app
COPY package*.json /app
RUN npm install
COPY ./ /app/

EXPOSE 8080

CMD [ "node", "/app/server.js" ]
