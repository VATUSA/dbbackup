#!/bin/sh

sh make-rclone-conf.sh
sh make-amb-conf.sh

bash automysqlbackup

rclone sync /var/backup vatusa-backups:vatusa-db-backup
