FROM openjdk:11
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} /app/   # Copy to a directory instead of a file
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "/app/app.jar"]  # Adjust this if multiple JAR files

