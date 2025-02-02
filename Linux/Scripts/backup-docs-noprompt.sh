#! /bin/bash
USER_NAME=user
SERVER_NAME=server

if ssh USER_NAME@SERVER_NAME '[ -d "/mnt/RAID5" ]'; then
 echo "Directory found"
 logger Backup script started
 rsync -Pau --delete /home/$USER_NAME/Documents/$USER_NAME@$SERVER_NAME:/mnt/RAID5/$USER_NAME/Documents/
else
 echo "Could not connect to the server (or find RAID5 directory)..."
 logger -p user.err Backup script failed to find destination
 exit 1
fi

logger Backup script completed
