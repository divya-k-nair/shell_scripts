#!/bin/bash
<<note

this script takes backup of any destination path given in the argument

note

function show_date {

        echo "Today is: $(date '+%Y-%m-%d_%H-%M-%S')"
}


function create_backup {


timestamp=$(date '+%Y-%m-%d_%H-%M-%S')

backup_dir="/home/ubuntu/backups/${timestamp}_backup.zip"

zip -r $backup_dir $1

echo "backup complete"


}

show_date
create_backup $1
