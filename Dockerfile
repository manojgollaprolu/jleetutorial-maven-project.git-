FROM tomcat

MAINTAINER 030394

RUN apt-get update && apt-get -y upgrade

COPY ./webapp.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD [“catalina.sh”, “run”]
