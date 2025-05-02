#!/bin/bash

# Имя базы данных
DB_NAME="my_wiki"
# Пользователь БД
DB_USER="wikiuser"
# Папка для резервных копий
BACKUP_DIR="/backup/db"
# Имя файла бэкапа
FILENAME="${BACKUP_DIR}/pg_${DB_NAME}_$(date +%F_%H-%M).sql"

# Дамп базы данных
PGPASSWORD="your_password_here" pg_dump -U "$DB_USER" "$DB_NAME" > "$FILENAME"

# Удаление дампов старше 7 дней
find "$BACKUP_DIR" -type f -mtime +7 -name "*.sql" -delete
