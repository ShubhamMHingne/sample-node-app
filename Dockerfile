FROM registry.access.redhat.com/ubi8/nginx-118:1-31.1626836575
ENV USER_ID=1001
USER root
WORKDIR /usr/src/app
COPY source/ ./
USER ${USER_ID}
EXPOSE 8080
CMD ["node", "server.js"]