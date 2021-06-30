[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

#regedit for Graphic Card for WVD
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v bEnumerateHWBeforeSW  /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v AVC444ModePreferred  /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v AVCHardwareEncodePreferred  /t REG_DWORD /d 1 /f

gpupdate.exe /force

#Variables
$FurMarkSource = "https://github.com/Aldebarancloud/WVDCourse/blob/main/Lab4.1ConfiguretheGPU/VMConfiguration/FurMark_1.25.0.0_Setup.exe?raw=true"
$locationFurMark = "C:\temp\FuRMark\FurMark_1.25.0.0_Setup.exe"

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

#Download FurMark 
Start-BitsTransfer -Source $FurMarkSource -Destination $locationFurMark
Start-Sleep -s 5

#Install FurMark 
Start-Process -FilePath "$locationFurMark" /quiet
Start-Sleep -s 10