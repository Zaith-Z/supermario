FROM nginxinc/nginx-unprivileged:1.27-alpine

LABEL maintainer="github.com/Zaith-Z"

COPY webapp/ /usr/share/nginx/html/

EXPOSE 8080
