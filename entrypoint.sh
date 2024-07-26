#!/bin/bash
set -e

if [ "$(ls -A /var/www/html)" ]; then
    echo "Directory not empty, symfony project creation skipped..."
else
    echo "Symfony project creation...: ${PROJECT_NAME}"
    symfony new ${PROJECT_NAME} --webapp --no-git 
    mv ${PROJECT_NAME}/* ${PROJECT_NAME}/.* .
    rmdir ${PROJECT_NAME}
    composer install
fi

exec "$@"
