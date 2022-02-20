FROM tomcat

MAINTAINER 030394

RUN apt-get update && apt-get -y upgrade

EXPOSE 8080
