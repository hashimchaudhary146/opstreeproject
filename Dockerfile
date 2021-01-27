FROM centos:latest
MAINTAINER hashimchaudhary146@gmail.com
RUN yum install nginx -y \
zip \
unzip 
ADD  https://www.free-css.com/assets/files/free-css-templates/download/page262/besloor.zip /var/www/html
WORKDIR /var/www/html
RUN unzip besloor.zip
RUN cp -rvf besloor/* .
RUN rm -rf besloor.zip besloor
CMD ["nginx", "-g", "daemon off;"]
EXPOSE 8080 

