FROM node:22-alpine
WORKDIR /app
COPY package.json /app
RUN npm install
COPY app.js /app
EXPOSE 3000
ENTRYPOINT ["node", "app.js"]