FROM nginx:bookworm

RUN apt update && apt dist-upgrade -y
RUN apt-get install -y --no-install-recommends \ 
    git=1:2.39.2-* \ 
    composer=2.5.5-* \ 
    php=2:8.2* \
    php-cli=2:8.2* \
    php-opcache \
    php-mysql=2:8.2* \
    php-pgsql=2:8.2* \
    php-zip=2:8.2* \
    php-gd=2:8.2* \
    php-mbstring=2:8.2* \
    php-curl=2:8.2* \
    php-xml=2:8.2* \
    && apt-get clean && rm -rf /var/lib/apt/lists/* 


RUN git clone https://www.github.com/dbarzin/deming.git /var/www/deming
WORKDIR /var/www/deming

RUN cp deming.conf /etc/nginx/conf.d/default.conf
RUN mkdir -p storage/framework/views storage/framework/cache storage/framework/sessions bootstrap/cache
RUN composer install
RUN php artisan vendor:publish --all

RUN chown -R www-data:www-data /var/www/deming

ADD .env.my .env

COPY entrypoint.sh /opt/entrypoint.sh
RUN chmod u+x /opt/entrypoint.sh

EXPOSE 80

ENTRYPOINT "/opt/entrypoint.sh"
