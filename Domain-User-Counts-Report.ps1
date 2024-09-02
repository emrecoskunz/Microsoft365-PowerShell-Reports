# Etki alanlarını al
$domains = Get-AcceptedDomain

# Kullanıcıları al
$users = Get-Mailbox -ResultSize Unlimited

# Etki alanlarına göre kullanıcı sayısını hesapla
$domainUserCounts = @()

foreach ($domain in $domains) {
    $domainName = $domain.DomainName
    $userCount = ($users | Where-Object { $_.UserPrincipalName -like "*@$domainName" }).Count

    $domainUserCounts += [PSCustomObject]@{
        DomainName = $domainName
        UserCount  = $userCount
    }
}

# Sonuçları bir CSV dosyasına aktar
$domainUserCounts | Export-Csv -Path "C:\DomainUserCounts.csv" -NoTypeInformation -Encoding UTF8

# Sonuçları ekrana yazdır
$domainUserCounts
