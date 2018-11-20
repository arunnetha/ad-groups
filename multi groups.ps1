Import-Module act*
Set-Location AD:
ls
Set-Location '.\DC=d1,DC=ad,DC=local'
ls
Set-Location OU=ASIA
Set-Location OU=Bangalore
Set-Location OU=Accounts
ls
Set-Location OU=Groups
ls

#Get-ADGroup BNG-D-Admin-CA -Properties Displayname
#New-ADGroup -Name "BNG-D-coffee-CA" -SamAccountName BNG-D-coffee-CA -GroupCategory Security -GroupScope DomainLocal -Description "Change Access to X:\coffee"


$groupname = Get-Content "C:\Users\siddua-ext\Desktop\Jag work\grouptest.txt"

foreach ($group in $groupname)
{
    
    New-ADGroup -Name $group -SamAccountName $group -GroupCategory Security -GroupScope DomainLocal

}