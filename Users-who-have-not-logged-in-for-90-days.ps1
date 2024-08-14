$inactiveDays = 90
$inactiveUsers = Get-AzureADUser -All $true | Where-Object {
    $_.SignInActivity.LastSignInDateTime -lt (Get-Date).AddDays(-$inactiveDays)
}

$inactiveUsers | Select-Object DisplayName, UserPrincipalName, SignInActivity | 
Export-Csv -Path "C:\InactiveUsersReport.csv" -NoTypeInformation -Encoding UTF8
