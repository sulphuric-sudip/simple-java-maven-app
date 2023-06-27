# Use a image with Maven and Java installed
FROM maven

# Set the working directory inside the container
WORKDIR /app

# Copy the Maven project files
COPY pom.xml .
COPY src ./src

# Build the Maven project
RUN mvn clean package

# Set the entry point for the container
CMD ["java", "-cp", "target/classes", "com.mycompany.app.App"]
