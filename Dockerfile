FROM php:8.5-cli

# Composer
RUN apt-get update
RUN apt-get install -y --no-install-recommends zip
RUN apt-get install -y --no-install-recommends unzip
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

# Set working directory
WORKDIR /app

CMD ["php", "--version"]
