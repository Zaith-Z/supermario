FROM nginxinc/nginx-unprivileged:1.27-alpine

LABEL maintainer="github.com/Zaith-Z"

COPY webapp/ /usr/share/nginx/html/

COPY --chmod=755 entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 8080
