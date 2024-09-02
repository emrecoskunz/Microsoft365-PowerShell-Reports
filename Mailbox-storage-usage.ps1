$mailboxUsageReport = Get-MailboxStatistics -ResultSize Unlimited  
Select-Object DisplayName, ItemCount, TotalItemSize

$mailboxUsageReport  Export-Csv -Path CMailboxStorageUsageReport.csv -NoTypeInformation -Encoding UTF8
