#!/bin/bash
DATE=$(date +%Y%m%d_%H%M%S)
docker exec pgdb pg_dump -U admin mylab > "./backup/mylab_backup_$DATE.sql"
