# Spring Boot application in read-only docker container 

Example project for Spring Boot application running inside a read-only docker container.

Basically these steps are currently required:

* Add `server.tomcat.basedir=/tmp/tomcat` to `application.properties`
* Create `/tmp/tomcat` and `static` within `Dockerfile`

See https://github.com/spring-projects/spring-boot/issues/8578 for background information.


## Steps to build and run this application

```sh
./gradlew build
docker build -t spring-boot-docker-readonly .
docker run -ti --rm --read-only spring-boot-docker-readonly
```

# Warning

Don't consider this as a recommended solution! It's a **ugly hack** - for demonstration purposes only!
