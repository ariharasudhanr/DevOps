#dockerfile
FROM ubuntu:latest
RUN apt-get update && apt-get install -y apache2 zip unzip wget
WORKDIR /var/www/html
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page296/oxer.zip
RUN unzip oxer.zip
RUN cp -rvf oxer/* .
RUN rm -rf oxer oxer.zip
CMD ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
