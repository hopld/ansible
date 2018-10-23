#!/bin/bash 
#timestamp= `date +%Y%m%d`
timestamp=$(/bin/date  +%Y%m%d)
base=/data/backuplog/app/
/bin/mkdir -p "$base/$timestamp"
find /u01/data/delivery/log/app -type f -name "*out*" -exec mv {} "$base/$timestamp" \;
find /u01/data/delivery/log/app -type f -name "*err*" -exec mv {} "$base/$timestamp" \;
