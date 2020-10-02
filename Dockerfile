FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

RUN echo "tzdata tzdata/Areas select America" > /tmp/preseed.txt; \
    echo "tzdata tzdata/Zones/America select Chicago" >> /tmp/preseed.txt; \
    debconf-set-selections /tmp/preseed.txt && \
    rm -f /etc/timezone /etc/localtime && \
    apt-get update && \
    apt-get install -y tzdata

RUN apt install wget git kpartx rsync cron libtool libiniparser-dev libspeexdsp-dev libasound2-dev libdbus-1-dev libsbc-dev libudev-dev ladspa-sdk cargo build-essential bc gcc-8 -y
RUN ln -fs gcc-8 /usr/bin/gcc
#ADD  /usr/src
#RUN rm -rf /usr/src/*
#RUN rm -rf /usr/src/*.*
#RUN git clone https://github.com/mrwhistles/chromebook_kernel_build.git /usr/src/
#WORKDIR /usr/src/
#RUN bash download-chromium-kernel.sh
#CMD bash compile-chromium-kernel-deb.sh ; \
#    sleep 1000000


