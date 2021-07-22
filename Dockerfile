FROM node:carbon-alpine as builder
RUN npm install -g http-server
WORKDIR /app/sidenav
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

FROM nginx:alpine
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY --from=builder /app/dist .
EXPOSE 9002
ENTRYPOINT ["nginx", "-g", "daemon off;"]
