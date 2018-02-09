#!/usr/bin/env bash
cd /app/

if [ -d "/storage/" ]; then
  ln -s /storage/ /app/www
fi

cd /app/www/

composer install
composer update

cd /app/
echo "Done"

