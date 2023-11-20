# Use an appropriate version of the OpenJDK as the base image
FROM openjdk:11-jre-slim

# Expose the port that your Spring Boot application listens on (usually 8080)
EXPOSE 8080

# Copy the Spring Boot application JAR/WAR file into the container
ADD target/TODOApp.war /app/TODOApp.war

# Set the working directory inside the container
WORKDIR /app

# Define the command to run the Spring Boot application
CMD ["java", "-jar", "TODOApp.war"]
