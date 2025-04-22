#!/bin/bash
# Database Backup (MySQL)
backup_file="backup_$(date +%Y%m%d).sql"
mysqldump -u root -p'password' --all-databases > "$backup_file"
gzip "$backup_file"
echo "Database backup saved as ${backup_file}.gz"
