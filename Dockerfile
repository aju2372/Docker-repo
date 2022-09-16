FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y && \
    apt-get install -y \
    git \
    ansible \
    vim \
    python-is-python3 \
    python3-pip

RUN pip3 install botocore boto3 boto


#RUN useradd -m azmat && \
 RUN mkdir /home/jenkins

WORKDIR /home/jenkins

#USER azmat



