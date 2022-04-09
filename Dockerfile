FROM ubuntu

EXPOSE 8000

RUN apt-get update
RUN apt install -y nginx
RUN apt install -y mysql-server
RUN apt install -y php
RUN apt install -y php-fpm

COPY feedback.conf /etc/nginx/conf.d/

COPY script.sh /

CMD [ "./script.sh"]
