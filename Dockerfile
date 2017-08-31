FROM fedora:22
MAINTAINER "Ed Seymour" <edwaado@gmail.com>

RUN dnf -y install rsync
ADD rsyncd.conf /etc/rsyncd.conf
ADD start.sh /start.sh
RUN chmod u+x /start.sh && chmod 664 /etc/rsyncd.conf
RUN useradd rsync

VOLUME ["/modules"] 

EXPOSE 8873

CMD ["/start.sh"]
