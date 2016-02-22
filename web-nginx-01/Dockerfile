FROM ubuntu

MAINTAINER fabrice

RUN apt-get -y update
RUN apt-get -y install wget
RUN apt-get -y install nginx

#ENV HOSTVIRTUAL=web-nginx-01
ENV HOSTNAME=web-nginx-01
ENV TERM=xterm-color

ADD script.sh /usr/bin/script.sh
RUN chmod +x /usr/bin/script.sh

EXPOSE 80

CMD ["script.sh"]

