FROM tomcat

MAINTAINER 030394

RUN apt-get update && apt-get -y upgrade

WORKDIR /usr/local/tomcat

COPY webapp.war /usr/local/tomcat/webapps/webapp.war

EXPOSE 8080

CMD [“catalina.sh”, “run”]
