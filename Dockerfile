FROM alpine:3.3
MAINTAINER chelsea_nie

RUN apk add --update bash patch openjdk8 && rm -rf /var/cache/apk/*

ENV JAVA_HOME /usr/lib/jvm/default-jvm

COPY ./dubbo.tar.gz /tmp/
RUN mkdir -p /opt/dubbo/ && touch /opt/dubbo.out && tar zxvf /tmp/dubbo.tar.gz -C /opt/dubbo/

EXPOSE 20880 

WORKDIR /opt/dubbo

CMD ./start.sh
