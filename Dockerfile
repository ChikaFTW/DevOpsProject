FROM maven:3.8.4-openjdk-11 AS build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src/ /app/src/
RUN mvn package -DskipTests

FROM openjdk:11
EXPOSE 8082
COPY --from=build /app/target/DevOpsBackEnd.jar DevOpsBackEnd.jar
ENTRYPOINT ["java", "-jar", "/DevOpsBackEnd.jar"]
