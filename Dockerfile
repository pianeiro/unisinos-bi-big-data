FROM ubuntu:18.04
RUN apt update
RUN apt install lsb-release openjdk-8-jdk libwebkitgtk-1.0-0 libcanberra-gtk-module -y && \
    update-alternatives --config java && \
    apt install default-jre -y
RUN rm -rf /var/lib/apt/list/*
RUN mkdir -p workdir/pdi workdir/src
WORKDIR /workdir
CMD sh pdi/data-integration/spoon.sh