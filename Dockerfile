FROM ubuntu:14.04
MAINTAINER  frank@dspeed.eu

VOLUME ["/var/cache/apt-cacher-ng"]
RUN apt-get update && apt-get install -y apt-cacher-ng

EXPOSE 3142
CMD chmod 777 /var/cache/apt-cacher-ng && /etc/init.d/apt-cacher-ng start && tail -f /var/log/apt-cacher-ng/*
