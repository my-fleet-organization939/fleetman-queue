FROM openjdk:17.0.1-jdk-slim

USER root


RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    tar \
    wget 

MAINTAINER Richard Chesterwood "richard@inceptiontraining.co.uk"

RUN wget -O   activemq.tar.gz https://dlcdn.apache.org//activemq/6.1.0/apache-activemq-6.1.0-bin.tar.gz

RUN tar -xvf activemq.tar.gz

CMD ["apache-activemq-5.14.3/bin/activemq", "console"]

