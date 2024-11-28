# Use CentOS as the base image
FROM centos:latest

# Install Apache HTTP Server
RUN yum -y update && \
    yum -y install httpd && \
    yum clean all

# Copy custom configuration files or web content (optional)
# Replace default index.html with your content
COPY ./public-html/ /var/www/html/

# Expose port 80
EXPOSE 80

# Start Apache HTTP server in the foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]