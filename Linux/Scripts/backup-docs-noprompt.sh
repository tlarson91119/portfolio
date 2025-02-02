#! /bin/bash

# This script uses the rsync utility to backup by documents directory to a server. The set of
#  options used in the command ensure that the destination is always mirrored with the source so
#  that I don't end up with a non-identical directory structures on either side (e.g., after moving
#  a folder elsewhere within the Documents folder).
#
# The logger command just creates a log entry so that I can see when the script last executed.
#  It is started via cron at a certain time of the day.
#  I've been using this for almost a year and it has been working pretty well, but I haven't
#  tried running this script from my laptop because this system isn't really setup to sync
#  very well between multiple devices.

if ssh USER_NAME@SERVER_NAME '[ -d "/mnt/RAID5" ]'; then
 echo "Directory found"
 logger Backup script started
 rsync -Pau --delete /home/username/Documents/ username@server:/mnt/RAID5/username/Documents/
else
 echo "Could not connect to the server (or find RAID5 directory)..."
 logger -p user.err Backup script failed to find destination
 exit 1
fi

logger Backup script completed
