# Use a small, fast web server
FROM nginx:alpine

# Copy your static site content into Nginx's default directory
COPY . /usr/share/nginx/html

# Optional: remove default Nginx index file
RUN rm -f /usr/share/nginx/html/index.html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Nginx runs automatically as the container entrypoint
