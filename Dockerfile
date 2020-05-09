FROM node:12

WORKDIR /usr/src/app

COPY ./capstone .

RUN npm install

EXPOSE 8080
CMD [ "node", "app.js" ]