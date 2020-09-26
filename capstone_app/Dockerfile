FROM node:12

WORKDIR /usr/src/app

COPY . .

RUN npm install
RUN npm audit fix

RUN EXPORT PORT=80

EXPOSE 80
CMD [ "npm", "start" ]
