FROM projectomakase/server-jre-8:latest

MAINTAINER Richard Lucas <feedback@projectomakase.org>

ENV ACTIVEMQ_VERSION 5.11.1

EXPOSE 61616 8161

USER root

RUN mkdir /opt/activemq && chown omakase:omakase /opt/activemq

USER omakase

RUN \
    curl http://archive.apache.org/dist/activemq/$ACTIVEMQ_VERSION/apache-activemq-$ACTIVEMQ_VERSION-bin.tar.gz | tar zx && \
    cp -rf apache-activemq-$ACTIVEMQ_VERSION/* /opt/activemq && \
    rm -rf apache-activemq-$ACTIVEMQ_VERSION

CMD ["/bin/bash", "-c", "/opt/activemq/bin/activemq console"]