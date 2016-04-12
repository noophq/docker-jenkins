FROM jenkins:1.642.4

# Give jenkins user the rights to import java certs
USER root
RUN chmod a+w $JAVA_HOME/jre/lib/security/cacerts

ENV JENKINS_OPTS --httpsKeyStore=$JAVA_HOME/jre/lib/security/cacerts

USER ${user}
COPY jenkins.sh /usr/local/bin/jenkins.sh
