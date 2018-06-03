# Customizing the Lock and Logon Background

While this is called Wallpaper, you won't see Wallpaper changes unless you add a proper USER POLICY, so this will focus on getting the Lock and Logon Screens changed, but the User Wallpaper will be ready to go when you make the changes to the User Policy.

![](/assets/2018-05-25_14-28-53.png)

---

## **Getting Started**

Get the following images in a Wallpaper directory.  I prefer a solid color, with a resolution of 1980 x 1200px for the JPG.  The Background.bmp should be 1024 x 768px.

![](/assets/2018-05-25_14-20-50.png)

---

## Before



---

## After

![](/assets/2018-05-25_14-05-08.png)

---

## Sample Wallpaper.ps1

```
#======================================================================================
#    Wallpaper.ps1
#    Author: David Segura
#    Version: 20180525
#======================================================================================
#    Requirements
#======================================================================================
$RequiresOS = ""
$RequiresReleaseId = ""
$RequiresBuild = ""
#$VerbosePreference = 'Continue'
#======================================================================================
#    Create the Log Directory
#======================================================================================
if (!(Test-Path "$env:ProgramData\OSConfigLogs")) {New-Item -ItemType Directory -Path $env:ProgramData\OSConfigLogs}
#======================================================================================
#    Start the Transcript
#======================================================================================
$ScriptName = $MyInvocation.MyCommand.Name
$LogName = "$ScriptName-$((Get-Date).ToString('yyyy-MM-dd-HHmmss')).log"
Start-Transcript -Path (Join-Path $env:ProgramData\OSConfigLogs $LogName)
Write-Host ""
#======================================================================================
#    System Information
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
#    Windows Information
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
#    Filter Requirements
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
# OEM Background
#======================================================================================
$Source = "$env:ProgramData\OSConfig\Wallpaper\BackgroundDefault.jpg"
$Destination = "$env:SystemRoot\System32\oobe\Info\Backgrounds"
if (Test-Path $Source) {
    if (!(Test-Path $Destination)) {New-Item -ItemType Directory -Path $Destination}
    Copy-Item -Path $Source -Destination $Destination -Force
}

$Modification = 'add HKLM\Software\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\Background /v OEMBackground /t REG_DWORD /d 1 /f'
Write-Host "reg $Modification" -ForegroundColor Green
Start-Process reg -ArgumentList $Modification -Wait -WindowStyle Hidden -ErrorAction SilentlyContinue

$Modification = 'add HKLM\Software\Policies\Microsoft\Windows\System /v UseOEMBackground /t REG_DWORD /d 1 /f'
Write-Host "reg $Modification" -ForegroundColor Green
Start-Process reg -ArgumentList $Modification -Wait -WindowStyle Hidden -ErrorAction SilentlyContinue
#======================================================================================
# Lock and Logon Screen
#======================================================================================
$Modification = 'add HKLM\Software\Policies\Microsoft\Windows\Personalization /v LockScreenImage /t REG_SZ /d "C:\ProgramData\OSConfig\Wallpaper\LockScreen.jpg" /f'
Write-Host "reg $Modification" -ForegroundColor Green
Start-Process reg -ArgumentList $Modification -Wait -WindowStyle Hidden -ErrorAction SilentlyContinue

$Modification = 'add HKLM\Software\Policies\Microsoft\Windows\Personalization /v NoChangingLockScreen /t REG_DWORD /d 1 /f'
Write-Host "reg $Modification" -ForegroundColor Green
Start-Process reg -ArgumentList $Modification -Wait -WindowStyle Hidden -ErrorAction SilentlyContinue

$Modification = 'add HKLM\Software\Policies\Microsoft\Windows\System /v DisableLogonBackgroundImage /t REG_DWORD /d 1 /f'
Write-Host "reg $Modification" -ForegroundColor Green
Start-Process reg -ArgumentList $Modification -Wait -WindowStyle Hidden -ErrorAction SilentlyContinue

Write-Host ""
#======================================================================================
#    Enable the following lines for testing
#======================================================================================
#Start-Process PowerShell_ISE.exe -Wait
#Read-Host -Prompt "Press Enter to Continue"
#======================================================================================
Write-Host $ScriptName
Stop-Transcript
Return
#======================================================================================
```



