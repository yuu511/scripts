#!/bin/sh
rsync -aAXv --delete --quiet --exclude=/home/* --exclude=/dev/* --exclude=/proc/* --exclude=/sys/* --exclude=/tmp/* --exclude=/run/* --exclude=/mnt/* --exclude=/media/* / /home/elijah/archives/backups/root

sudo -u plex rsync -aAXv --delete --quiet /home/elijah/plexmetadata /home/elijah/archives/backups/plex 

sudo -u elijah rsync -aAXv --delete --quiet /home/elijah/etc/pictures /home/elijah/archives/backups/misc

sudo -u elijah rsync -aAXv --delete --quiet /home/elijah/etc/pictures /home/elijah/archives/backups/misc

sudo -u elijah rsync -aAXv --delete --quiet /home/elijah/etc/fstab /home/elijah/archives/backups/misc
