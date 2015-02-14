# cd /root/docker
# docker build .
# ubuntu 12.04
FROM 28a945b4333c
MAINTAINER Tim Daly <daly@axiom-developer.org>
RUN apt-get update
RUN apt-get install -y libxpm-dev gcc
ADD axiom-ubuntu-aug2014-bin.tgz /usr/local
ADD axiom /usr/local/bin
RUN chmod a+x /usr/local/bin/axiom

# when it completes then run
# docker ps -l
# 12345abcdef
# docker commit 12345abcdef daly/axiom
# docker login
# docker push daly/axiom
