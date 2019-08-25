
FROM openjdk:8-jre

ENV SCALA_VERSION 2.12
ENV KAFKA_VERSION 2.3.0
ENV KAFKA_HOME /kafka
ENV KAFKA_BIN $KAFKA_HOME/bin
ENV PATH $PATH:$KAFKA_BIN

WORKDIR $KAFKA_HOME

RUN wget -q https://www-us.apache.org/dist/kafka/$KAFKA_VERSION/kafka_$SCALA_VERSION-$KAFKA_VERSION.tgz -O /tmp/kafka.tgz && \
    tar xfz /tmp/kafka.tgz --strip-components 1 && \
    rm /tmp/kafka.tgz

COPY server.properties $KAFKA_HOME/config

ENTRYPOINT $KAFKA_BIN/kafka-server-start.sh $KAFKA_HOME/config/server.properties --override advertised.listeners=$ADVERTISED_LISTENERS
