#!/bin/sh

sh make-rclone-conf.sh
sh make-amb-conf.sh

bash automysqlbackup -f automysqlbackup.conf

rclone sync /var/backup vatusa-backups:vatusa-db-backup
