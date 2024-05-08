FROM maven:3.6.3-openjdk-14-slim AS build
RUN mkdir -p /workspace
WORKDIR /workspace
COPY pom.xml /workspace
COPY src /workspace/src
RUN mvn package

FROM openjdk:14-slim
COPY --from=build /workspace/target/*jar-with-dependencies.jar app.jar
EXPOSE 6379
ENTRYPOINT ["java","-jar","/app.jar"]
CMD ["sh", "-c", "echo $0"]