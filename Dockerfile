FROM node:14

WORKDIR /app

ENV NODE_ENV=production

COPY package*.json ./
RUN npm install --production

COPY . .

EXPOSE 3000
CMD [ "node", "server.js" ]