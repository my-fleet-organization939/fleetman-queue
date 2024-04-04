FROM openjdk:8u131-jre

USER root


RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    tar \
    wget 

MAINTAINER Richard Chesterwood "richard@inceptiontraining.co.uk"

RUN wget -O   activemq.tar.gz http://archive.apache.org/dist/activemq/5.14.3/apache-activemq-5.14.3-bin.tar.gz

RUN tar -xvf activemq.tar.gz

CMD ["apache-activemq-5.14.3/bin/activemq", "console"]

