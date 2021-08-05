FROM jboss/wildfly

COPY ./webapp/target/*.war /opt/jboss/wildfly/standalone/deployments/

