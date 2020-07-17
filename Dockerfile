FROM node:14

WORKDIR /app

COPY package*.json ./
RUN npm install --production

COPY . .

EXPOSE 3000
CMD [ "node", "server.js", "--dbs.redis=redis://redis:6379", "--api.host=0.0.0.0" ]