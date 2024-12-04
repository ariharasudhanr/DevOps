#dockerfile
FROM ubuntu:latest
RUN apt-get update && apt-get install -y apache2 
WORKDIR /var/www/html
RUN cp -rvf index.html .
RUN rm -rf index.html
CMD ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
