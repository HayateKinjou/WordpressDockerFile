FROM wordpress:5.4.2-php7.4-apache
RUN pecl install xdebug \
  && docker-php-ext-enable xdebug
WORKDIR /var/www/html

# 言語を変更できるようにする。
RUN echo "define('FS_METHOD', 'direct');" >> /usr/src/wordpress/wp-settings.php
RUN tac /usr/local/bin/docker-entrypoint.sh | sed '2i chown www-data /var/www/html/wp-content/' | tac > /usr/local/bin/docker-entrypoint.sh
