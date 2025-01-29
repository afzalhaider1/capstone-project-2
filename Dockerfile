FROM ubuntu
RUN  apt update && apt install apache2 -y
ADD index.html /var/www/html
ADD images/ /var/www/html/images
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]
