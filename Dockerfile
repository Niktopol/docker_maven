FROM maven
WORKDIR /build
COPY pom.xml .
COPY src ./src
RUN mvn install -DskipTests
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "target/demo-0.0.1-SNAPSHOT.jar" ]