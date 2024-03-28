FROM ubuntu
MAINTAINER "Sachin Yadav"
LABEL email="sachin@hitachi-systems.com
RUN apt-get update -y && apt-get install apache2 curl wget vim net-tools zip unzip -y
RUN mkdir /data 
WORKDIR /data
RUN git clone https://github.com/sachin78y/apache-zip.git
RUN cd apache-zip && unzip Neogym.zip
RUN cp -r  neogym-html/* /var/www/html/
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
 






