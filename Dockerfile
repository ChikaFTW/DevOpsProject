FROM maven:3.8.4-openjdk-11 AS build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src/ /app/src/
RUN mvn package -DskipTests


FROM openjdk:11
EXPOSE 8082
COPY --from=build /app/target/DevOps_Project-1.0.jar DevOps_Project-1.0.jar
ENTRYPOINT ["java", "-jar", "/DevOps_Project-1.0.jar"]
