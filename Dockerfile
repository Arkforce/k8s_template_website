# Use the official Ubuntu image from the Docker Hub
FROM ubuntu:latest

# Install Nginx
RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Create a directory for the website
RUN mkdir -p /var/www/html

# Copy index.html from the local directory to the container
COPY index.html /var/www/html/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
