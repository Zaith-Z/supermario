FROM nginxinc/nginx-unprivileged:1.27-alpine

LABEL maintainer="github.com/Zaith-Z"

COPY ./webapp /usr/share/nginx/html/normal

COPY ./proudapp  /usr/share/nginx/html/pride

COPY ./configs/normal.conf /etc/nginx/normal.conf

COPY ./configs/pride.conf  /etc/nginx/pride.conf

EXPOSE 8080
