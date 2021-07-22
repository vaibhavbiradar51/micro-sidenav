FROM node:carbon-alpine as builder
RUN npm install -g http-server
WORKDIR /app/sidenav
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
FROM nginx:1.15.2-alpine
COPY --from=builder /usr/src/ /var/www
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 9002

ENTRYPOINT ["nginx","-g","daemon off;"]
