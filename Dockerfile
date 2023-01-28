FROM nginx:alpine
COPY ./nginx/default.conf /etc/nginx/conf.d
COPY ./ /var/www/html/
RUN apk add --update --no-cache php81 php81-fpm php81-mbstring php81-pecl-apcu php81-opcache

EXPOSE 80

CMD /usr/sbin/php-fpm81;nginx -g "daemon off;"