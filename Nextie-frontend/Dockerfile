FROM node:12.7.0-alpine

WORKDIR /front

ENV PATH /front/node_modules/.bin:$PATH

COPY ./package.json /front
COPY ./yarn.lock /front

RUN npm install
RUN npm audit fix

RUN npm update

RUN npm install webpack-cli --save
RUN npm i -D webpack-cli
# RUN yarn upgrade

# RUN yarn add webpack
# RUN yarn add webpack-cli --save

CMD [ "npm", "run", "dev" ]