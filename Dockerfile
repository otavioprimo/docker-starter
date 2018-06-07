FROM node:carbon

RUN mkdir /src

WORKDIR /src
ADD package*.json /src/package.json
RUN npm install

EXPOSE 3000

CMD [ "npm","run","dev" ]