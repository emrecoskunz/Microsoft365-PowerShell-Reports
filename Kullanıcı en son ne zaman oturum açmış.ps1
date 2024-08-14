$logins = Get-AzureADAuditSignInLogs -All $true
$loginReport = $logins | Select-Object UserDisplayName, UserPrincipalName, AppDisplayName, SignInDateTime, Location, IPAddress

$loginReport | Export-Csv -Path "C:\UserSignInReport.csv" -NoTypeInformation -Encoding UTF8
