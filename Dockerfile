FROM node:18.18-alpine as build-stage

WORKDIR /app

COPY . .

RUN npm install
RUN npm run build

FROM nginx:stable-alpine as production-stage

COPY --from=build-stage /app/dist /usr/share/nginx/html
ADD nginx.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]