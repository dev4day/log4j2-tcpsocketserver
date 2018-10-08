#log4j 2 TCP socket server#

##Using in docker-compose##

version: "3.2"
services:
  logger:
    image: rednik/log4j2-tcpsocketserver
    networks:
              - app_net
    deploy:
              replicas: 1
    volumes:
              - ./log/logger:/log
              - ./config:/config
    command: ["/config/log4j2.xml"]

Service will be available on port 12345.
