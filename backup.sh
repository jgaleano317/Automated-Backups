#!/bin/bash
# Backup a vital directory, compress it, and add a timestamp
set -euo pipefail

# Directories
SOURCE_DIR="/var/www/html"
BACKUP_DIR="/mnt/backup_drive"

# Create a timestamp for the backup filename
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Backup filename
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

# Verify the source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory $SOURCE_DIR does not exist."
    exit 1
fi

# Verify the backup destination exists
if [ ! -d "$BACKUP_DIR" ]; then
    echo "Error: Backup directory $BACKUP_DIR does not exist."
    exit 1
fi

# Create compressed backup
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

echo "Backup created successfully: $BACKUP_FILE"

# Remove backups older than 14 days
find "$BACKUP_DIR" -type f -name "backup_*.tar.gz" -mtime +14 -delete

echo "Old backups older than 14 days have been removed."
```
