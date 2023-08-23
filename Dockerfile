# Use an official OpenJDK image that includes the JDK
FROM openjdk:11-jdk-slim

# Set the working directory to /app
WORKDIR /app

# Copy the Gradle Wrapper files into the container at /app
COPY gradlew .
COPY gradle gradle

# Copy the rest of your application code
COPY . .

# Run the Gradle build
RUN chmod +x gradlew && ./gradlew build

# Specify the command to run your application (if applicable)
CMD ["java", "-jar", "your-application.jar"]

