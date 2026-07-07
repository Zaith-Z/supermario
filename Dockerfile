FROM nginxinc/nginx-unprivileged:1.27-alpine

LABEL maintainer="github.com/Zaith-Z"

COPY webapp/ /usr/share/nginx/html/

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 8080
