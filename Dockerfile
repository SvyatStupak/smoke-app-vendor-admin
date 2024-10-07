FROM node:18-alpine

ARG VITE_BACKEND_URL

ENV VITE_BACKEND_URL=$VITE_BACKEND_URL

WORKDIR /app

COPY package*.json yarn.lock ./

RUN yarn install

COPY . .

EXPOSE 7002

CMD ["yarn", "dev", "--port", "7002", "--host"]
