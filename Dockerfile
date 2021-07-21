FROM node:lts-alpine
RUN npm install -g http-server
WORKDIR /app/sidenav
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run serve:standalone
RUN npm run build
EXPOSE 9002
CMD [ "http-server", "-p 9002", "dist" ]
