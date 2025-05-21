$backupFile = Get-ChildItem -Path ".\backup" -Filter "*.sql" | Sort-Object LastWriteTime -Descending | Select-Object -First 1
Get-Content $backupFile.FullName | docker exec -i pgdb psql -U admin -d mylab
