#! /bin/bash
set -ef -o pipefail

dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

while read path; do
    rsync -av --delete --progress "${path}" $BACKUP_LOCATION
done < "$dir/backup_list"
