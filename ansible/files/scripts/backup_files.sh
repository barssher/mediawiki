#!/bin/bash

# Директория MediaWiki
SOURCE="/var/www/mediawiki"

# Куда сохранять архив
DEST="/backup/files/mediawiki_$(date +%F_%H-%M).tar.gz"

# Создание архива
tar -czf "$DEST" "$SOURCE"

# Удаление архивов старше 7 дней
find /backup/files/ -type f -mtime +7 -name "*.tar.gz" -delete
