FROM node:21-alpine3.19
WORKDIR /usr/src/app
COPY package*.json ./

RUN npm install -g pnpm
RUN pnpm install

COPY . .

EXPOSE 3004