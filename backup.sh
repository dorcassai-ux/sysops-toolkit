#!/bin/bash

#Folder we want to back up
SOURCE="$HOME/test-data"

#Folder where backups will be stored
DEST="$HOME/backups"

#Current date and time, used to name the backup
DATE=$(date +%Y-%m-%d_%H-%M-%S)
FILENAME="backup_$DATE.tar.gz"

#Make the backup folder if it doesn't exist
mkdir -p "$DEST"

echo "Starting backup of $SOURCE ..."
tar -czf "$DEST/$FILENAME" -C "$SOURCE" .
echo "Backup saved to $DEST/$FILENAME"
