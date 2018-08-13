FROM ubuntu:latest
MAINTAINER Mingxun Wang "mwang87@gmail.com"

RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential

RUN pip install flask
RUN pip install requests
RUN pip install requests-cache
RUN pip install gunicorn

RUN apt-get update -y

COPY . /app
WORKDIR /app