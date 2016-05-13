FROM anoopnair/storm_debian:0.10.0
MAINTAINER Anoop Nair<anoopnair.it@gmail.com>

LABEL description="Docker Storm UI image"

RUN /usr/bin/config-supervisord.sh ui

EXPOSE 8080
CMD /usr/bin/start-supervisor.sh

