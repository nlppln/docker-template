{% if cookiecutter.docker_type == 'Git clone+Java (maven)' %}
FROM ubuntu:16.04

LABEL maintainer "{{ cookiecutter.email }}"

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
    build-essential \
    git \
    default-jre \
    default-jdk \
    maven \
    && apt-get autoremove \
		&& apt-get clean
WORKDIR /
RUN git clone https://github.com/impactcentre/ocrevalUAtion.git && cd ocrevalUAtion
WORKDIR /ocrevalUAtion
RUN mvn package
RUN chmod 644 /ocrevalUAtion/target/ocrevaluation.jar
CMD /bin/bash
{% elif cookiecutter.docker_type == 'Git clone+Python' %}
FROM ubuntu:16.04

LABEL maintainer "j.vanderzwaan@esciencecenter.nl"

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
    build-essential \
    git \
    python2.7 \
    python2.7-dev \
    python-pip \
    && apt-get autoremove \
		&& apt-get clean

WORKDIR /code
RUN git clone https://github.com/jvdzwaan/Release-TextDNA.git && cd Release-TextDNA && git checkout dataset-docker

WORKDIR /code/Release-TextDNA
RUN pip install -e .

CMD /bin/bash
{% elif cookiecutter.docker_type == 'Download jar' %}
FROM java:7

MAINTAINER "{{ cookiecutter.email }}"

ADD http://search.maven.org/remotecontent?filepath=eus/ixa/ixa-pipe-tok/1.8.5/ixa-pipe-tok-1.8.5-exec.jar /ixa-pipe-tok-exec.jar
RUN chmod 644 /ixa-pipe-tok-exec.jar

CMD /bin/bash
{% elif cookiecutter.docker_type == 'Pip install+script' %}
FROM python:3

LABEL maintainer "{{ cookiecutter.email }}"

ADD align.py /
RUN pip install click edlib>=1.1.2
{% endif %}
