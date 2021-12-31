FROM node:current-alpine
ENV USER_ID=1001
USER root
WORKDIR /usr/src/app
COPY source/ ./
USER ${USER_ID}
EXPOSE 8080
CMD ["node", "server.js"]