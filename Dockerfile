FROM maven:3.8.4-openjdk-11
FROM openjdk:11
EXPOSE 8082
COPY target/DevOps_Project-1.0.jar DevOps_Project-1.0.jar
ENTRYPOINT ["java", "-jar", "/DevOps_Project-1.0.jar"]
