{% if cookiecutter.open_source_license == 'Git clone+Java (maven)' %}
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
{% endif %}
