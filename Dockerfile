
FROM node:20.14.0-alpine3.20

RUN mkdir -p /home/app

COPY app/* /home/app

WORKDIR /home/app

EXPOSE 3000

RUN npm install && npm test 

CMD ["node","server.js"]


