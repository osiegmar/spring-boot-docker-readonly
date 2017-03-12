FROM java:8u111-jre-alpine
COPY build/libs/spring-boot-docker-readonly-1.0.0-SNAPSHOT.jar /app.jar
RUN mkdir /tmp/tomcat static
EXPOSE 8080
CMD [ "java", "-jar", "/app.jar" ]
