# Use the official Nginx image as the base image
FROM nginx:alpine

# Install git to clone the repository
RUN apk add --no-cache git

# Set the working directory
WORKDIR /usr/share/nginx/html

# Clear the directory before cloning
RUN rm -rf /usr/share/nginx/html/*

# Clone the GitHub repository
RUN git clone https://github.com/sharf-shawon/circle-game.git .

# Remove the .git directory to reduce image size
RUN rm -rf .git

# Expose port 80 for the web server
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]