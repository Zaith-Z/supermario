FROM nginx:1.27-alpine

LABEL maintainer="github.com/Zaith-Z"

RUN rm -rf /usr/share/nginx/html/* \
    && chown -R nginx:nginx /usr/share/nginx/html /var/cache/nginx /var/run

COPY webapp/ /usr/share/nginx/html/

EXPOSE 80

USER nginx