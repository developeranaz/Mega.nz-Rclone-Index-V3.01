FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
RUN DEBIAN_FRONTEND=noninteractive
RUN apt update -y
RUN apt install unzip curl wget -y
COPY quota-bypass /quota-bypass
COPY entrypoint.sh /entrypoint.sh 
RUN chmod +x /entrypoint.sh
RUN chmod +x /quota-bypass/*
CMD /entrypoint.sh
