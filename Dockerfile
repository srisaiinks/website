FROM nginx:alpine
COPY ./nginx/default.conf /etc/nginx/conf.d
COPY ./ /var/www/html/
RUN apk add --update --no-cache php81 php81-fpm

EXPOSE 80

CMD /usr/sbin/php-fpm81;nginx -g "daemon off;"