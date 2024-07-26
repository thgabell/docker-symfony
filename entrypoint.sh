#!/bin/bash
set -e

if [ "$(ls -A /var/www/html)" ]; then
    echo "Directory not empty, symfony project creation skipped..."
else
    echo "Symfony project creation...: ${PROJECT_NAME}"
    create-project symfony/skeleton:"7.1.*" ${PROJECT_NAME}
    cd ${PROJECT_NAME}
    composer require webapp 
    mv ${PROJECT_NAME}/* ${PROJECT_NAME}/.* .
    rmdir ${PROJECT_NAME}
    composer install
fi

exec "$@"
