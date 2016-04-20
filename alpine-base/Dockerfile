FROM alpine
MAINTAINER anair

RUN apk --update add bash git wget ca-certificates sudo openssh rsync openjdk7 && \
  rm -rf /var/cache/apk/* && \
  rm -rf /opt  && \
  mkdir -p /opt 

ENV JAVA_HOME /usr/lib/jvm/java-1.7-openjdk
ENV PATH $JAVA_HOME/bin:$PATH
