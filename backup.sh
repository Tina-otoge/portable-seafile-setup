#!/bin/bash

backups_dir=backups

file="$backups_dir"/"$(date +%Y%m%d%H%M%S)".7z

mkdir -p "$backups_dir"

7za a "$file" docker-compose.yml README* *.sh *-data
