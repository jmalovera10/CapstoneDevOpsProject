FROM node:12

WORKDIR /usr/src/app

COPY ./capstone .

RUN npm install

EXPOSE 80
CMD [ "node", "app.js" ]