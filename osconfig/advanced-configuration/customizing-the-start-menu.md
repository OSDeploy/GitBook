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

### Start.ps1

Create a Directory at %DeploymentShare%\OSDeploy\OSConfig\Start.  This is where we will place our Start Layout XML files as well as the Start.ps1 file below.  Customize it to suit your purposes

```
#======================================================================================
#    Author: David Segura
#    Version: 20180601
#    https://raw.githubusercontent.com/OSDeploy/OSConfig/master/Start/Start.ps1
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
#======================================================================================
Write-Host ""
#======================================================================================
#    Enable the following lines for testing
#======================================================================================
#Start-Process PowerShell_ISE.exe -Wait
#Read-Host -Prompt "Press Enter to Continue"
#======================================================================================
Stop-Transcript
Return
#======================================================================================
```

---

### Date and Time Stamps

One thing to note is that the Date and Time is DIFFERENT for each type of Start Layout XML.  This is because Windows will not refresh the StartLayout.xml from Policy if the Date / Time Stamp had not changed.  So since these are applied on a level based \(Layout Modification &lt; Start Layout &lt; Start Layout Domain\), you want to keep the one you want to OVERWRITE as the never Date Time Stamp.

![](/assets/2018-05-25_14-08-17.png)

---

### Before

This is how my Start Layout looked before processing the script after removing Appx Packages.

![](/assets/2018-05-25_10-33-07.png)

---

### Using LayoutModification\*.xml

This looks much nicer.  My Office 2016 Group will show up after it is installed, for any new profiles that have been created.  Using the LayoutModification\*.xml will only set the Start Menu for new User Profiles

![](/assets/2018-05-25_13-24-03.png)

---

### Using StartLayout\*.xml

Using a StartLayout\*.xml triggers the setting of the Start Layout in Local Policy as well as running the Import-StartLayout PowerShell command.  The benefit of this is so we can Lock certain groups, like Main, and still allow user customization of anything on the Start Menu that is not in the Locked Groups.



---

### Sample LayoutModification1803.xml

```
<?xml version="1.0" encoding="utf-8"?>
<LayoutModificationTemplate
    xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification"
    xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout"
    xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout"
    xmlns:taskbar="http://schemas.microsoft.com/Start/2014/TaskbarLayout"
    Version="1">
    <LayoutOptions StartTileGroupCellWidth="6" />
    <DefaultLayoutOverride>
        <StartLayoutCollection>
            <defaultlayout:StartLayout GroupCellWidth="6" xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout">
                <start:Group Name="Main" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout">
                    <start:DesktopApplicationTile Size="2x2" Column="0" Row="0" DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\Computer.lnk" />
                    <start:DesktopApplicationTile Size="2x2" Column="2" Row="0" DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\Control Panel.lnk" />
                    <start:Tile    Size="2x2" Column="4" Row="0" AppUserModelID="Microsoft.Getstarted_8wekyb3d8bbwe!App" />
                    <start:DesktopApplicationTile Size="1x1" Column="0" Row="2" DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\Run.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="1" Row="2" DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\Command Prompt.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="2" Row="2" DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\Windows PowerShell\Windows PowerShell.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="3" Row="2" DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\Windows PowerShell\Windows PowerShell ISE.lnk" />
                </start:Group>
                <start:Group Name="Office" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout">
                    <start:DesktopApplicationTile Size="2x2" Column="0" Row="0" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Outlook 2016.lnk" />
                    <start:DesktopApplicationTile Size="2x2" Column="2" Row="0" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Word 2016.lnk" />
                    <start:DesktopApplicationTile Size="2x2" Column="4" Row="0" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Excel 2016.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="0" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\PowerPoint 2016.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="1" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\OneNote 2016.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="2" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Publisher 2016.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="3" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Access 2016.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="4" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Skype for Business 2016.lnk" />
                    <start:DesktopApplicationTile Size="2x2" Column="0" Row="0" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Outlook 2013.lnk" />
                    <start:DesktopApplicationTile Size="2x2" Column="2" Row="0" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Word 2013.lnk" />
                    <start:DesktopApplicationTile Size="2x2" Column="4" Row="0" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Excel 2013.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="0" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\PowerPoint 2013.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="1" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\OneNote 2013.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="2" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Publisher 2013.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="3" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Access 2013.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="4" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Skype for Business 2015.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="4" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Skype for Business 2013.lnk" />
                </start:Group>
            </defaultlayout:StartLayout>
        </StartLayoutCollection>
    </DefaultLayoutOverride>
    <CustomTaskbarLayoutCollection PinListPlacement="Replace">
        <defaultlayout:TaskbarLayout>
            <taskbar:TaskbarPinList>
                <taskbar:DesktopApp DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\File Explorer.lnk" />
                <taskbar:DesktopApp DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\Accessories\Internet Explorer.lnk"/>
                <taskbar:DesktopApp DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Outlook 2013.lnk"/>
                <taskbar:DesktopApp DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Outlook 2016.lnk"/>
            </taskbar:TaskbarPinList>
        </defaultlayout:TaskbarLayout>
    </CustomTaskbarLayoutCollection>
</LayoutModificationTemplate>
```

---

### Sample StartLayout1803.xml

```
<?xml version="1.0" encoding="utf-8"?>
<LayoutModificationTemplate
    xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification"
    xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout"
    xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout"
    xmlns:taskbar="http://schemas.microsoft.com/Start/2014/TaskbarLayout"
    Version="1">
    <LayoutOptions StartTileGroupCellWidth="6" />
    <DefaultLayoutOverride LayoutCustomizationRestrictionType="OnlySpecifiedGroups">
        <StartLayoutCollection>
            <defaultlayout:StartLayout GroupCellWidth="6" xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout">
                <start:Group Name="Main" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout">
                    <start:DesktopApplicationTile Size="2x2" Column="0" Row="0" DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\Computer.lnk" />
                    <start:DesktopApplicationTile Size="2x2" Column="2" Row="0" DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\Control Panel.lnk" />
                    <start:Tile    Size="2x2" Column="4" Row="0" AppUserModelID="Microsoft.Getstarted_8wekyb3d8bbwe!App" />
                    <start:DesktopApplicationTile Size="1x1" Column="0" Row="2" DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\Run.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="1" Row="2" DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\Command Prompt.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="2" Row="2" DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\Windows PowerShell\Windows PowerShell.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="3" Row="2" DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\Windows PowerShell\Windows PowerShell ISE.lnk" />
                </start:Group>
                <start:Group Name="Office" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout">
                    <start:DesktopApplicationTile Size="2x2" Column="0" Row="0" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Outlook 2016.lnk" />
                    <start:DesktopApplicationTile Size="2x2" Column="2" Row="0" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Word 2016.lnk" />
                    <start:DesktopApplicationTile Size="2x2" Column="4" Row="0" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Excel 2016.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="0" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\PowerPoint 2016.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="1" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\OneNote 2016.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="2" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Publisher 2016.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="3" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Access 2016.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="4" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Skype for Business 2016.lnk" />
                    <start:DesktopApplicationTile Size="2x2" Column="0" Row="0" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Outlook 2013.lnk" />
                    <start:DesktopApplicationTile Size="2x2" Column="2" Row="0" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Word 2013.lnk" />
                    <start:DesktopApplicationTile Size="2x2" Column="4" Row="0" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Excel 2013.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="0" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\PowerPoint 2013.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="1" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\OneNote 2013.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="2" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Publisher 2013.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="3" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Access 2013.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="4" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Skype for Business 2015.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="4" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Skype for Business 2013.lnk" />
                </start:Group>
            </defaultlayout:StartLayout>
        </StartLayoutCollection>
    </DefaultLayoutOverride>
    <CustomTaskbarLayoutCollection PinListPlacement="Replace">
        <defaultlayout:TaskbarLayout>
            <taskbar:TaskbarPinList>
                <taskbar:DesktopApp DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\File Explorer.lnk" />
                <taskbar:DesktopApp DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\Accessories\Internet Explorer.lnk"/>
                <taskbar:DesktopApp DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Outlook 2013.lnk"/>
                <taskbar:DesktopApp DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Outlook 2016.lnk"/>
            </taskbar:TaskbarPinList>
        </defaultlayout:TaskbarLayout>
    </CustomTaskbarLayoutCollection>
</LayoutModificationTemplate>
```

---

### Sample StartLayoutDomain1803.xml

```
<?xml version="1.0" encoding="utf-8"?>
<LayoutModificationTemplate
    xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification"
    xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout"
    xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout"
    xmlns:taskbar="http://schemas.microsoft.com/Start/2014/TaskbarLayout"
    Version="1">
    <LayoutOptions StartTileGroupCellWidth="6" />
    <DefaultLayoutOverride LayoutCustomizationRestrictionType="OnlySpecifiedGroups">
        <StartLayoutCollection>
            <defaultlayout:StartLayout GroupCellWidth="6" xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout">
                <start:Group Name="Main" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout">
                    <start:DesktopApplicationTile Size="2x2" Column="0" Row="0" DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\Computer.lnk" />
                    <start:DesktopApplicationTile Size="2x2" Column="2" Row="0" DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\Control Panel.lnk" />
                    <start:Tile    Size="2x2" Column="4" Row="0" AppUserModelID="Microsoft.Getstarted_8wekyb3d8bbwe!App" />
                    <start:DesktopApplicationTile Size="1x1" Column="0" Row="2" DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\Run.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="1" Row="2" DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\Command Prompt.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="2" Row="2" DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\Windows PowerShell\Windows PowerShell.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="3" Row="2" DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\Windows PowerShell\Windows PowerShell ISE.lnk" />
                </start:Group>
                <start:Group Name="Office" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout">
                    <start:DesktopApplicationTile Size="2x2" Column="0" Row="0" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Outlook 2016.lnk" />
                    <start:DesktopApplicationTile Size="2x2" Column="2" Row="0" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Word 2016.lnk" />
                    <start:DesktopApplicationTile Size="2x2" Column="4" Row="0" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Excel 2016.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="0" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\PowerPoint 2016.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="1" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\OneNote 2016.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="2" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Publisher 2016.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="3" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Access 2016.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="4" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Skype for Business 2016.lnk" />
                    <start:DesktopApplicationTile Size="2x2" Column="0" Row="0" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Outlook 2013.lnk" />
                    <start:DesktopApplicationTile Size="2x2" Column="2" Row="0" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Word 2013.lnk" />
                    <start:DesktopApplicationTile Size="2x2" Column="4" Row="0" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Excel 2013.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="0" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\PowerPoint 2013.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="1" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\OneNote 2013.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="2" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Publisher 2013.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="3" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Access 2013.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="4" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Skype for Business 2015.lnk" />
                    <start:DesktopApplicationTile Size="1x1" Column="4" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Skype for Business 2013.lnk" />
                </start:Group>
                <start:Group Name="Support" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout">
                    <start:SecondaryTile AppUserModelID="Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge"
                        TileID="CustomizeMe1"
                        Arguments="http://intranet/link/one"
                        DisplayName="My Hot Link"
                        Square150x150LogoUri="ms-appx:///Assets/MicrosoftEdgeSquare150x150.png" 
                        Wide310x150LogoUri="ms-appx:///Assets/MicrosoftEdgeWide310x150.png"
                        ShowNameOnSquare150x150Logo="true"
                        ShowNameOnWide310x150Logo="true"
                        Size="2x2" Column="0" Row="0"
                    />
                    <start:SecondaryTile AppUserModelID="Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge"
                        TileID="CustomizeMe2"
                        Arguments="http://intanet/link/two"
                        DisplayName="My Cool Link"
                        Square150x150LogoUri="ms-appx:///Assets/MicrosoftEdgeSquare150x150.png" 
                        Wide310x150LogoUri="ms-appx:///Assets/MicrosoftEdgeWide310x150.png"
                        ShowNameOnSquare150x150Logo="true"
                        ShowNameOnWide310x150Logo="true"
                        Size="2x2" Column="2" Row="0"
                    />
                    <start:DesktopApplicationTile Size="2x2" Column="4" Row="0" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft System Center\Configuration Manager\Software Center.lnk" />
                </start:Group>
            </defaultlayout:StartLayout>
        </StartLayoutCollection>
    </DefaultLayoutOverride>
    <CustomTaskbarLayoutCollection PinListPlacement="Replace">
        <defaultlayout:TaskbarLayout>
            <taskbar:TaskbarPinList>
                <taskbar:DesktopApp DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\File Explorer.lnk" />
                <taskbar:DesktopApp DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\Accessories\Internet Explorer.lnk"/>
                <taskbar:DesktopApp DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Outlook 2013.lnk"/>
                <taskbar:DesktopApp DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Outlook 2016.lnk"/>
            </taskbar:TaskbarPinList>
        </defaultlayout:TaskbarLayout>
    </CustomTaskbarLayoutCollection>
</LayoutModificationTemplate>
```



