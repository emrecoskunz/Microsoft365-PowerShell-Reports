#  Microsoft365-PowerShell-Reports


Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

Import-Module ExchangeOnlineManagement

Connect-ExchangeOnline -UserPrincipalName <mail> -ShowProgress $true
