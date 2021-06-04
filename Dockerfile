FROM debian:bullseye

RUN apt update 
RUN apt install -y apache2

ENV DEBIAN_FRONTEND=noninteractive

RUN apt install -y php

COPY . /var/www/html/

WORKDIR /var/www/html/

EXPOSE 80/tcp

CMD service apache2 start && bash