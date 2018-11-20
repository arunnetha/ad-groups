$groupname = Get-Content "C:\Users\siddua-ext\Desktop\Jag work\grouptest.txt"

foreach ($group in $groupname)
{
    
    $y = $group.Split('-')[-1]
    
    if ($y -eq 'CA' )
    {
        echo "Change access"
        $z =$group.Split('-')[-2]
        Set-ADGroup -Identity $group -Description "Change access to X:\$z"
    }
    else
    {
        echo "Read Access"
        $z =$group.Split('-')[-2]
        Set-ADGroup -Identity $group -Description "Read access to X:\$z"
    }

}