#!/bin/sh

cat > /root/.config/rclone/rclone.conf << EOF
[vatusa-backups]
type = google cloud storage
project_number = $RC_PROJ
bucket_policy_only = true
location = us
storage_class = NEARLINE
token = $RC_TOKEN
EOF
