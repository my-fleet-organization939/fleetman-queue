FROM openjdk:8u131-jre

MAINTAINER Richard Chesterwood "richard@inceptiontraining.co.uk"

RUN curl -s https://archive.apache.org/dist/activemq/5.14.3/apache-activemq-5.14.3-bin.tar.gz | tar -xvz -C .


CMD ["apache-activemq-5.18.3/bin/activemq", "console"]
