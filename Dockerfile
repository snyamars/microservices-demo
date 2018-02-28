FROM openjdk:8-jre-alpine

ENV SPRING_OUTPUT_ANSI_ENABLED=ALWAYS \
    JHIPSTER_SLEEP=0

WORKDIR .
# add directly the war
ADD ./target/microservice-demo-1.1.0.RELEASE.jar /microservice-demo-1.1.0.RELEASE.jar

VOLUME /tmp
EXPOSE 2222 3333
CMD echo "The application will start in ${JHIPSTER_SLEEP}s..." && \
        java -jar /microservice-demo-1.1.0.RELEASE.jar accounts
