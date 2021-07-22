FROM node:lts-alpine
RUN npm install -g http-server
WORKDIR /app/sidenav
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
COPY --from=builder /usr/src/app/dist /var/www
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 9002

ENTRYPOINT ["nginx","-g","daemon off;"]
