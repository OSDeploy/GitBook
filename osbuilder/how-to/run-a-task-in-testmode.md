# Run a Task in TestMode

**Time Required: 1-2 minutes**

Before executing any Task, I strongly recommend running things in TestMode and with the -Verbose parameter.  Since a Task on a good computer will take 30 minutes to an hour, this may save you some time in pointing out issues.

```
Invoke-OSBuilder -TestMode -Verbose
```

![](/assets/2018-07-14_1-00-12.png)

---

### Select a Task

You will be prompted to select one or more Tasks to run.  You can select multiple Tasks, but I strongly suggest a single Task.

![](/assets/2018-07-14_1-05-06.png)

---

### Execution

This is what part of the Console Output looks like.  The Verbose parameter adds the lines that start with VERBOSE:

![](/assets/2018-07-14_1-26-42.png)

Here are the same steps without the Verbose parameter

![](/assets/2018-07-14_1-29-13.png)

---

### Clean the TestMode Build

Running a Task with TestMode will create the Build in the OSBuilder TestMode directory.  This directory can be deleted after you ensure everything seems ok with the Task.

![](/assets/2018-07-14_1-20-21.png)

---

### Example Output

The following is the Console Output for one of my Tasks



```
**********************
Windows PowerShell transcript start
Start time: 20180714010518
Username: OSBUILDER\OSDeploy
RunAs User: OSBUILDER\OSDeploy
Configuration Name: 
Machine: OSBUILDER (Microsoft Windows NT 10.0.16299.0)
Host Application: C:\windows\system32\WindowsPowerShell\v1.0\PowerShell_ISE.exe
Process ID: 6328
PSVersion: 5.1.16299.547
PSEdition: Desktop
PSCompatibleVersions: 1.0, 2.0, 3.0, 4.0, 5.0, 5.1.16299.547
BuildVersion: 10.0.16299.547
CLRVersion: 4.0.30319.42000
WSManStackVersion: 3.0
PSRemotingProtocolVersion: 2.3
SerializationVersion: 1.1.0.1
**********************
Transcript started, output file is C:\OSBuilder\TestMode\build0518\info\logs\2018-07-14-010518-Invoke-OSBuilder.log

Working Path:		C:\OSBuilder\TestMode\build0518
-Info:			C:\OSBuilder\TestMode\build0518\info
-Logs:			C:\OSBuilder\TestMode\build0518\info\logs
-OS:			C:\OSBuilder\TestMode\build0518\OS
-WinPE:			C:\OSBuilder\TestMode\build0518\WinPE
===========================================================================
OSBuilder Task: C:\OSBuilder\Tasks\OSMedia Windows 10 x86 1803.json
===========================================================================
-TaskName:		OSMedia Windows 10 x86 1803
-TaskVersion:		18.7.15.1
-TaskType:		OSMedia
-Media Name:		Windows 10 Enterprise x86 1803 17134.112
-Media Path:		C:\OSBuilder\OSMedia\Windows 10 Enterprise x86 1803 17134.112
-Dynamic Media:		Literal
-Build Name:		build0518
-Build Path:		C:\OSBuilder\TestMode\build0518
-Servicing Stack:	C:\OSBuilder\Content\ServicingStacks\Windows 10 x86 1803
-Windows Update:	C:\OSBuilder\Content\WindowsUpdates\Windows 10 x86 1803
-Image Cleanup:		True
-Enable NetFx3:		False
-Remove Appx:
-Remove Package:
-Remove Capability:
-Enable Feature:
-Disable Feature:
-Language Packs:
-Drivers:
-Packages:
-Extra Files:
-Start Layout:
-Unattend:
-WinPE Update:		True
-WinPE DaRT:
-WinPE Drivers:	

===========================================================================
Creating OSBuild build0518
===========================================================================
Copying OS to C:\OSBuilder\TestMode\build0518
VERBOSE: Copy-Item -Path "C:\OSBuilder\OSMedia\Windows 10 Enterprise x86 1803 17134.112\*"
VERBOSE: -Destination "C:\OSBuilder\TestMode\build0518"
VERBOSE: -Exclude *.wim -Recurse -Force
Copying install.wim to C:\OSBuilder\TestMode\build0518\WimTemp\install.wim
VERBOSE: Copy-Item -Path "C:\OSBuilder\OSMedia\Windows 10 Enterprise x86 1803 17134.112\OS\sources\install.wim"
VERBOSE: -Destination "C:\OSBuilder\TestMode\build0518\WimTemp\install.wim"
VERBOSE: -Force
Copying WinPE to C:\OSBuilder\TestMode\build0518\WimTemp
VERBOSE: Copy-Item -Path "C:\OSBuilder\OSMedia\Windows 10 Enterprise x86 1803 17134.112\WinPE\*.wim"
VERBOSE: -Destination "C:\OSBuilder\TestMode\build0518\WimTemp"
VERBOSE: -Exclude boot.wim -Force
===========================================================================
WinPE Mount
===========================================================================
winpe.wim: Mounting to C:\OSBuilder\Content\Mount\winpe0518
VERBOSE: Mount-WindowsImage
VERBOSE: -ImagePath "C:\OSBuilder\TestMode\build0518\WimTemp\winpe.wim"
VERBOSE: -Index 1 -Path "C:\OSBuilder\Content\Mount\winpe0518" -Optimize
setup.wim: Mounting to C:\OSBuilder\Content\Mount\setup0519
VERBOSE: Mount-WindowsImage
VERBOSE: -ImagePath "C:\OSBuilder\TestMode\build0518\WimTemp\setup.wim"
VERBOSE: -Index 1 -Path "C:\OSBuilder\Content\Mount\setup0519" -Optimize
winre.wim: Mounting to C:\OSBuilder\Content\Mount\winre0519
VERBOSE: Mount-WindowsImage
VERBOSE: -ImagePath "C:\OSBuilder\TestMode\build0518\WimTemp\winre.wim"
VERBOSE: -Index 1 -Path "C:\OSBuilder\Content\Mount\winre0519" -Optimize
===========================================================================
WinPE Servicing Stack Update
===========================================================================
winpe.wim: C:\OSBuilder\Content\ServicingStacks\Windows 10 x86 1803\2018-07-09 KB4343669 Servicing Stack Update Windows 10 x86 1803 17134\windows10.0-kb4343669-x86.msu
VERBOSE: Add-WindowsPackage -Path "C:\OSBuilder\Content\Mount\winpe0518"
VERBOSE: -PackagePath "C:\OSBuilder\Content\ServicingStacks\Windows 10 x86 1803\2018-07-09 KB4343669 Servicing Stack Update Windows 10 x86 1803 17134\windows10.0-kb4343669-x86.msu"
setup.wim: C:\OSBuilder\Content\ServicingStacks\Windows 10 x86 1803\2018-07-09 KB4343669 Servicing Stack Update Windows 10 x86 1803 17134\windows10.0-kb4343669-x86.msu
VERBOSE: Add-WindowsPackage -Path "C:\OSBuilder\Content\Mount\setup0519"
VERBOSE: -PackagePath "C:\OSBuilder\Content\ServicingStacks\Windows 10 x86 1803\2018-07-09 KB4343669 Servicing Stack Update Windows 10 x86 1803 17134\windows10.0-kb4343669-x86.msu"
winre.wim: C:\OSBuilder\Content\ServicingStacks\Windows 10 x86 1803\2018-07-09 KB4343669 Servicing Stack Update Windows 10 x86 1803 17134\windows10.0-kb4343669-x86.msu
VERBOSE: Add-WindowsPackage -Path "C:\OSBuilder\Content\Mount\winre0519"
VERBOSE: -PackagePath "C:\OSBuilder\Content\ServicingStacks\Windows 10 x86 1803\2018-07-09 KB4343669 Servicing Stack Update Windows 10 x86 1803 17134\windows10.0-kb4343669-x86.msu"
===========================================================================
WinPE Windows Updates
===========================================================================
winpe.wim: C:\OSBuilder\Content\WindowsUpdates\Windows 10 x86 1803\2018-07-09 KB4338819 Cumulative Update Windows 10 x86 1803 17134.165\windows10.0-kb4338819-x86.msu
VERBOSE: Add-WindowsPackage -Path "C:\OSBuilder\Content\Mount\winpe0518"
VERBOSE: -PackagePath "C:\OSBuilder\Content\WindowsUpdates\Windows 10 x86 1803\2018-07-09 KB4338819 Cumulative Update Windows 10 x86 1803 17134.165\windows10.0-kb4338819-x86.msu"
setup.wim: C:\OSBuilder\Content\WindowsUpdates\Windows 10 x86 1803\2018-07-09 KB4338819 Cumulative Update Windows 10 x86 1803 17134.165\windows10.0-kb4338819-x86.msu
VERBOSE: Add-WindowsPackage -Path "C:\OSBuilder\Content\Mount\setup0519"
VERBOSE: -PackagePath "C:\OSBuilder\Content\WindowsUpdates\Windows 10 x86 1803\2018-07-09 KB4338819 Cumulative Update Windows 10 x86 1803 17134.165\windows10.0-kb4338819-x86.msu"
winre.wim: C:\OSBuilder\Content\WindowsUpdates\Windows 10 x86 1803\2018-07-09 KB4338819 Cumulative Update Windows 10 x86 1803 17134.165\windows10.0-kb4338819-x86.msu
VERBOSE: Add-WindowsPackage -Path "C:\OSBuilder\Content\Mount\winre0519"
VERBOSE: -PackagePath "C:\OSBuilder\Content\WindowsUpdates\Windows 10 x86 1803\2018-07-09 KB4338819 Cumulative Update Windows 10 x86 1803 17134.165\windows10.0-kb4338819-x86.msu"
===========================================================================
WinPE DaRT
===========================================================================
WARNING: WinPE DaRT was not enabled by this Task
===========================================================================
WinPE Drivers
===========================================================================
WARNING: WinPE Drivers was not enabled by this Task
===========================================================================
WinPE Cleanup Image
===========================================================================
winpe.wim: Performing WinPE Image Cleanup on C:\OSBuilder\Content\Mount\winpe0518
VERBOSE: Dism /Image:"C:\OSBuilder\Content\Mount\winpe0518" /Cleanup-Image /StartComponentCleanup /ResetBase
setup.wim: Performing WinPE Image Cleanup on C:\OSBuilder\Content\Mount\setup0519
VERBOSE: Dism /Image:"C:\OSBuilder\Content\Mount\setup0519" /Cleanup-Image /StartComponentCleanup /ResetBase
winre.wim: Performing WinPE Image Cleanup on C:\OSBuilder\Content\Mount\winre0519
VERBOSE: Dism /Image:"C:\OSBuilder\Content\Mount\winre0519" /Cleanup-Image /StartComponentCleanup /ResetBase
===========================================================================
WinPE Dismount and Save
===========================================================================
winpe.wim: Dismount and Save C:\OSBuilder\Content\Mount\winpe0518
VERBOSE: Dismount-WindowsImage -Path "C:\OSBuilder\Content\Mount\winpe0518" -Save
setup.wim: Dismount and Save C:\OSBuilder\Content\Mount\setup0519
VERBOSE: Dismount-WindowsImage -Path "C:\OSBuilder\Content\Mount\setup0519" -Save
winre.wim: Dismount and Save C:\OSBuilder\Content\Mount\winre0519
VERBOSE: Dismount-WindowsImage -Path "C:\OSBuilder\Content\Mount\winre0519" -Save
===========================================================================
Exporting WinPE WIMs
===========================================================================
winpe.wim: Exporting to C:\OSBuilder\TestMode\build0518\WinPE\winpe.wim
VERBOSE: Export-WindowsImage
VERBOSE: -SourceImagePath "C:\OSBuilder\TestMode\build0518\WimTemp\winpe.wim" -SourceIndex 1
VERBOSE: -DestinationImagePath "C:\OSBuilder\TestMode\build0518\WinPE\winpe.wim"


LogPath : C:\OSBuilder\TestMode\build0518\info\logs\2018-07-14-010542-Export-WindowsImage-winpe.wim.log

setup.wim: Exporting to C:\OSBuilder\TestMode\build0518\WinPE\setup.wim
VERBOSE: Export-WindowsImage
VERBOSE: -SourceImagePath "C:\OSBuilder\TestMode\build0518\WimTemp\setup.wim" -SourceIndex 1
VERBOSE: -DestinationImagePath "C:\OSBuilder\TestMode\build0518\WinPE\setup.wim"
LogPath : C:\OSBuilder\TestMode\build0518\info\logs\2018-07-14-010545-Export-WindowsImage-setup.wim.log

winre.wim: Exporting to C:\OSBuilder\TestMode\build0518\WinPE\winre.wim
VERBOSE: Export-WindowsImage
VERBOSE: -SourceImagePath "C:\OSBuilder\TestMode\build0518\WimTemp\winre.wim" -SourceIndex 1
VERBOSE: -DestinationImagePath "C:\OSBuilder\TestMode\build0518\WinPE\winre.wim"
LogPath : C:\OSBuilder\TestMode\build0518\info\logs\2018-07-14-010547-Export-WindowsImage-winre.wim.log

===========================================================================
Rebuilding Boot.wim
===========================================================================
Rebuilding updated Boot.wim Index 1 at C:\OSBuilder\TestMode\build0518\WinPE\boot.wim
VERBOSE: Export-WindowsImage
VERBOSE: -SourceImagePath "C:\OSBuilder\TestMode\build0518\WimTemp\winpe.wim"
VERBOSE: -SourceIndex 1
VERBOSE: -DestinationImagePath "C:\OSBuilder\TestMode\build0518\WinPE\boot.wim"
LogPath : C:\OSBuilder\TestMode\build0518\info\logs\2018-07-14-010549-Export-WindowsImage-boot.wim.log

Rebuilding updated Boot.wim Index 2 at C:\OSBuilder\TestMode\build0518\WinPE\boot.wim
VERBOSE: Export-WindowsImage
VERBOSE: -SourceImagePath "C:\OSBuilder\TestMode\build0518\WimTemp\setup.wim"
VERBOSE: -SourceIndex 1
VERBOSE: -DestinationImagePath "C:\OSBuilder\TestMode\build0518\WinPE\boot.wim"
VERBOSE: -Setbootable
LogPath : C:\OSBuilder\TestMode\build0518\info\logs\2018-07-14-010550-Export-WindowsImage-boot.wim.log

Copying Boot.wim to C:\OSBuilder\TestMode\build0518\OS\sources\boot.wim
VERBOSE: Copy-Item -Path "C:\OSBuilder\TestMode\build0518\WinPE\boot.wim"
VERBOSE: -Destination "C:\OSBuilder\TestMode\build0518\OS\sources\boot.wim"
VERBOSE: -Force
===========================================================================
Mounting Operating System Install.wim
===========================================================================
C:\OSBuilder\Content\Mount\os0518
VERBOSE: Mount-WindowsImage -Optimize
VERBOSE: -ImagePath "C:\OSBuilder\TestMode\build0518\WimTemp\install.wim"
VERBOSE: -Index 1
VERBOSE: -Path "C:\OSBuilder\Content\Mount\os0518"
===========================================================================
Replacing WinRE.wim
===========================================================================
Removing existing C:\OSBuilder\Content\Mount\os0518\Windows\System32\Recovery\winre.wim
Copying WinRE.wim to C:\OSBuilder\Content\Mount\os0518\Windows\System32\Recovery\winre.wim
VERBOSE: Copy-Item -Path "C:\OSBuilder\TestMode\build0518\WinPE\winre.wim"
VERBOSE: -Destination "C:\OSBuilder\Content\Mount\os0518\Windows\System32\Recovery\winre.wim"
VERBOSE: -Force
Generating WinRE.wim info
VERBOSE: Get-WindowsImage
VERBOSE: -ImagePath "C:\OSBuilder\Content\Mount\os0518\Windows\System32\Recovery\winre.wim"
VERBOSE: -Index 1
===========================================================================
Servicing Stack Update
===========================================================================
C:\OSBuilder\Content\ServicingStacks\Windows 10 x86 1803\2018-07-09 KB4343669 Servicing Stack Update Windows 10 x86 1803 17134\windows10.0-kb4343669-x86.msu
VERBOSE: Add-WindowsPackage -Path "C:\OSBuilder\Content\Mount\os0518"
VERBOSE: -PackagePath "C:\OSBuilder\Content\ServicingStacks\Windows 10 x86 1803\2018-07-09 KB4343669 Servicing Stack Update Windows 10 x86 1803 17134\windows10.0-kb4343669-x86.msu"
===========================================================================
Windows Updates
===========================================================================
C:\OSBuilder\Content\WindowsUpdates\Windows 10 x86 1803\2018-07-09 KB4338819 Cumulative Update Windows 10 x86 1803 17134.165\windows10.0-kb4338819-x86.msu
VERBOSE: Add-WindowsPackage -Path "C:\OSBuilder\Content\Mount\os0518"
VERBOSE: -PackagePath "C:\OSBuilder\Content\WindowsUpdates\Windows 10 x86 1803\2018-07-09 KB4338819 Cumulative Update Windows 10 x86 1803 17134.165\windows10.0-kb4338819-x86.msu"
C:\OSBuilder\Content\WindowsUpdates\Windows 10 x86 1803\2018-07-09 KB4338832 Security Update for Adobe Flash Player Windows 10 x86 1803 17134\windows10.0-kb4338832-x86.msu
VERBOSE: Add-WindowsPackage -Path "C:\OSBuilder\Content\Mount\os0518"
VERBOSE: -PackagePath "C:\OSBuilder\Content\WindowsUpdates\Windows 10 x86 1803\2018-07-09 KB4338832 Security Update for Adobe Flash Player Windows 10 x86 1803 17134\windows10.0-kb4338832-x86.msu"
===========================================================================
Windows Cleanup Image
===========================================================================
Performing Image Cleanup on C:\OSBuilder\Content\Mount\os0518
VERBOSE: Dism /Image:"C:\OSBuilder\Content\Mount\os0518" /Cleanup-Image /StartComponentCleanup /ResetBase
===========================================================================
NetFX 3.5
===========================================================================
WARNING: NetFX 3.5 not configured by this Task
===========================================================================
Remove Appx Packages
===========================================================================
WARNING: Remove Appx Packages not configured by this Task
===========================================================================
Remove Packages
===========================================================================
WARNING: Remove Packages not configured by this Task
===========================================================================
Remove Capability
===========================================================================
WARNING: Remove Capability not configured by this Task
===========================================================================
Enable Feature
===========================================================================
WARNING: Enable Feature not configured by this Task
===========================================================================
Disable Feature
===========================================================================
WARNING: Disable Feature not configured by this Task
===========================================================================
Language Packs
===========================================================================
WARNING: Language Packs not configured by this Task
===========================================================================
Add Packages
===========================================================================
WARNING: Add Packages was not configured by this Task
===========================================================================
Add Drivers
===========================================================================
WARNING: Add Drivers was not configured by this Task
===========================================================================
Extra Files
===========================================================================
WARNING: Extra Files was not configured by this Task
===========================================================================
Start Layout
===========================================================================
WARNING: Start Layout was not configured by this Task
===========================================================================
Unattend.xml
===========================================================================
WARNING: Use-WindowsUnattend was not configured by this Task
===========================================================================
Saving Mounted Windows Image Configuration
===========================================================================
C:\OSBuilder\TestMode\build0518\AppxProvisionedPackage.txt
VERBOSE: Get-AppxProvisionedPackage
VERBOSE: -Path "C:\OSBuilder\Content\Mount\os0518"
VERBOSE: -Out-File "C:\OSBuilder\TestMode\build0518\AppxProvisionedPackage.txt"
C:\OSBuilder\TestMode\build0518\WindowsOptionalFeature.txt
VERBOSE: Get-WindowsOptionalFeature
VERBOSE: -Path "C:\OSBuilder\Content\Mount\os0518"
VERBOSE: -Out-File "C:\OSBuilder\TestMode\build0518\WindowsOptionalFeature.txt"
C:\OSBuilder\TestMode\build0518\WindowsCapability.txt
VERBOSE: Get-WindowsCapability
VERBOSE: -Path "C:\OSBuilder\Content\Mount\os0518"
VERBOSE: -Out-File "C:\OSBuilder\TestMode\build0518\WindowsCapability.txt"
C:\OSBuilder\TestMode\build0518\WindowsPackage.txt
VERBOSE: Get-WindowsPackage
VERBOSE: -Path "C:\OSBuilder\Content\Mount\os0518"
VERBOSE: -Out-File "C:\OSBuilder\TestMode\build0518\WindowsPackage.txt"
===========================================================================
Dismount and Save
===========================================================================
Dismount and Save C:\OSBuilder\Content\Mount\os0518
VERBOSE: Dismount-WindowsImage -Path "C:\OSBuilder\Content\Mount\os0518" -Save
===========================================================================
Export Install.wim
===========================================================================
Exporting C:\OSBuilder\TestMode\build0518\WimTemp\install.wim
VERBOSE: Export-WindowsImage
VERBOSE: -SourceImagePath "C:\OSBuilder\TestMode\build0518\WimTemp\install.wim"
VERBOSE: -DestinationImagePath "C:\OSBuilder\TestMode\build0518\OS\sources\install.wim"
VERBOSE: -SourceIndex 1
LogPath : C:\OSBuilder\TestMode\build0518\info\logs\2018-07-14-010551-Export-WindowsImage.log

===========================================================================
Saving WinPE Image Configuration
===========================================================================
C:\OSBuilder\TestMode\build0518\WinPE\info\boot.txt
VERBOSE: Get-WindowsImage
VERBOSE: -ImagePath "C:\OSBuilder\TestMode\build0518\OS\sources\boot.wim"
C:\OSBuilder\TestMode\build0518\WinPE\info\winpe.txt
VERBOSE: Get-WindowsImage
VERBOSE: -ImagePath "C:\OSBuilder\TestMode\build0518\OS\sources\boot.wim"
VERBOSE: -Index 1
C:\OSBuilder\TestMode\build0518\WinPE\info\setup.txt
VERBOSE: Get-WindowsImage
VERBOSE: -ImagePath "C:\OSBuilder\TestMode\build0518\OS\sources\boot.wim"
VERBOSE: -Index 2
===========================================================================
Saving Windows Image Configuration
===========================================================================
C:\OSBuilder\TestMode\build0518\WindowsImage.txt
VERBOSE: Get-WindowsImage
VERBOSE: -ImagePath "C:\OSBuilder\TestMode\build0518\OS\sources\install.wim"
VERBOSE: -Index 1
C:\OSBuilder\TestMode\build0518\info\Get-WindowsImageContent.txt
VERBOSE: Get-WindowsImageContent
VERBOSE: -ImagePath "C:\OSBuilder\TestMode\build0518\OS\Sources\install.wim"
VERBOSE: -Index: 1
VERBOSE: -Out-File "C:\OSBuilder\TestMode\build0518\info\Get-WindowsImageContent.txt"
===========================================================================
Reading Windows Image Configuration
===========================================================================
C:\OSBuilder\TestMode\build0518\info\json\Get-AppxProvisionedPackage.json
C:\OSBuilder\TestMode\build0518\info\json\Get-WindowsPackage.json
C:\OSBuilder\TestMode\build0518\info\json\Get-WindowsCapability.json
C:\OSBuilder\TestMode\build0518\info\json\Get-WindowsOptionalFeature.json

===========================================================================
Appx Packages
===========================================================================
-Microsoft.BingWeather
-Microsoft.DesktopAppInstaller
-Microsoft.GetHelp
-Microsoft.Getstarted
-Microsoft.Messaging
-Microsoft.Microsoft3DViewer
-Microsoft.MicrosoftOfficeHub
-Microsoft.MicrosoftSolitaireCollection
-Microsoft.MicrosoftStickyNotes
-Microsoft.MSPaint
-Microsoft.Office.OneNote
-Microsoft.OneConnect
-Microsoft.People
-Microsoft.Print3D
-Microsoft.SkypeApp
-Microsoft.StorePurchaseApp
-Microsoft.Wallet
-Microsoft.WebMediaExtensions
-Microsoft.Windows.Photos
-Microsoft.WindowsAlarms
-Microsoft.WindowsCalculator
-Microsoft.WindowsCamera
-microsoft.windowscommunicationsapps
-Microsoft.WindowsFeedbackHub
-Microsoft.WindowsMaps
-Microsoft.WindowsSoundRecorder
-Microsoft.WindowsStore
-Microsoft.Xbox.TCUI
-Microsoft.XboxApp
-Microsoft.XboxGameOverlay
-Microsoft.XboxGamingOverlay
-Microsoft.XboxIdentityProvider
-Microsoft.XboxSpeechToTextOverlay
-Microsoft.ZuneMusic
-Microsoft.ZuneVideo

===========================================================================
Windows Packages
===========================================================================
-Microsoft-OneCore-ApplicationModel-Sync-Desktop-FOD-Package~31bf3856ad364e35~x86~~10.0.17134.1
-Microsoft-Windows-Client-LanguagePack-Package~31bf3856ad364e35~x86~en-US~10.0.17134.1
-Microsoft-Windows-Foundation-Package~31bf3856ad364e35~x86~~10.0.17134.1
-Microsoft-Windows-Hello-Face-Resource-A-Package~31bf3856ad364e35~x86~~10.0.17134.1
-Microsoft-Windows-Hello-Face-Resource-B-Package~31bf3856ad364e35~x86~~10.0.17134.1
-Microsoft-Windows-Hello-Face-Resource-C-Package~31bf3856ad364e35~x86~~10.0.17134.1
-Microsoft-Windows-InternetExplorer-Optional-Package~31bf3856ad364e35~x86~~11.0.17134.1
-Microsoft-Windows-LanguageFeatures-Basic-en-us-Package~31bf3856ad364e35~x86~~10.0.17134.1
-Microsoft-Windows-LanguageFeatures-Handwriting-en-us-Package~31bf3856ad364e35~x86~~10.0.17134.1
-Microsoft-Windows-LanguageFeatures-OCR-en-us-Package~31bf3856ad364e35~x86~~10.0.17134.1
-Microsoft-Windows-LanguageFeatures-Speech-en-us-Package~31bf3856ad364e35~x86~~10.0.17134.1
-Microsoft-Windows-LanguageFeatures-TextToSpeech-en-us-Package~31bf3856ad364e35~x86~~10.0.17134.1
-Microsoft-Windows-MediaPlayer-Package~31bf3856ad364e35~x86~~10.0.17134.1
-Microsoft-Windows-QuickAssist-Package~31bf3856ad364e35~x86~~10.0.17134.1
-OpenSSH-Client-Package~31bf3856ad364e35~x86~~10.0.17134.1

===========================================================================
Windows Update Packages
===========================================================================
-Package_for_KB4287903~31bf3856ad364e35~x86~~10.0.1.0
-Package_for_RollupFix~31bf3856ad364e35~x86~~17134.112.1.7

===========================================================================
Windows Capabilities
===========================================================================
-App.Support.QuickAssist~~~~0.0.1.0
-Browser.InternetExplorer~~~~0.0.11.0
-Hello.Face.Resource.A~~~~0.0.1.0
-Hello.Face.Resource.B~~~~0.0.1.0
-Hello.Face.Resource.C~~~~0.0.1.0
-Language.Basic~~~en-US~0.0.1.0
-Language.Handwriting~~~en-US~0.0.1.0
-Language.OCR~~~en-US~0.0.1.0
-Language.Speech~~~en-US~0.0.1.0
-Language.TextToSpeech~~~en-US~0.0.1.0
-Language.UI.Client~~~en-US~
-Media.WindowsMediaPlayer~~~~0.0.12.0
-OneCoreUAP.OneSync~~~~0.0.1.0
-OpenSSH.Client~~~~0.0.1.0

===========================================================================
Windows Optional Features: Enabled
===========================================================================
-MicrosoftWindowsPowerShellV2Root
-MicrosoftWindowsPowerShellV2
-WorkFolders-Client
-MediaPlayback
-WindowsMediaPlayer
-WCF-Services45
-WCF-TCP-PortSharing45
-NetFx4-AdvSrvs
-Printing-PrintToPDFServices-Features
-Printing-XPSServices-Features
-MSRDC-Infrastructure
-SearchEngine-Client-Package
-Windows-Defender-Default-Definitions
-Printing-Foundation-Features
-FaxServicesClientPackage
-Printing-Foundation-InternetPrinting-Client
-Microsoft-Windows-NetFx3-OC-Package
-Microsoft-Windows-NetFx4-US-OC-Package
-Microsoft-Windows-NetFx3-WCF-OC-Package
-Microsoft-Windows-NetFx4-WCF-US-OC-Package
-Microsoft-Windows-NetFx-VCRedist-Package
-Microsoft-Windows-Printing-PrintToPDFServices-Package
-Microsoft-Windows-Printing-XPSServices-Package
-Microsoft-Windows-Client-EmbeddedExp-Package
-Internet-Explorer-Optional-x86

===========================================================================
Windows Optional Features: Disabled
===========================================================================
-LegacyComponents
-DirectPlay
-NTVDM
-SimpleTCP
-SNMP
-WMISnmpProvider
-Windows-Identity-Foundation
-Client-ProjFS
-IIS-WebServerRole
-IIS-WebServer
-IIS-CommonHttpFeatures
-IIS-HttpErrors
-IIS-HttpRedirect
-IIS-ApplicationDevelopment
-IIS-NetFxExtensibility
-IIS-NetFxExtensibility45
-IIS-HealthAndDiagnostics
-IIS-HttpLogging
-IIS-LoggingLibraries
-IIS-RequestMonitor
-IIS-HttpTracing
-IIS-Security
-IIS-URLAuthorization
-IIS-RequestFiltering
-IIS-IPSecurity
-IIS-Performance
-IIS-HttpCompressionDynamic
-IIS-WebServerManagementTools
-IIS-ManagementScriptingTools
-IIS-IIS6ManagementCompatibility
-IIS-Metabase
-WAS-WindowsActivationService
-WAS-ProcessModel
-WAS-NetFxEnvironment
-WAS-ConfigurationAPI
-IIS-HostableWebCore
-WCF-HTTP-Activation
-WCF-NonHTTP-Activation
-WCF-HTTP-Activation45
-WCF-TCP-Activation45
-WCF-Pipe-Activation45
-WCF-MSMQ-Activation45
-IIS-StaticContent
-IIS-DefaultDocument
-IIS-DirectoryBrowsing
-IIS-WebDAV
-IIS-WebSockets
-IIS-ApplicationInit
-IIS-ASPNET
-IIS-ASPNET45
-IIS-ASP
-IIS-CGI
-IIS-ISAPIExtensions
-IIS-ISAPIFilter
-IIS-ServerSideIncludes
-IIS-CustomLogging
-IIS-BasicAuthentication
-IIS-HttpCompressionStatic
-IIS-ManagementConsole
-IIS-ManagementService
-IIS-WMICompatibility
-IIS-LegacyScripts
-IIS-LegacySnapIn
-IIS-FTPServer
-IIS-FTPSvc
-IIS-FTPExtensibility
-MSMQ-Container
-MSMQ-Server
-MSMQ-Triggers
-MSMQ-ADIntegration
-MSMQ-HTTP
-MSMQ-Multicast
-MSMQ-DCOMProxy
-IIS-CertProvider
-IIS-WindowsAuthentication
-IIS-DigestAuthentication
-IIS-ClientCertificateMappingAuthentication
-IIS-IISCertificateMappingAuthentication
-IIS-ODBCLogging
-NetFx4Extended-ASPNET45
-RasRip
-SMB1Protocol
-SMB1Protocol-Client
-SMB1Protocol-Server
-TelnetClient
-TFTP
-Printing-Foundation-LPDPrintService
-Printing-Foundation-LPRPortMonitor
-ScanManagementConsole
-TIFFIFilter
-Microsoft-Hyper-V-All
-Microsoft-Hyper-V
-Microsoft-Hyper-V-Tools-All
-Microsoft-Hyper-V-Management-PowerShell
-Microsoft-Hyper-V-Management-Clients
-DirectoryServices-ADAM-Client
-ServicesForNFS-ClientOnly
-ClientForNFS-Infrastructure
-NFS-Administration
-Containers
-RasCMAK
-Client-DeviceLockdown
-Client-EmbeddedShellLauncher
-Client-EmbeddedBootExp
-Client-EmbeddedLogon
-Client-KeyboardFilter
-Client-UnifiedWriteFilter
-MultiPoint-Connector
-MultiPoint-Connector-Services
-MultiPoint-Tools

===========================================================================
Windows Optional Features: Disabled with Payload Removed
===========================================================================
-NetFx3

===========================================================================
Windows Image Information
===========================================================================
Version              : 10.0.17134.1
DirectoryCount       : 15635
FileCount            : 81824
CreatedTime          : 6/19/2018 2:45:26 PM
ModifiedTime         : 7/14/2018 1:06:06 AM
WIMBoot              : False
ImageType            : Wim
ImagePath            : C:\OSBuilder\TestMode\build0518\OS\sources\install.wim
ImageName            : Windows 10 Enterprise
ImageIndex           : 1
ImageDescription     : Windows 10 Enterprise
ImageSize            : 11467202928
Architecture         : 0
ProductName          : Microsoft® Windows® Operating System
EditionId            : Enterprise
InstallationType     : Client
Hal                  : 
ProductType          : WinNT
ProductSuite         : Terminal Server
MajorVersion         : 10
MinorVersion         : 0
Build                : 17134
SPBuild              : 1
SPLevel              : 112
ImageBootable        : No
SystemRoot           : WINDOWS
Languages            : {en-US}
DefaultLanguageIndex : 0
LogPath              : C:\windows\Logs\DISM\dism.log
ScratchDirectory     : 
LogLevel             : WarningsInfo
UBR                  : 

===========================================================================

WARNING: The Update Build Revision did not change after Windows Updates
WARNING: There may have been an issue applying the Cumulative Update if this was not expected

===========================================================================
Renaming "C:\OSBuilder\TestMode\build0518" to "Windows 10 Enterprise x86 1803 test0615"
===========================================================================
Transcript stopped, output file is C:\OSBuilder\TestMode\build0518\info\logs\2018-07-14-010518-Invoke-OSBuilder.log
===========================================================================
Complete!
===========================================================================
```

---



