FROM ubuntu

MAINTAINER fabrice

RUN apt-get -y update
RUN apt-get install -y nodejs
RUN apt-get install -y nodejs-legacy
RUN apt-get -y update
RUN apt-get install -y npm

RUN npm install -g express-generator

ENV HOSTNAME=DOCKER-micro-services-nodejs-01
ENV TERM=xterm-color

ADD script.sh /usr/bin/script.sh
RUN chmod +x /usr/bin/script.sh

CMD ["script.sh"]
