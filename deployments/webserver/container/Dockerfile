FROM node:lts
EXPOSE 8080
COPY server.js .
RUN npm i prom-client
CMD node server.js