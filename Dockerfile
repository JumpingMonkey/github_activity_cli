FROM php:8.2-cli-alpine

# Install curl extension
RUN apk add --no-cache curl-dev \
    && docker-php-ext-install curl

WORKDIR /app

# Copy the script
COPY github-activity /app/
RUN chmod +x /app/github-activity

# Create an entrypoint script
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]
