FROM dockerhub.westernacher.com/wildfly9/modeshape4_4

COPY application-users.properties /opt/jboss/wildfly/standalone/configuration/application-users.properties
COPY application-roles.properties /opt/jboss/wildfly/standalone/configuration/application-roles.properties

CMD /opt/jboss/wildfly/bin/standalone.sh -c standalone-modeshape-ha.xml -b 0.0.0.0 -Djboss.socket.binding.port-offset=$NODE -Djboss.node.name=node$NODE
