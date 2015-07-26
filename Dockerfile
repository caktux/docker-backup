FROM ubuntu:vivid
MAINTAINER caktux
# Based on boombatower/docker-backup

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -q -y xz-utils

ADD backup.sh /root/bin/

VOLUME /backup
ENTRYPOINT ["/root/bin/backup.sh"]
CMD ["backup"]
