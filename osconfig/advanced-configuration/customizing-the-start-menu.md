# Customizing the Start Menu

Now it is time to configure my Default Start Menu.  I won't go into too much detail of what you should or should not have on yours, although you don't see Office 2016 on mine, this will show up AFTER Office 2016 has been installed for any NEW User Profiles.

If you are going to do this the right way, you need three types of StartLayout XML's.

* **LayoutModification.xml** - This will go in C:\Users\\*\AppData\Local\Microsoft\Windows\Shell and will control the Start Menu for NEW PROFILES
* **StartLayout.xml** - If you are going to Lock down some of your Start Menu using Local Policy, then you will need these files as well.  They are identical to LayoutModification.xml, with the exception that it contains 

```
<DefaultLayoutOverride LayoutCustomizationRestrictionType="OnlySpecifiedGroups">
```

* **StartLayoutDomain.xml** - Similar to StartLayout.xml but this one is what will be pushed down from a GPO and will contain things like Software Center or Intranet URL's.  No need to add these links to non-Domain computers

---

Add your 

---

## Date and Time Stamps

One thing to note is that the Date and Time is DIFFERENT for each level.  This is because Windows will not refresh the StartLayout.xml from Policy if the Date / Time Stamp had not changed.  So since these are applied on a level based \(Layout Modification &lt; Start Layout &lt; Start Layout Domain\), you want to keep the one you want to OVERWRITE as the never version.

![](/assets/2018-05-25_14-08-17.png)

---

## Before

This is how my Start Layout looked before processing the script after removing Appx Packages.

![](/assets/2018-05-25_10-33-07.png)

---

## After

This looks much nicer.  My Office 2016 Group will show up after it is installed, for any new profiles that have been created

![](/assets/2018-05-25_13-24-03.png)

---

## Sample Start.ps1

```
#======================================================================================
#    Start.ps1
#    Author: David Segura
#    Version: 20180525
#======================================================================================
#    Requirements
#======================================================================================
$RequiresOS = "Windows 10"
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
#    Apply LayoutModification.xml
#======================================================================================
if (!(Test-Path "$env:SystemDrive\Users\Default\AppData\Local\Microsoft\Windows\Shell")) {New-Item -ItemType Directory -Path "$env:SystemDrive\Users\Default\AppData\Local\Microsoft\Windows\Shell"}

$Source = "$env:ProgramData\OSConfig\Start\LayoutModification$ReleaseId.xml"
$Destination = "$env:SystemDrive\Users\*\AppData\Local\Microsoft\Windows\Shell"
if (Test-Path $Source) {
    Write-Host "Applying $Source to all User Profiles ..." -ForegroundColor Cyan

    Get-ChildItem $Destination -Directory -Force | ForEach-Object {
        Copy-Item -Path $Source -Destination $_"\LayoutModification.xml" -Force
        #Copy-Item -Path $Source -Destination $_"\DefaultLayouts.xml" -Force
    }
}
#======================================================================================
#    Apply Local StartLayout.xml
#    This contains the LayoutCustomizationRestrictionType="OnlySpecifiedGroups"
#    For use when specifying the StartLayout.xml with Group Policy
#    This will lock the Specified Groups
#======================================================================================
if (Test-Path "$env:ProgramData\OSConfig\Start\StartLayout$ReleaseId.xml") {
    Write-Host "Applying Default StartLayout.xml ..." -ForegroundColor Cyan
    Copy-Item "$env:ProgramData\OSConfig\Start\StartLayout$ReleaseId.xml" -Destination "$env:ProgramData\OSConfig\Start\StartLayout.xml" -Force
}
if (Test-Path "$env:ProgramData\OSConfig\Start\StartLayout.xml") {
    Write-Host "Importing StartLayout.xml ..."
    Import-StartLayout -LayoutPath "$env:ProgramData\OSConfig\Start\StartLayout.xml" -MountPath "$env:SystemDrive\"
}
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



