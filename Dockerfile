FROM dagman62/apache
USER root

ENV PHP_ADMIN 4.8.0.1-all-languages
ENV HTTP_PREFIX /usr/local/apache
ENV TMP_DIR /tmp

# install dependancies for apr, httpd, and php7

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
  wget \
  && rm -rf /var/lib/apt/lists/* 


#  grab phpMyAdmin and extract to http context

RUN wget --no-check-certificate https://files.phpmyadmin.net/phpMyAdmin/4.8.0.1/phpMyAdmin-${PHP_ADMIN}.tar.gz \
  && tar -zxvf phpMyAdmin-${PHP_ADMIN}.tar.gz \
  && rm -f phpMyAdmin-${PHP_ADMIN}.tar.gz \
  && mv -f phpMyAdmin-${PHP_ADMIN} ${HTTP_PREFIX}/htdocs/phpmyadmin

# cleanup packages that are not needed anymore

RUN apt-get purge -y --auto-remove \
  wget \
  && rm -rf /var/tmp/* \
  && rm -rf /tmp/*

COPY config.inc.php ${HTTP_PREFIX}/htdocs/phpmyadmin
