FROM openjdk:11-jdk
ARG MAVEN_VERSION=3.8.4
WORKDIR /opt/app
COPY ./ /opt/app
RUN mvn clean install -DskipTests
COPY --from=build /opt/app/target/springboot.jar springboot.jar
EXPOSE 8096
ENTRYPOINT ["java","-jar","springboot.jar"] 
