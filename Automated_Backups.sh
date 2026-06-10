#!/bin/bash
# Backup a vital directory, compress it, and add a timestamp
BACKUP_SRC="/var/www/html"
BACKUP_DEST="/mnt/backup_drive"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

tar -czf "$BACKUP_DEST/backup_$TIMESTAMP.tar.gz" "$BACKUP_SRC"

# Delete backups older than 14 days to preserve disk space
find "$BACKUP_DEST" -type f -name "*.tar.gz" -mtime +14 -delete

