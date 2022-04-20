#docker run -v app.py:/app/app.py -P dstndstn/proxy-test

#docker build -t dstndstn/proxy-test .
#docker run -p 3000:3000 dstndstn/proxy-test

# kill all docker containers:
# docker kill $(docker ps -q)

FROM ubuntu:20.04

SHELL ["/bin/bash", "-c"]
WORKDIR /app

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && \
    apt upgrade -y
RUN apt install -y build-essential python3 python3-distutils python3-dev curl wget \
    iputils-ping iotop dnsutils \
    python3-pip

RUN pip3 install flask uwsgi

ENTRYPOINT ["/app/run.sh"]
#CMD ["/app/run.sh"]
EXPOSE 3000

COPY run.sh myapp.py /app/
