#!/bin/bash

backups_dir=backups

file="$backups_dir/seafile-backup-$(date +%Y%m%d-%H%M%S).7z"

mkdir -p "$backups_dir"

7za a "$file" -x'!backups' -x'!.git' .

echo Backup done:
echo $(du -h "$file")
