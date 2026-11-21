FROM eclipse-temurin:21-jre

LABEL org.opencontainers.image.source="https://github.com/pulsaride/cdl-lang" \
      org.opencontainers.image.licenses="Apache-2.0"

WORKDIR /app

COPY build/libs/cdl-0.7.0.jar /app/cdl.jar

ENTRYPOINT ["java", "-jar", "/app/cdl.jar"]
