# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy the website files to the Nginx server directory
COPY ./index.html /usr/share/nginx/html/
COPY ./styles.css /usr/share/nginx/html/
COPY ./scripts.js /usr/share/nginx/html/

# Expose port 80 to the outside world
EXPOSE 80

# The default command for the Nginx image is to start the server
CMD ["nginx", "-g", "daemon off;"]
