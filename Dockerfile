FROM openjdk:8u171-jre-alpine3.8
RUN mkdir /usr/src && mkdir /usr/src/app
COPY . /usr/src/app
WORKDIR /usr/src/app
EXPOSE 12345
ENTRYPOINT ["java", "-cp", "log4j-core-2.8.2.jar:log4j-api-2.8.2.jar:jcommander-1.48.jar", "org.apache.logging.log4j.core.net.server.TcpSocketServer", "-p", "12345", "-c"]
