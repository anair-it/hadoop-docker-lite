FROM debian:8.3
MAINTAINER Anoop Nair<anoopnair.it@gmail.com>

RUN apt-get update && \
    apt-get install -y git curl wget ca-certificates sudo openssh-server openssh-client rsync supervisor openjdk-7-jdk

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64/
ENV PATH $JAVA_HOME/bin:$PATH
