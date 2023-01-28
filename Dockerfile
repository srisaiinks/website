FROM nginx:alpine
COPY ./nginx/default.conf /etc/nginx/conf.d
COPY ./www.conf /etc/php81/php-fpm.d/
COPY ./ /var/www/html/
RUN apk add --update --no-cache php81 php81-fpm php81-mbstring php81-pecl-apcu php81-opcache php81-curl php81-dom php81-gd php81-openssl php81-xml php81-zip php81-session
RUN chown -R nginx:nginx /var/www/html/

EXPOSE 80

CMD /usr/sbin/php-fpm81;nginx -g "daemon off;"