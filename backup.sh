#!/bin/bash
<<note

this script takes backup of any destination path given in the argument

note

timestamp=$(date '+%Y-%/m-%d_%H-%-%M-%S')

backup_dir="${timestamp}_backup.zip"

zip -r backup_dir $1

echo "backup complete"
