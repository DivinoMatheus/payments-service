FROM node:20.11-alpine

WORKDIR /app

COPY package.json /app/
COPY yarn.lock /app/

COPY node_modules /app/node_modules

COPY dist /app/dist
COPY envs /app/envs


CMD [ "yarn", "start:prod" ]