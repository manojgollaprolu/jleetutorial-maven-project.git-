FROM tomcat

MAINTAINER 030394

RUN apt-get update && apt-get -y upgrade

WORKDIR /usr/local/tomcat

COPY ./webapp/target/*.war /usr/local/tomcat/webapps/

COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml

EXPOSE 8080
