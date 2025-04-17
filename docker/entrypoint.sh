#!/bin/sh
set -e

export APP_ENV=${APP_ENV:-prod}

chown -R php:php /www/var/cache /www/var/log /www/var/data
chmod -R u+rwX /www/var/cache /www/var/log /www/var/data

echo "Clearing Symfony cache..."
php bin/console cache:clear --env="$APP_ENV"

exec /init
