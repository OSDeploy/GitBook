#===================================================
#   Custom Variables
#===================================================
#Location of the Source Boot.wim or WinRE.wim
$SourceWim = 'D:\sources\boot.wim'

#Destination Directory to create WinPE.wim
$DestinationDir = 'C:\Temp'

#Sets the available scratch space, in megabytes
#Valid values are 32, 64, 128, 256 and 512
#Default is 32
$ScratchSpace = '256'

#The name of the time zone must exactly match the name of the time zone settings in the registry
#HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Time Zone
$TimeZone = 'Central Standard Time'

#ImageName of the WIM
$DestinationName = 'Microsoft Windows PE (x64)'

#===================================================
#   Automatic Variables
#===================================================
$MountDirectory = "$DestinationDir\Mount"
$DestinationWim = "$DestinationDir\WinPE.wim"

#===================================================
#   Create Mount Directory
#===================================================
if (-Not (Test-Path "$MountDirectory")) {
    New-Item -Path "$MountDirectory" -ItemType Directory -Force | Out-Null
}

#===================================================
#   Remove Existing WinPE.wim
#===================================================
if (Test-Path "$DestinationWim") {
    Remove-Item -Path "$DestinationWim" -Force | Out-Null
}

#===================================================
#   Export WinPE.wim and make Bootable
#===================================================
Export-WindowsImage -DestinationImagePath "$DestinationWim" -SourceImagePath "$SourceWim"`
-SourceIndex 1 -DestinationName "$DestinationName" -Setbootable | Out-Null

#===================================================
#   Mount-WindowsImage
#===================================================
Mount-WindowsImage -Path "$MountDirectory" -ImagePath "$DestinationWim" -Index 1 | Out-Null

#===================================================
#   PE Settings | Set-ScratchSpace | Set-TargetPath
#===================================================
Write-Host "Dism /Get-PESettings" -ForegroundColor Cyan
Dism /Image:"$MountDirectory" /Get-PESettings

Write-Host "Dism /Set-TargetPath:X:\" -ForegroundColor Cyan
Dism /Image:"$MountDirectory" /Set-TargetPath:X:\

if ($ScratchSpace) {
    Write-Host "Dism /Set-ScratchSpace:$ScratchSpace" -ForegroundColor Cyan
    Dism /Image:"$MountDirectory" /Set-ScratchSpace:$ScratchSpace
}

#===================================================
#   International Settings | Set Time Zone
#===================================================
if ($TimeZone) {
    Write-Host "Dism /Get-Intl" -ForegroundColor Cyan
    Dism /Image:"$MountDirectory" /Get-Intl
    
    Write-Host "Dism /Set-TimeZone:$TimeZone" -ForegroundColor Cyan
    Dism /Image:"$MountDirectory" /Set-TimeZone:"$TimeZone"
}

#===================================================
#   Get-WindowsOptionalFeature
#===================================================
Write-Host 'Get-WindowsOptionalFeature' -ForegroundColor Cyan
Get-WindowsOptionalFeature -Path "$MountDirectory" | Select-Object -Property FeatureName, State | Format-Table

#===================================================
#   Get-WindowsPackage
#===================================================
Write-Host 'Get-WindowsPackage' -ForegroundColor Cyan
Get-WindowsPackage -Path "$MountDirectory" | Select-Object -Property PackageName, ReleaseType, PackageState | Format-Table

#===================================================
#   WinRE.wim Remove winpeshl.ini
#===================================================
if (Test-Path "$MountDirectory\Windows\System32\winpeshl.ini") {
    Remove-Item -Path "$MountDirectory\Windows\System32\winpeshl.ini" -Force | Out-Null
}

#===================================================
#   Dismount-WindowsImage
#===================================================
Dismount-WindowsImage -Path "$MountDirectory" -Save | Out-Null

#===================================================
#   Remove Mount Directory
#===================================================
if (Test-Path "$MountDirectory") {
    Remove-Item -Path "$MountDirectory" -Force | Out-Null
}
#===================================================
#   Get-WindowsImage
#===================================================
Write-Host "Get-WindowsImage" -ForegroundColor Cyan
Get-WindowsImage -ImagePath "$DestinationWim" -Index 1 | Select-Object -Property *

