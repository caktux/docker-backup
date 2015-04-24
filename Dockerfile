# http://docs.docker.com/reference/builder
# docker backup image (boombatower/docker-backup).

FROM ubuntu:utopic
MAINTAINER Jimmy Berry <jimmy@boombatower.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -q -y xz-utils

ADD backup.sh /root/bin/

VOLUME /backup
ENTRYPOINT ["/root/bin/backup.sh"]
CMD ["backup"]
