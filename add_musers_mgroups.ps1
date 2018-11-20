
$data = import-csv "C:\Arun\AD\ad groups\groupuserlist.csv" -delimiter ';'

foreach ($item in $data) 
{

    $group = $item.GroupName
    $user = $item.userID.split(',')

foreach ($g1 in $group) {
$ListOfGroupMembers = Get-ADGroupMember -Identity $g1 |
Select-Object -ExpandProperty SamAccountName
if ($ListOfGroupMembers -notcontains $user) {
Add-ADGroupMember $g1 -Members $user
}
}
}