#!/bin/bash
mkdir -p /tmp/Backup
cp *.c *.py /tmp/Backup 2>/dev/null
cd /tmp || exit
tar -czf Backup-2025-03-28.tar.gz Backup
sudo udisksctl mount -b /dev/sdb1
mv Backup-2025-03-28.tar.gz /media/RVU/Pendrive/
sudo udisksctl unmount -b /dev/sdb1
rm -rf /tmp/Backup
echo "Backup completed successfully."

