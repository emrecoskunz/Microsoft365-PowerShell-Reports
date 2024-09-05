$distributionGroups = Get-DistributionGroup -ResultSize Unlimited | Where-Object { $_.RequireSenderAuthenticationEnabled -eq $true } | Select-Object DisplayName,PrimarySmtpAddress


$csvFilePath = "C:\DistributionGroups-DisallowExternalSenders.csv"
$distributionGroups | Export-Csv -Path $csvFilePath -NoTypeInformation -Encoding UTF8