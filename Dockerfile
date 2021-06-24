FROM centos
RUN yum -y update
RUN yum -y install httpd
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
COPY httpd.conf /etc/httpd/conf/
CMD httpd -DFOREGROUND
