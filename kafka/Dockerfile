FROM anoopnair/hadoop_base_alpine
MAINTAINER Anoop Nair<anoopnair.it@gmail.com>

LABEL description="Build kafka 0.9.0.1 image, cloned from https://hub.docker.com/r/wurstmeister/kafka/"

ENV SCALA_VERSION 2.10
ENV KAFKA_VERSION 0.9.0.1
ENV KAFKA_HOME /opt/kafka_$SCALA_VERSION-$KAFKA_VERSION

# Install Kafka
RUN wget -O  - http://apache.mirrors.spacedump.net/kafka/$KAFKA_VERSION/kafka_$SCALA_VERSION-$KAFKA_VERSION.tgz | tar -xzf - -C /opt 

VOLUME ["/kafka"]

ADD start-kafka.sh /usr/bin/start-kafka.sh
ADD broker-list.sh /usr/bin/broker-list.sh
ADD create-topics.sh /usr/bin/create-topics.sh

WORKDIR $KAFKA_HOME/bin
CMD /usr/bin/start-kafka.sh
