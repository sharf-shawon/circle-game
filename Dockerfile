# Use the official Nginx image as the base image
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Clear the directory
RUN rm -rf /usr/share/nginx/html/*

# Copy the index.html file
COPY index.html .

# Expose port 80 for the web server
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
