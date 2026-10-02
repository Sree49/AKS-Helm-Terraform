FROM eclipse-temurin:17-jre-alpine

ENV APP_HOME=/usr/src/app

WORKDIR $APP_HOME

COPY app.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","app.jar"]
