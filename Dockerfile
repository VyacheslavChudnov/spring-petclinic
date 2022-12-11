FROM alpine:latest
RUN apk update && \
    apk upgrade 
RUN apk add openjdk11
ADD target/spring-petclinic-2.7.0-SNAPSHOT.jar spring-petclinic-2.7.0-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "spring-petclinic-2.7.0-SNAPSHOT.jar"]