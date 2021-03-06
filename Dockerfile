FROM pmakholm/perl6:unstable
MAINTAINER Peter Makholm <peter@makholm.net>

RUN rm /etc/apt/apt.conf.d/docker-no-languages && \
    apt-get update && apt-get install -y vim screen man
ADD dot.screenrc /root/.screenrc
ADD dot.vimrc /root/.vimrc

ENV HOME /root
ENV SHELL /bin/bash

CMD /bin/bash
WORKDIR /root
