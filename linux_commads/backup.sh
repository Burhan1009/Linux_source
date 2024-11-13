#!/bin/bash
#
timestamp=$(date '+%Y-%M-%d_%H-%M-%S')
backup_dir="/home/hensex/Desktop/files/${timestamp}_backup.zip"
zip -r $backup_dir $1
echo "Backup Complete..........!"
