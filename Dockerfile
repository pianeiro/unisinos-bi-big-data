FROM ubuntu:22.04
RUN apt update
RUN apt install openjdk-8-jdk libwebkitgtk-6.0-4 -y && \
    update-alternatives --config java && \
    apt install default-jre -y
RUN rm -rf /var/lib/apt/list/*
RUN mkdir -p workdir/pdi workdir/src
WORKDIR /workdir
CMD sh pdi/data-integration/spoon.sh