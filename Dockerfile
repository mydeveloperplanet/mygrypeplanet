# Fix: FROM eclipse-temurin:17.0.5_8-jre-alpine
# Vulnerable image: FROM eclipse-temurin:17.0.1_12-jre-alpine
FROM eclipse-temurin:17.0.1_12-jre-alpine
WORKDIR /opt/app
ARG JAR_FILE
COPY target/${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]