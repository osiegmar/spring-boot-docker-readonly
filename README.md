# Spring Boot application in read-only docker container 

Example project for Spring Boot application running inside a read-only docker container.

See https://github.com/spring-projects/spring-boot/issues/8578 for background information.


## Steps to build and run this application

```sh
./gradlew build
docker build -t spring-boot-docker-readonly .
docker run -ti --rm --read-only spring-boot-docker-readonly
```
