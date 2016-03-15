FROM ubuntu:trusty
MAINTAINER ArubIslander <arubislander@zonnet.nl>

COPY madsonic_install.sh /tmp/
RUN  /bin/bash /tmp/madsonic_install.sh && rm /tmp/madsonic_install.sh

EXPOSE 4040

CMD  service madsonic start && sleep 30 && tail -F /var/madsonic/madsonic.log
