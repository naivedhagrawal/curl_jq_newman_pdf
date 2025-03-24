# Use latest Node.js Alpine base image
FROM node:alpine

# Set working directory
WORKDIR /app

# Install required packages
RUN apk add --no-cache \
    curl \
    jq \
    newman \
    wkhtmltopdf

# Verify installations
RUN node --version && \
    npm --version && \
    curl --version && \
    jq --version && \
    newman --version && \
    wkhtmltopdf --version

# Default command
CMD ["node"]
