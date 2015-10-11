FROM debian:jessie

COPY . /var/www/lab.emmanuelgautier.fr

RUN getent group www-data || groupadd -r www-data \
  && id -u www-data &>/dev/null || useradd -r -g www-data www-data

RUN mkdir -p /var/www \
  && chown -R www-data:www-data /var/www/lab.emmanuelgautier.fr

VOLUME /var/www/lab.emmanuelgautier.fr
