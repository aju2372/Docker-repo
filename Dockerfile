FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y && \
    apt-get install -y \
    git \
    ansible \
    vim \
    python3-boto3

RUN useradd -m azmat

WORKDIR /home/azmat/

USER azmat



