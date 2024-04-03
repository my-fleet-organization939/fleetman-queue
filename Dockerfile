FROM openjdk:8u131-jre

MAINTAINER Richard Chesterwood "richard@inceptiontraining.co.uk"

RUN wget --no-check-certificate -O apache-activemq-5.18.3-bin.zip  https://www.apache.org/dyn/closer.cgi?filename=/activemq/5.18.3/apache-activemq-5.18.3-bin.zip

RUN tar -xzf activemq.tar.gz

CMD ["apache-activemq-5.14.3/bin/activemq", "console"]
