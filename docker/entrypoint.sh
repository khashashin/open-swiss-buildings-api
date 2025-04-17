#!/bin/sh
set -e

export APP_ENV=${APP_ENV:-prod}

echo "Clearing Symfony cache..."
php bin/console cache:clear --env="$APP_ENV"

exec /init
