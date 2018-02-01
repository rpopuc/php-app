FROM rpopuc/php-nginx:7.2-alpine

COPY ./src/ /var/www/

RUN chown -R www-data /var/www/storage
RUN chown -R www-data /var/www/bootstrap/cache

# COPY ./config/nginx.conf /etc/nginx/nginx.conf
# COPY ./config/fpm-pool.conf /etc/php7/php-fpm.d/zzz_custom.conf
# COPY ./config/php.ini /etc/php7/conf.d/zzz_custom.ini
# COPY ./config/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]