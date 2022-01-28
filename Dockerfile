FROM openjdk:11
ADD target/springboot.jar springboot.jar
EXPOSE 8096
ENTRYPOINT ["java","-jar","springboot.jar"] 
