$groups = Get-DistributionGroup

$groupMembersReport = @()

foreach ($group in $groups) {
    $members = Get-DistributionGroupMember -Identity $group.Alias
    foreach ($member in $members) {
        $groupMembersReport += [PSCustomObject]@{
            GroupName = $group.DisplayName
            MemberName = $member.Name
            MemberEmail = $member.PrimarySmtpAddress
        }
    }
}

$groupMembersReport | Export-Csv -Path "C:\ExchangeGroupMembersReport.csv" -NoTypeInformation -Encoding UTF8