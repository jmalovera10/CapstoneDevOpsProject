FROM node:12

WORKDIR /usr/src/app

COPY ./capstone .

RUN npm install
RUN npm audit fix

EXPOSE 80
CMD [ "node", "app.js" ]