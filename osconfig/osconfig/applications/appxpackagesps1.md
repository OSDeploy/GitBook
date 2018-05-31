# AppxPackages.ps1

Hopefully you should have your own PowerShell script to remove any AppxPackages that you don't want in Windows 10, but if you don't, just edit the one I have at the bottom of this page to suit your needs.

---

## Before

This is what the Start Menu of Windows 10 looks like with all the default AppxPackages installed

![](/assets/2018-05-25_10-25-39.png)

---

### During

OSConfig will execute the AppxPackages.ps1 script and remove the Applications in OOBE

![](/assets/2018-05-25_10-30-06.png)

---

### After

Windows should look much cleaner after removing unnecessary applications

![](/assets/2018-05-25_10-33-07.png)

---

AppxPackages.ps1

Place this script in the Applications directory

```
#======================================================================================
# AppxPackages.ps1
# Author: David Segura
# Version: 20180531
#======================================================================================
# Requirements
#======================================================================================
$RequiresOS = "Windows 10"
$RequiresReleaseId = ""
$RequiresBuild = ""
#$VerbosePreference = 'Continue'
#======================================================================================
# Create the Log Directory
#======================================================================================
if (!(Test-Path "$env:ProgramData\OSConfigLogs")) {New-Item -ItemType Directory -Path $env:ProgramData\OSConfigLogs}
#======================================================================================
# Start the Transcript
#======================================================================================
$ScriptName = $MyInvocation.MyCommand.Name
$LogName = "$ScriptName-$((Get-Date).ToString('yyyy-MM-dd-HHmmss')).log"
Start-Transcript -Path (Join-Path $env:ProgramData\OSConfigLogs $LogName)
Write-Host ""
#======================================================================================
# System Information
#======================================================================================
$SystemManufacturer = (Get-ItemProperty -Path HKLM:\System\CurrentControlSet\Control\SystemInformation).SystemManufacturer.Trim()
$SystemProductName = (Get-ItemProperty -Path HKLM:\System\CurrentControlSet\Control\SystemInformation).SystemProductName.Trim()
$BIOSVersion = (Get-ItemProperty -Path HKLM:\System\CurrentControlSet\Control\SystemInformation).BIOSVersion.Trim()
$BIOSReleaseDate = (Get-ItemProperty -Path HKLM:\System\CurrentControlSet\Control\SystemInformation).BIOSReleaseDate.Trim()
if ($SystemManufacturer -like "*Dell*") {$SystemManufacturer = "Dell"}
Write-Host "SystemManufacturer: $SystemManufacturer" -ForegroundColor Cyan
Write-Host "SystemProductName: $SystemProductName" -ForegroundColor Cyan
Write-Host "BIOSVersion: $BIOSVersion" -ForegroundColor Cyan
Write-Host "BIOSReleaseDate: $BIOSReleaseDate" -ForegroundColor Cyan
Write-Host ""
#======================================================================================
# Windows Information
#======================================================================================
if (Test-Path -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion") {
$ProductName = (Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion").ProductName.Trim()
$EditionID = (Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion").EditionID.Trim()
if ($ProductName -like "*Windows 10*") {
$CompositionEditionID = (Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion").CompositionEditionID.Trim()
$ReleaseId = (Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion").ReleaseId.Trim()
}
$CurrentBuild = (Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion").CurrentBuild.Trim()
$CurrentBuildNumber = (Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion").CurrentBuildNumber.Trim()
$CurrentVersion = (Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion").CurrentVersion.Trim()
$InstallationType = (Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion").InstallationType.Trim()
$RegisteredOwner = (Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion").RegisteredOwner.Trim()
$RegisteredOrganization = (Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion").RegisteredOrganization.Trim()
} else {
$ProductName = (Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion").ProductName.Trim()
$EditionID = (Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion").EditionID.Trim()
if ($ProductName -like "*Windows 10*") {
$CompositionEditionID = (Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion").CompositionEditionID.Trim()
$ReleaseId = (Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion").ReleaseId.Trim()
}
$CurrentBuild = (Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion").CurrentBuild.Trim()
$CurrentBuildNumber = (Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion").CurrentBuildNumber.Trim()
$CurrentVersion = (Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion").CurrentVersion.Trim()
$InstallationType = (Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion").InstallationType.Trim()
$RegisteredOwner = (Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion").RegisteredOwner.Trim()
$RegisteredOrganization = (Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion").RegisteredOrganization.Trim()
}

if ($env:PROCESSOR_ARCHITECTURE -like "*64") {
#64-bit
$Arch = "x64"
$Bits = "64-bit"
} else {
#32-bit
$Arch = "x86"
$Bits = "32-bit"
}

if ($env:SystemDrive -eq "X:") {
$IsWinPE = "True"
Write-Host "System is running in WinPE" -ForegroundColor Green
} else {
$IsWinPE = "False"
}

Write-Host "ProductName: $ProductName" -ForegroundColor Cyan
Write-Host "Architecture: $Arch" -ForegroundColor Cyan
Write-Host "IsWinPE: $IsWinPE" -ForegroundColor Cyan
Write-Host "EditionID: $EditionID" -ForegroundColor Cyan
Write-Host "CompositionEditionID: $CompositionEditionID" -ForegroundColor Cyan
Write-Host "ReleaseId: $ReleaseId" -ForegroundColor Cyan
Write-Host "CurrentBuild: $CurrentBuild" -ForegroundColor Cyan
Write-Host "CurrentBuildNumber: $CurrentBuildNumber" -ForegroundColor Cyan
Write-Host "CurrentVersion: $CurrentVersion" -ForegroundColor Cyan
Write-Host "InstallationType: $InstallationType" -ForegroundColor Cyan
Write-Host "RegisteredOwner: $RegisteredOwner" -ForegroundColor Cyan
Write-Host "RegisteredOrganization: $RegisteredOrganization" -ForegroundColor Cyan
Write-Host ""
#======================================================================================
# Filter Requirements
#======================================================================================
if (!(Test-Path variable:\RequiresOS)) {
Write-Host "OS Build requirement does not exist"
} else {
if ($RequiresOS -eq "") {
Write-Host "Operating System requirement is empty"
} elseif ($ProductName -like "*$RequiresOS*") {
Write-Host "Operating System requirement PASSED" -ForegroundColor Green
} else {
Write-Host "Operating System requirement FAILED ... Exiting" -ForegroundColor Red
Stop-Transcript
Return
}
}

if (!(Test-Path variable:\RequiresReleaseId)) {
Write-Host "OS Release Id requirement does not exist"
} else {
if ($RequiresReleaseId -eq "") {
Write-Host "OS Release Id requirement is empty"
} elseif ($ReleaseId -eq $RequiresReleaseId) {
Write-Host "OS Release Id requirement PASSED" -ForegroundColor Green
} else {
Write-Host "OS Release Id requirement FAILED ... Exiting" -ForegroundColor Red
Stop-Transcript
Return
}
}

if (!(Test-Path variable:\RequiresBuild)) {
Write-Host "OS Build requirement does not exist"
} else {
if ($RequiresBuild -eq "") {
Write-Host "OS Build requirement is empty"
} elseif ($CurrentBuild -eq $RequiresBuild) {
Write-Host "OS Build requirement PASSED" -ForegroundColor Green
} else {
Write-Host "OS Build requirement FAILED" -ForegroundColor Red
}
}
Write-Host ""
#======================================================================================
# Appx Packages
#======================================================================================
$AppBlackList =
"Microsoft.3DBuilder",
"Microsoft.BingFinance",
"Microsoft.BingNews",
"Microsoft.BingSports",
"Microsoft.CommsPhone",
"Microsoft.Messaging",
"Microsoft.MicrosoftOfficeHub",
"Microsoft.MicrosoftSolitaireCollection",
"Microsoft.Office.OneNote",
"Microsoft.Office.Sway",
"Microsoft.OneConnect",
"Microsoft.People",
"Microsoft.SkypeApp",
"Microsoft.WindowsCommunicationsApps",
"Microsoft.WindowsFeedbackHub",
"Microsoft.WindowsPhone",
"Microsoft.Xbox.TCUI",
"Microsoft.XboxApp",
"Microsoft.XboxGameOverlay",
"Microsoft.XboxIdentityProvider",
"Microsoft.XboxSpeechToTextOverlay",
"Microsoft.ZuneMusic",
"Microsoft.ZuneVideo",
"Windows.PeopleExperienceHost"

$AppWhiteList =
"Microsoft.Appconnector",
"Microsoft.BingWeather",
"Microsoft.ConnectivityStore",
"Microsoft.DesktopAppInstaller",
"Microsoft.GetHelp",
"Microsoft.Getstarted",
"Microsoft.MSPaint",
"Microsoft.Microsoft3DViewer",
"Microsoft.MicrosoftStickyNotes",
"Microsoft.Print3D",
"Microsoft.StorePurchaseApp",
"Microsoft.Wallet",
"Microsoft.Windows.Photos",
"Microsoft.WindowsAlarms",
"Microsoft.WindowsCalculator",
"Microsoft.WindowsCamera",
"Microsoft.WindowsMaps",
"Microsoft.WindowsSoundRecorder",
"Microsoft.WindowsStore"
#======================================================================================
# Main
#======================================================================================
Write-Host "Disable Windows Consumer Features" -ForegroundColor Green
#Start-Process reg -ArgumentList 'add HKLM\Software\Policies\Microsoft\Windows\CloudContent /v DisableWindowsConsumerFeatures /t REG_DWORD /d 1 /f' -Wait -WindowStyle Hidden -ErrorAction SilentlyContinue

ForEach ($App in $AppBlackList)
{
$PackageFullName = (Get-AppxPackage $App).PackageFullName
$ProPackageFullName = (Get-AppxProvisionedPackage -online | Where-Object {$_.Displayname -eq $App}).PackageName
Write-Host ""
Write-Host $PackageFullName
Write-Host $ProPackageFullName
if ($PackageFullName) {
Write-Host "Removing Package: $App" -ForegroundColor Green
Remove-AppxPackage -package $PackageFullName
} else {
Write-Host "Unable to find package: $App" -ForegroundColor Red
} if ($ProPackageFullName) {
Write-Host "Removing Provisioned Package: $ProPackageFullName" -ForegroundColor Green
Remove-AppxProvisionedPackage -online -packagename $ProPackageFullName
} else {
Write-Host "Unable to find provisioned package: $App" -ForegroundColor Red
}
}
Write-Host ""
#======================================================================================
# Enable the following lines for testing
#======================================================================================
#Start-Process PowerShell_ISE.exe -Wait
#Read-Host -Prompt "Press Enter to Continue"
#======================================================================================
Write-Host ""
Stop-Transcript
Return
#======================================================================================
```

---




