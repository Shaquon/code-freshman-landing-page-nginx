FROM nginx:alpine

COPY site /usr/share/nginx/html

FROM node:17-alpine

WORKDIR /app

COPY ./src/package.json .

RUN npm install

COPY . .

EXPOSE 5173

CMD ["npm", "run", "dev"]






