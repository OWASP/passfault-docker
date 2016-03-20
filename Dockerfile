FROM jetty
MAINTAINER Cam Morris <cam.morris@owasp.org>
ARG VERSION=0.8
ENV PASSFAULT_USER=jetty
ADD https://github.com/c-a-m/passfault/releases/download/v${VERSION}/passfault-jsonService-${VERSION}.war /tmp/passfault.war
RUN mkdir ${JETTY_BASE}/webapps/ROOT && \
    unzip /tmp/passfault.war -d ${JETTY_BASE}/webapps/ROOT && \
    chown -R $PASSFAULT_USER ${JETTY_BASE}/webapps/ROOT && \
    rm /tmp/passfault.war
