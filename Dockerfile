FROM tomcat:8.0

MAINTAINER 030394

RUN apt-get update && apt-get -y upgrade

WORKDIR /usr/local/tomcat

ADD webapp.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD [“catalina.sh”, “run”]
