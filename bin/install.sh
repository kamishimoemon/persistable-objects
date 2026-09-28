docker run -it --user "$(id -u):$(id -g)" -v .:/app php:8.5-dev composer install
