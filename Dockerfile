FROM ubuntu:trusty
MAINTAINER ArubIslander <arubislander@zonnet.nl>

COPY madsonic_install.sh /tmp/
RUN  /bin/bash /tmp/madsonic_install.sh && rm /tmp/madsonic_install.sh
EXPOSE 4040
VOLUME ["/var/media/artist", "/var/media/podcasts", "/var/media/movies", "/var/media/tv", "/var/media/pictures"]
CMD  service madsonic start && sleep 30 && tail -F /var/madsonic/madsonic.log
