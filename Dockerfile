FROM composer:latest

LABEL version="1.0.0"
LABEL repository="https://github.com/graychen/phpunit"
LABEL homepage="https://github.com/graychen/phpunit"
LABEL maintainer="graychen <455803034@qq.com>"

RUN composer global require --no-progress phpunit/phpunit ^8.0
COPY entrypoint /usr/local/bin/entrypoint
RUN chmod +x /usr/local/bin/entrypoint
ENTRYPOINT ["/usr/local/bin/entrypoint"]
