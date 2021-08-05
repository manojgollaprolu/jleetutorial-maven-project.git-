FROM tomcat

MAINTAINER 030394

RUN apt-get update && apt-get -y upgrade

WORKDIR /usr/local/tomcat

COPY ./webapp/target/*.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD [“catalina.sh”, “run”]
