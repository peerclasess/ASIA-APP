# Use CentOS as the base image
FROM centos:latest

# Copy custom configuration files or web content (optional)
# Replace default index.html with your content
COPY public-html /var/www/html/

# Expose port 80
EXPOSE 80

# Start Apache HTTP server in the foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]