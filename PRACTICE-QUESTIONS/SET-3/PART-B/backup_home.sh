#!/bin/bash

BACKUP_DIR="/backups/home_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$BACKUP_DIR"
cp -a /home/* "$BACKUP_DIR"
tar -czf "${BACKUP_DIR}.tar.gz" -C /backups "$(basename "$BACKUP_DIR")"
tar -tzf "${BACKUP_DIR}.tar.gz" > /dev/null && echo "Backup verified."

