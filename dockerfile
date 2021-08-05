FROM tomcat:8.0-alpine

LABEL maintainer=”deepak@softwareyoga.com”

COPY ./webapp/target/*.war /usr/local/tomcat/webapps/

CMD [“catalina.sh”, “run”]
