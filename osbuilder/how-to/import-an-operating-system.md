# Import an Operating System

The next step is to import an Operating System.  In this example I have two ISO's attached to my Virtual Machine, Windows 10 1709 x64 and Windows 10 1803 x64.

![](/assets/2018-07-10_14-04-39.png)

---

### Import-OSMedia

This function has no parameters, so just execute.  It will search all Drives for sources\install.wim and Get-WindowsImage information from each.  Since it looks for a specific path, multi-boot OS Media will not work for now.  Be patient and let the scan finish.

![](/assets/2018-07-12_10-48-09.png)

Once the scanning is complete, a Grid will be displayed with all the available Operating Systems.  Multi-select the ones you want to import and press OK.  I have tested the import on 8 ISO's at the same time.

![](/assets/2018-07-10_14-07-53.png)

---

### Mounting the Install.wim

The first step is to mount the install.wim -ReadOnly from the Media.  This will determine the Update Build Revision \(UBR\), also known as the OS Build.  Mounting is required to get this information from NTOSKRNL as Get-WindowsImage is not reliable.

[https://www.microsoft.com/en-us/itpro/windows-10/release-information](https://www.microsoft.com/en-us/itpro/windows-10/release-information)

This issue is visible in the image below for Windows 10 1709.  The Version obtained by using Get-WindowsImage is not the same as the one obtained from NTOSKRNL.

16299.15 is not a valid UBR, but 16200.125 is [https://support.microsoft.com/en-us/help/4054517](https://support.microsoft.com/en-us/help/4054517)

I am not sure why the WIM information is not accurate, but this link may provide some insight on why.  Time to open a Case!

[https://blogs.technet.microsoft.com/askpfeplat/2014/12/07/how-to-correctly-check-file-versions-with-powershell/](https://blogs.technet.microsoft.com/askpfeplat/2014/12/07/how-to-correctly-check-file-versions-with-powershell/)

![](/assets/2018-07-12_10-58-50.png)

---

### Naming the OSMedia Directory

Once the UBR is obtained, the OSMedia directory name is generated.  This OSMedia directory is named in the following format:

```
<Image Name> <Architecture> <Build> <UBR>
```

Translating the UBR to a Build is done internally in OSBuilder, so it may not be recognized automatically.  In this case the directory is named in the following format:

```
<Image Name> <Architecture> <UBR>
```

OSMedia directories can be renamed as needed once Import-OSMedia is complete.

![](/assets/2018-07-12_11-04-35.png)

---

### Windows Image Configuration

This step is the key to OSBuilder.  The Operating System is mounted so it can generate full information about the image.  This includes a list of all installed AppxPackages as well as enabled Features, so no more guessing on what is installed in the WIM.  The configuration is also saved in JSON at OSBuilder\OSMedia\&lt;ImportedOS&gt;\info\json and XML at OSBuilder\OSMedia\&lt;ImportedOS&gt;\info\xml.  These files are used in creating the OSBuilder Tasks.

![](/assets/2018-07-12_11-05-29.png)

![](/assets/2018-07-12_11-06-46.png)

---

### WinPE Export

All boot images are exported, as well as WinRE into a WinPE subdirectory.  Full information is also captured and saved in the WinPE\info directory

![](/assets/2018-07-12_11-07-41.png)![](/assets/2018-07-12_11-08-39.png)

---

### Closing Steps

The install.wim is dismounted and configuration is saved from WinPE and the Install.wim

![](/assets/2018-07-12_11-09-57.png)Full information about what is in the Install.wim is displayed in the Console

![](/assets/2018-07-12_11-11-14.png)

To see any of this information, just check the PowerShell Transcript

![](/assets/2018-07-12_11-12-04.png)

---

### -Verbose

When using the -Verbose paramater, you can see all the PowerShell commands that are used.  This can be helpful if you are troubleshooting anything in OSBuilder, or just trying to learn PowerShell.

![](/assets/2018-07-12_11-21-37.png)

---

### Full Information

Here is the full information displayed at the end of Import-OSMedia

```
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
-Microsoft.XboxIdentityProvider
-Microsoft.XboxSpeechToTextOverlay
-Microsoft.ZuneMusic
-Microsoft.ZuneVideo

===========================================================================
Windows Packages
===========================================================================
-Microsoft-OneCore-ApplicationModel-Sync-Desktop-FOD-Package~31bf3856ad364e35~amd64~~10.0.16299.15
-Microsoft-Windows-Client-LanguagePack-Package~31bf3856ad364e35~amd64~en-US~10.0.16299.15
-Microsoft-Windows-EditionSpecific-Enterprise-WOW64-Package~31bf3856ad364e35~amd64~~10.0.16299.15
-Microsoft-Windows-Foundation-Package~31bf3856ad364e35~amd64~~10.0.16299.15
-Microsoft-Windows-InternetExplorer-Optional-Package~31bf3856ad364e35~amd64~~11.0.16299.15
-Microsoft-Windows-LanguageFeatures-Basic-en-us-Package~31bf3856ad364e35~amd64~~10.0.16299.15
-Microsoft-Windows-LanguageFeatures-Handwriting-en-us-Package~31bf3856ad364e35~amd64~~10.0.16299.15
-Microsoft-Windows-LanguageFeatures-OCR-en-us-Package~31bf3856ad364e35~amd64~~10.0.16299.15
-Microsoft-Windows-LanguageFeatures-Speech-en-us-Package~31bf3856ad364e35~amd64~~10.0.16299.15
-Microsoft-Windows-LanguageFeatures-TextToSpeech-en-us-Package~31bf3856ad364e35~amd64~~10.0.16299.15
-Microsoft-Windows-MediaPlayer-Package~31bf3856ad364e35~amd64~~10.0.16299.15
-Microsoft-Windows-QuickAssist-Package~31bf3856ad364e35~amd64~~10.0.16299.15
-Microsoft-Windows-Security-SPP-Component-SKU-Enterprise-GVLK-Package~31bf3856ad364e35~amd64~~10.0.16299.15

===========================================================================
Windows Update Packages
===========================================================================
-Package_for_KB4053577~31bf3856ad364e35~amd64~~10.0.1.0
-Package_for_RollupFix~31bf3856ad364e35~amd64~~16299.125.1.6

===========================================================================
Windows Capabilities
===========================================================================
-App.Support.QuickAssist~~~~0.0.1.0
-Browser.InternetExplorer~~~~0.0.11.0
-Language.Basic~~~en-US~0.0.1.0
-Language.Handwriting~~~en-US~0.0.1.0
-Language.OCR~~~en-US~0.0.1.0
-Language.Speech~~~en-US~0.0.1.0
-Language.TextToSpeech~~~en-US~0.0.1.0
-Language.UI.Client~~~en-US~
-Media.WindowsMediaPlayer~~~~0.0.12.0
-OneCoreUAP.OneSync~~~~0.0.1.0

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
-Xps-Foundation-Xps-Viewer
-Windows-Defender-Default-Definitions
-Printing-Foundation-Features
-FaxServicesClientPackage
-Printing-Foundation-InternetPrinting-Client
-Microsoft-Windows-NetFx3-OC-Package
-Microsoft-Windows-NetFx4-US-OC-Package
-Microsoft-Windows-NetFx3-WCF-OC-Package
-Microsoft-Windows-NetFx4-WCF-US-OC-Package
-SmbDirect
-Microsoft-Windows-NetFx-VCRedist-Package
-Microsoft-Windows-Printing-PrintToPDFServices-Package
-Microsoft-Windows-Printing-XPSServices-Package
-Microsoft-Windows-Client-EmbeddedExp-Package
-Internet-Explorer-Optional-amd64

===========================================================================
Windows Optional Features: Disabled
===========================================================================
-LegacyComponents
-DirectPlay
-SimpleTCP
-SNMP
-WMISnmpProvider
-Windows-Identity-Foundation
-Microsoft-Windows-Subsystem-Linux
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
-DataCenterBridging
-Microsoft-Hyper-V-All
-Microsoft-Hyper-V
-Microsoft-Hyper-V-Tools-All
-Microsoft-Hyper-V-Management-PowerShell
-Microsoft-Hyper-V-Management-Clients
-Microsoft-Hyper-V-Hypervisor
-Microsoft-Hyper-V-Services
-HostGuardian
-DirectoryServices-ADAM-Client
-Windows-Defender-ApplicationGuard
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
Version              : 10.0.16299.15
DirectoryCount       : 21480
FileCount            : 107942
CreatedTime          : 9/29/2017 9:55:22 AM
ModifiedTime         : 7/12/2018 10:57:18 AM
WIMBoot              : False
ImageType            : Wim
ImagePath            : C:\OSBuilder\OSMedia\Windows 10 Enterprise x64 1709 16299.125\OS\sources\install.wim
ImageName            : Windows 10 Enterprise
ImageIndex           : 1
ImageDescription     : Windows 10 Enterprise
ImageSize            : 16022009955
Architecture         : 9
ProductName          : Microsoft® Windows® Operating System
EditionId            : Enterprise
InstallationType     : Client
Hal                  : 
ProductType          : WinNT
ProductSuite         : Terminal Server
MajorVersion         : 10
MinorVersion         : 0
Build                : 16299
SPBuild              : 15
SPLevel              : 0
ImageBootable        : No
SystemRoot           : WINDOWS
Languages            : {en-US}
DefaultLanguageIndex : 0
LogPath              : C:\windows\Logs\DISM\dism.log
ScratchDirectory     : 
LogLevel             : WarningsInfo

Transcript stopped, output file is C:\OSBuilder\OSMedia\Windows 10 Enterprise x64 1709 16299.125\info\logs\2018-07-12-105340-Import-OSMedia.log
===========================================================================
Complete!
===========================================================================
```

---



