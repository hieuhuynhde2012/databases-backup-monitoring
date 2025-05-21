# Lấy ngày giờ hiện tại để đặt tên file backup
$DATE = Get-Date -Format "yyyyMMdd_HHmmss"
$BackupFile = "$PSScriptRoot\mylab_backup_$DATE.sql"

# Tạo file backup PostgreSQL từ container Docker (pgdb là tên container, admin là user, mylab là DB)
docker exec pgdb pg_dump -U admin mylab > $BackupFile

# Gửi email thông báo backup thành công
Send-MailMessage `
    -From "trunghieu201297@gmail.com" `
    -To "22540006@gm.uit.edu.vn" `
    -Subject "✅ Backup PostgreSQL thành công lúc $DATE" `
    -Body "🎉 File backup đã được tạo tại: $BackupFile" `
    -SmtpServer "smtp.gmail.com" `
    -Port 587 `
    -UseSsl `
    -Credential (Get-Credential)
