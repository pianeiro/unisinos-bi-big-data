FROM ubuntu:22.04
RUN apt update
RUN apt install wget unzip openjdk-8-jdk libwebkitgtk-6.0-4 -y && \
    update-alternatives --config java && \
    apt install default-jre -y
RUN rm -rf /var/lib/apt/list/*
RUN mkdir pdi && cd pdi && \
    wget https://privatefilesbucket-community-edition.s3.us-west-2.amazonaws.com/9.4.0.0-343/ce/client-tools/pdi-ce-9.4.0.0-343.zip && \
    unzip pdi-ce-9.4.0.0-343.zip
WORKDIR /pdi/data-integration
CMD sh spoon.sh