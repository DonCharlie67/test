FROM centos:latest
RUN yum update -y
RUN yum install httpd -y
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]
