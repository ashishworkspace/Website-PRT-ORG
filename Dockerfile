# Use the official Apache HTTP Server image as base
FROM httpd:2.4

# Copy the index.html file to the container's web root directory
COPY index.html /usr/local/apache2/htdocs/

# Copy the img directory if it exists (since we see it in the repo)
COPY img/ /usr/local/apache2/htdocs/img/

# Apache listens on port 80 by default
EXPOSE 80
