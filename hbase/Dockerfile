FROM anoopnair/hadoop_base_alpine
MAINTAINER Anoop Nair<anoopnair.it@gmail.com>

LABEL description="Build docker hbase 1.1.2 and Phoenix 4.7.0 image"

ENV HBASE_VERSION 1.1.2
ENV HBASE_ROOT_VERSION 1.1
ENV PHOENIX_VERSION 4.7.0

# Download and Install HBase

RUN wget -q http://archive.apache.org/dist/hbase/1.1.2/hbase-$HBASE_VERSION-bin.tar.gz && \
   tar xzf hbase-$HBASE_VERSION-bin.tar.gz -C /opt/ && \
   ln -s /opt/hbase-$HBASE_VERSION /opt/hbase && \
   rm hbase-$HBASE_VERSION-bin.tar.gz

# Download and Install Phoenix
RUN wget -q http://mirror.symnds.com/software/Apache/phoenix/phoenix-$PHOENIX_VERSION-HBase-$HBASE_ROOT_VERSION/bin/phoenix-$PHOENIX_VERSION-HBase-$HBASE_ROOT_VERSION-bin.tar.gz && \
   tar xzf phoenix-$PHOENIX_VERSION-HBase-$HBASE_ROOT_VERSION-bin.tar.gz -C /opt/hbase/lib && \
   rm phoenix-$PHOENIX_VERSION-HBase-$HBASE_ROOT_VERSION-bin.tar.gz && \ 
   cp /opt/hbase/lib/phoenix-$PHOENIX_VERSION-HBase-$HBASE_ROOT_VERSION-bin/phoenix-$PHOENIX_VERSION-HBase-$HBASE_ROOT_VERSION-server.jar /opt/hbase/lib

ADD hbase-site.xml /opt/hbase/conf/hbase-site.xml
ADD start-hbase.sh /opt/hbase/bin/start-hbase.sh
RUN chmod a+x /opt/hbase/bin/start-hbase.sh

RUN mkdir /opt/hbase/data
RUN mkdir /opt/hbase/logs

VOLUME /opt/hbase/data
VOLUME /opt/hbase/logs

ENV PATH=$PATH:/opt/hbase/bin

# HBase Master API port
EXPOSE 60000
# HBase Master Web UI
EXPOSE 60010
# Regionserver API port
EXPOSE 60020
# HBase Regionserver web UI
EXPOSE 60030
# HBase Rest server
EXPOSE 8070
# HBase Rest server web UI
EXPOSE 8090

WORKDIR /opt/hbase/bin

CMD start-hbase.sh
