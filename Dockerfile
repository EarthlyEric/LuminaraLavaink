FROM openjdk:17

ENV LAVALINK_SERVER_PASSWORD null

WORKDIR /opt/Lavalink

COPY lavalink-4.0.4.jar lavalink-4.0.4.jar
COPY application.yml application.yml

EXPOSE 443
ENTRYPOINT ["java","-Djdk.tls.client.protocols=TLSv1.1,TLSv1.2","-jar","lavalink-4.0.4.jar"]