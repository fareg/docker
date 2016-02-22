FROM ubuntu

MAINTAINER fabrice

RUN apt-get -y update
RUN apt-get -y install wget
RUN apt-get -y install nginx

ADD script.sh /usr/bin/script.sh
RUN chmod +x /usr/bin/script.sh
RUN /usr/bin/script.sh

CMD ["script.sh"]

