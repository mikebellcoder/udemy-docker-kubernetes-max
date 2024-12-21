FROM node:latest

WORKDIR /app

COPY package.json /app

RUN npm install

COPY public /app

COPY server.js /app

EXPOSE 80

CMD ["node", "server.js"]