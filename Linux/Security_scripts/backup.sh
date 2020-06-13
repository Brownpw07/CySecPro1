#!/bin/bash
mkdir -p /var/backups
tar cvf  /var/backups/home.tar /home
mv /var/backups/home.tar.gz /var /backups/home.last.tar.gz
tar cvf  /var/backups/system.tar.gz /home
ls -lh /var/backups > /var/backups/file_report.txt
free -h > /var/backups/disk_report.txt
