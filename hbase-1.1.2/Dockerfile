FROM anair/hadoop_base
MAINTAINER anair

LABEL description="Build docker hbase 1.1.2 image"

ENV HBASE_VERSION 1.1.2

# Download and Install HBase

RUN wget -q http://archive.apache.org/dist/hbase/1.1.2/hbase-$HBASE_VERSION-bin.tar.gz && \
   tar xzf hbase-$HBASE_VERSION-bin.tar.gz -C /opt/ && \
   ln -s /opt/hbase-$HBASE_VERSION /opt/hbase && \
   rm hbase-$HBASE_VERSION-bin.tar.gz

ADD hbase-site.xml /opt/hbase/conf/hbase-site.xml
ADD start-hbase.sh /opt/hbase/bin/start-hbase.sh
RUN chmod a+x /opt/hbase/bin/start-hbase.sh

RUN mkdir /opt/hbase/data
RUN mkdir /opt/hbase/logs

VOLUME /opt/hbase/data
VOLUME /opt/hbase/logs

# HBase Master API port
EXPOSE 60000
# HBase Master Web UI
EXPOSE 60010
# Regionserver API port
EXPOSE 60020
# HBase Regionserver web UI
EXPOSE 60030

WORKDIR /opt/hbase/bin

ENV PATH=$PATH:/opt/hbase/bin

CMD start-hbase.sh
