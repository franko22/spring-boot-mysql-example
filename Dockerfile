FROM openjdk:16-alpine3.13
VOLUME /tmp
EXPOSE 8080
ADD /target/spring-boot-mysql-0.0.1-SNAPSHOT.jar spring-boot-mysql-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","spring-boot-mysql-0.0.1-SNAPSHOT.jar"]