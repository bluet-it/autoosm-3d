FROM openjdk:buster
RUN apt-get update
RUN apt-get install curl python -y
COPY osm2world osm2world
COPY run.sh run.sh
RUN chmod +x run.sh
VOLUME /data/input /data/output
CMD ./run.sh
