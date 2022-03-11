FROM centos:latest
MAINTAINER vpal807@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page270/felicity.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip felicity.zip
RUN cp -rvf felicity/* .
RUN rm -rf felicity felicity.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
