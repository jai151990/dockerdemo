FROM ubuntu
MAINTAINER "siva"
RUN apt-get update
RUN apt-get install -y vim
RUN apt-get install -y nginx
COPY index.html /var/www/html
ENTRYPOINT service nginx start && /bin/bash
