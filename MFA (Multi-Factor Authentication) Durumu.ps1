$mfaStatus = Get-MsolUser -All | Select-Object UserPrincipalName, DisplayName, StrongAuthenticationMethods, StrongAuthenticationRequirements

$mfaStatus | Export-Csv -Path "C:\MFAStatusReport.csv" -NoTypeInformation -Encoding UTF8
