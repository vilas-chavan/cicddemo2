FROM centos:latest
MAINTAINER vilas.chavan80@gmail.com
RUN yum -y update && \
    yum -y install httpd && \
    zip && \
    unzip

COPY index.html /var/www/html/

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

EXPOSE 80
