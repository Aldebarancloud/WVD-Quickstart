[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

#log store
[string]$temPAth = 'C:\temp\'

#Folder Creation
if (!(Test-Path -Path $temPAth))
{
    $paramNewItem = @{
        Path      = $temPAth
        ItemType  = 'Directory'
        Force     = $true
    }

    New-Item @paramNewItem
}

#Variables
$CSVUser = "https://raw.githubusercontent.com/Aldebarancloud/WVDCourse/main/Lab2withADDS/AzureActiveDirectoryUser/UserCSVforAzureAD.csv"
$CSVAddUsertoaGroup = "https://raw.githubusercontent.com/Aldebarancloud/WVDCourse/main/Lab2withADDS/AzureActiveDirectoryAddUsertoaGroup/AddUsertoaGroupCSVforAzureAD.csv"
$locationCSVUser = "C:\temp\UserCSVforAzureAD.csv"
$locationCSVAddUsertoaGroup = "C:\temp\AddUsertoaGroupCSVforAzureAD.csv"

#Download CSVUser
Invoke-WebRequest -Uri $CSVUser -OutFile $locationCSVUser

#Download CSVAddUsertoaGroup
Invoke-WebRequest -Uri $CSVAddUsertoaGroup -OutFile $locationCSVAddUsertoaGroup