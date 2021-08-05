FROM jboss/wildfly

COPY ./webapp/target/*.war /opt/jboss/wildfly/standalone/deployments/
docker run -p 8080:8080 -p 9990:9990 -it jboss/wildfly /opt/jboss/wildfly/bin/standalone.sh -b 0.0.0.0 -bmanagement 0.0.0.0

