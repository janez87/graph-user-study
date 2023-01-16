FROM neo4j:latest

WORKDIR /

COPY load.sh /load.sh
RUN chmod +x /load.sh

ENV EXTENSION_SCRIPT=load.sh