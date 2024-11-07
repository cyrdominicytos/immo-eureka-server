# Étape de build
FROM maven:3.9.8-eclipse-temurin-21-alpine AS build
WORKDIR /home/immo/immo-eureka-server
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Étape de run
FROM eclipse-temurin:21-alpine
WORKDIR /app
COPY --from=build /home/immo/immo-eureka-server/target/*.jar /app/immo-eureka-server.jar

EXPOSE 8761
ENTRYPOINT ["java","-jar","immo-eureka-server.jar"]
