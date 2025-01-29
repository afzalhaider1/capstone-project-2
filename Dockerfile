FROM ubuntu
RUN  apt update && apt install apache2 -y
ADD index.html /var/www/html
ADD .image/ /var/www/html/image
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]
