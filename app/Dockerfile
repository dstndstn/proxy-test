FROM ubuntu:22.04

SHELL ["/bin/bash", "-c"]
WORKDIR /app

RUN DEBIAN_FRONTEND=noninteractive \
    apt update && \
    apt upgrade -y && \
    apt install -y build-essential python3 python3-distutils python3-dev curl wget \
    iputils-ping iotop dnsutils \
    python3-pip

RUN pip3 install flask

COPY run.sh /app/
ENTRYPOINT ["/app/run.sh"]
