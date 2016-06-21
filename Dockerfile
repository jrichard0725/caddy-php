FROM php:7-fpm
MAINTAINER Josh Richard <josh.richard1@gmail.com>

RUN ulimit -n 4096

COPY caddy /usr/bin/caddy

EXPOSE 80 2015

COPY Caddyfile /etc/Caddyfile
COPY index.php /var/www/html/

ENTRYPOINT ["/usr/bin/caddy"]
CMD ["--conf", "/etc/Caddyfile"]
