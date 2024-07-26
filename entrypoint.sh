#!/bin/bash

if [ -z "$PROJECT_NAME" ]; then
  echo "PROJECT_NAME undefined!"
  exit 1
fi

if [ ! -d "$PROJECT_NAME" ]; then
  echo "Symfony project creation...: ${PROJECT_NAME}"
  symfony new ${PROJECT_NAME} --webapp --no-git
  wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1-en.php -O adminer.php
  mv adminer.php ${PROJECT_NAME}/public
  mv ${PROJECT_NAME}/* . 
  rm -rf ${PROJECT_NAME}
else
  echo "Directory exists, symfony project creation skipped..."
fi

cd ${PROJECT_NAME}

# Démarrer le serveur Symfony
exec symfony server:start --no-tls --port=8000
