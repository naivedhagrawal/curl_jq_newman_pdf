# Use a base image with the latest version of Node.js and Debian
FROM node:latest

# Set environment variables for non-interactive installs
ENV DEBIAN_FRONTEND=noninteractive

# Update package list and install curl, jq, wkhtmltopdf, and dependencies for newman
RUN apt-get update && \
    apt-get install -y \
    curl \
    jq \
    wkhtmltopdf \
    && npm install -g newman \
    && rm -rf /var/lib/apt/lists/*

# Verify installations
RUN curl --version && \
    jq --version && \
    newman --version && \
    wkhtmltopdf --version

# Default command
CMD ["bash"]

