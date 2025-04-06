#!/bin/bash

LOG_DIR="/var/log"
ARCHIVE="/var/log/logs_$(date +%Y%m%d).tar.gz"

find "$LOG_DIR" -type f -name "*.log" > /tmp/loglist.txt
tar -czf "$ARCHIVE" -T /tmp/loglist.txt

while IFS= read -r file; do
  : > "$file"
done < /tmp/loglist.txt

echo "Logs archived to $ARCHIVE and original files cleared."

