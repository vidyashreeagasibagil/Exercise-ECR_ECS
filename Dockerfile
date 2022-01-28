FROM maven:3-jdk-11-alpine AS build
WORKDIR /opt/app
COPY ./ /opt/app
RUN mvn clean install -DskipTests
FROM openjdk:11
COPY --from=build /opt/app/target/springboot.jar springboot.jar
EXPOSE 8096
ENTRYPOINT ["java","-jar","springboot.jar"] 
