FROM maven:3.8.4-openjdk-11 AS b
FROM openjdk:11
EXPOSE 8082
COPY --from=build /app/target/DevOps_Project-1.0.jar DevOps_Project-1.0.jar
ENTRYPOINT ["java", "-jar", "/DevOps_Project-1.0.jar"]
