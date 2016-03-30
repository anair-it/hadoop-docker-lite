FROM anair/hadoop_base

MAINTAINER anair

LABEL description="Build kafka 0.8.2 image"

ENV SCALA_VERSION 2.11
ENV KAFKA_VERSION 0.8.2.1
ENV KAFKA_HOME /opt/kafka_$SCALA_VERSION-$KAFKA_VERSION

# Install Kafka
RUN wget -q -O  - http://apache.mirrors.spacedump.net/kafka/$KAFKA_VERSION/kafka_$SCALA_VERSION-$KAFKA_VERSION.tgz | tar -xzf - -C /opt

VOLUME ["/kafka"]

ADD start-kafka.sh /usr/bin/start-kafka.sh
ADD broker-list.sh /usr/bin/broker-list.sh
ADD create-topics.sh /usr/bin/create-topics.sh

WORKDIR $KAFKA_HOME/bin
CMD /usr/bin/start-kafka.sh
