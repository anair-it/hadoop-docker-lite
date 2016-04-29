FROM anair/hadoop_debian:2.7.1
MAINTAINER anair

LABEL description="Install pig on hadoop 2.7.1 image."

ENV PIG_VERSION 0.15.0

RUN wget -q http://apache.osuosl.org/pig/pig-$PIG_VERSION/pig-$PIG_VERSION.tar.gz && \
   tar xzf pig-$PIG_VERSION.tar.gz -C /usr/local/  && \
   ln -s /usr/local/pig-$PIG_VERSION /usr/local/pig  && \
   rm pig-$PIG_VERSION.tar.gz

ENV PATH $PATH:/usr/local/pig/bin
