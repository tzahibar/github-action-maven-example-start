# Use the official Maven image as the base image
FROM maven:3.6.3-jdk-11

# Install OpenJDK
RUN apt-get update && \
    apt-get install -y openjdk-11-jdk && \
    apt-get clean;

# Set the working directory
WORKDIR /app

# Copy the entrypoint script into the container
COPY entrypoint.sh /entrypoint.sh

# Grant execute permissions to the entrypoint script
RUN chmod +x /entrypoint.sh

# Set the entrypoint for the container
ENTRYPOINT ["/entrypoint.sh"]
