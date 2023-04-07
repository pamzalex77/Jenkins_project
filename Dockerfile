# Use an official Ubuntu runtime as a parent image
FROM ubuntu:latest

# Set the working directory to /app
WORKDIR /app

# Install Apache and PHP
RUN apt-get update && apt-get install -y apache2 php

# Copy the index.html file into the container at /app
COPY index.html /app

# Expose port 80 to the outside world
EXPOSE 80

# Define the command to start Apache and serve the index.html file
CMD ["apache2ctl", "-D", "FOREGROUND"]
