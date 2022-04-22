FROM tomcat:jre8-openjdk-slim-buster

MAINTAINER 030394

RUN apt-get update && apt-get -y upgrade

EXPOSE 8080

COPY ./webapp/target/*war %CATALINA_HOME%\webapps

CMD ["catalina.sh", "run"]
