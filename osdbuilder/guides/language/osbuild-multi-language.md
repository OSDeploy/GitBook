# OSBuild Multi-Language

## Purpose

There are probably a handful of people that can properly create Windows Multi-Language Media, its not as simple as injecting Language Packs.  The purpose of this guide is to fully detail how this is done properly with Windows 10 1809 x64

## Select Primary Language

In this example, I am going to combine the 5 Languages in Windows.  I should refer to 

{% embed url="https://support.microsoft.com/en-us/help/14236/language-packs" %}

| **Language** | **LP** | **Base Language Required** |
| :--- | :--- | :--- |
| English \(US\) | en-US | Any Language |
| English \(International\) | en-GB | Any Language |
| French | fr-FR | Any Language |
| German | de-DE | Any Language |
| Spanish | es-ES | Any Language |

I'm in luck that there are no requirements on the Base Language.  This means that any language can be used as the Base Language.  I'll take the easy road and use English \(US\)

## Download Windows Media

{% embed url="https://www.osdeploy.com/osdbuilder/docs/basics/import-osmedia/feature-update-vl-media" %}

I will need the original OS Media for each of the Operating Systems that I want to include.  If you already have your ISO's, you can skip this step, otherwise you can use the following command to download Volume Licensing Media for Windows 10 1809 x64

```text
Get-DownOSDBuilder -MediaESD Download
```

![](../../../.gitbook/assets/image%20%28165%29.png)

Keep in mind that this may take a considerable amount of time as the files must be downloaded and extracted

![](../../../.gitbook/assets/image%20%2828%29.png)

## Import-OSMedia

Use Import-OSMedia to import the Primary OS into OSDBuilder

![](../../../.gitbook/assets/image%20%2854%29.png)

## Update-OSMedia

{% embed url="https://www.osdeploy.com/osdbuilder/docs/basics/update-osmedia" %}

The Primary OS will need to be updated.  Use Update-OSMedia to do this

![](../../../.gitbook/assets/image%20%28230%29.png)

## ISO Extract FOD and Language

Download and extract the following ISOs from MVLS or MSDN as shown in the image below

* **Windows 10 1809 Features on Demand x64**
* **Windows 10 1809 Language**

![](../../../.gitbook/assets/image%20%28131%29.png)

In the Windows 10 1809 Language content, delete the directories and files for the Languages that will not be in your Media.  Do not delete your Primary OSMedia Language files

![](../../../.gitbook/assets/image%20%28185%29.png)

## Windows ADK

{% embed url="https://www.osdeploy.com/osdbuilder/docs/basics/content/adk" %}

Add the Windows ADK to the proper Content directory

![](../../../.gitbook/assets/image%20%2834%29.png)

If you have the Languages ISO in your ISOExtract directory, delete ALL the Language sub-directories from the following location

```text
<OSDBuilder Home>\Content\ADK\Windows 10 1809\Windows Preinstallation Environment\amd64\WinPE_OCs
```

![](../../../.gitbook/assets/image%20%2824%29.png)

## New-OSBuildTask -ContentLanguagePackages

Create a New-OSBuildTask with the following parameters

```text
New-OSBuildTask -Kind Task -TaskName "Windows 10 1809 x64 Multi" -ContentLanguagePackages
```

Select the Language Packs to add and press OK.  There is no need to select the Primary OSMedia Language

![](../../../.gitbook/assets/image%20%28143%29.png)

Select the Language Features on Demand to add when prompted.  To make things easier, select a single Language and press OK.  There is no need to add the Primary OSMedia Language

![](../../../.gitbook/assets/image%20%28148%29.png)

Select any Local Experience Packs to add and press OK.  Press Cancel if you do not need to add any

![](../../../.gitbook/assets/image%20%28139%29.png)

Repeat the same Command Line to keep adding the additional Language Features on Demand.  The previously selected ones will remain.  Press Cancel if you are prompted to select Language Packs or Local Experience Packs and don't have anything to add.

![](../../../.gitbook/assets/image%20%28200%29.png)

When complete the Task JSON should look similar to the image below

![](../../../.gitbook/assets/image%20%28121%29.png)

## WinPE Installed Packages

To properly add the Language Resources that you need, you have to know what Features are in the different Windows PE's.  OSDBuilder captures this information in a TXT, JSON, and XML format

![](../../../.gitbook/assets/image%20%28135%29.png)

You can easily pull a list using PowerShell

```text
$WinPE = "<OSDBuilder Home>\OSMedia\Windows 10 Enterprise x64 1809 17763.404\WinPE\info\xml\Get-WindowsPackage-WinPE.xml"
Import-Clixml $WinPE | ? {$_.ReleaseType -like "*LanguagePack*"} | Select -Property PackageName
```

But I will provide what is in mine to save you some time

### WinPE

```text
Microsoft-Windows-WinPE-LanguagePack-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1
WinPE-ATBroker-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                      
WinPE-AudioCore-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                     
WinPE-AudioDrivers-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                  
WinPE-EnhancedStorage-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1               
WinPE-Narrator-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                      
WinPE-Scripting-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                     
WinPE-SecureStartup-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                 
WinPE-Speech-TTS-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                    
WinPE-SRH-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                           
WinPE-SRT-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                           
WinPE-WDS-Tools-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                     
WinPE-WMI-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1 
```

### WinRE

```text
Microsoft-Windows-WinPE-AppxPackaging-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1
Microsoft-Windows-WinPE-LanguagePack-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1 
Microsoft-Windows-WinPE-OpcServices-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1  
WinPE-AppxPackaging-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                  
WinPE-ATBroker-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                       
WinPE-AudioCore-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                      
WinPE-AudioDrivers-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                   
WinPE-EnhancedStorage-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                
WinPE-HTA-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                            
WinPE-Narrator-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                       
WinPE-OpcServices-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                    
WinPE-Rejuv-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                          
WinPE-Scripting-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                      
WinPE-SecureStartup-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                  
WinPE-Speech-TTS-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                     
WinPE-SRH-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                            
WinPE-SRT-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                            
WinPE-StorageWMI-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                     
WinPE-WDS-Tools-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                      
WinPE-WiFi-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                           
WinPE-WMI-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1 
```

### WinSE

```text
Microsoft-Windows-WinPE-LanguagePack-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1
WinPE-ATBroker-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                      
WinPE-AudioCore-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                     
WinPE-AudioDrivers-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                  
WinPE-EnhancedStorage-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1               
WinPE-Narrator-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                      
WinPE-Scripting-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                     
WinPE-SecureStartup-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                 
WinPE-Setup-Client-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                  
WinPE-Setup-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                         
WinPE-Speech-TTS-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                    
WinPE-SRH-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                           
WinPE-SRT-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                           
WinPE-WDS-Tools-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1                     
WinPE-WMI-Package~31bf3856ad364e35~amd64~en-US~10.0.17763.1   
```

## New-OSBuildTask -ContentWinPEADK \(Multiple Passes\)

You will probably have to run this command a few times to build out your Task properly.  Here are some points:

* **WinPE is presented in the following order: WinPE, WinRE, WinSE**
* **The WinPE you are selecting for is in the Title Bar**
* **Sort by Name**
* **Filter the GridView**
* **Match the installed Feature list**
* **For WinPE-Speech-TTS, you will need the Parent Language Package \(if one exists\)**
* **Repeat the command line as many times as you need to edit the same Task**

![](../../../.gitbook/assets/image%20%2851%29.png)

## New-OSBuild

When you have your Task sorted out you can create your build.  Here is what the WinPE Language integration should looks like

![](../../../.gitbook/assets/image%20%28164%29.png)

Language Packs and Language Features will be installed.  The Lang.ini will be updated

![](../../../.gitbook/assets/image%20%28166%29.png)

When complete, the new OSBuild will be created.  If you did not select a Custom Name, the Languages will be added to the default name.  Additionally an OSBuild.json file will be included which will contain the Task + Templates that were used to create the OSMedia

![](../../../.gitbook/assets/image%20%28110%29.png)

## Media Language Merge

The final step is to combine the OSBuild with the Language specific OSMedia.  This will add Language Resources needed for Windows Setup. Keep in mind when performing Upgrades, you are using Windows Setup, so this applies to imaging from an ISO or Upgrades

Microsoft details that you need to copy the contents of the Sources directory

![](../../../.gitbook/assets/image%20%28176%29.png)

{% embed url="https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/add-multilingual-support-to-windows-setup\#step-3-add-localized-windows-setup-resources-to-the-windows-distribution" %}

But this does not include the Language resources for Boot and Logging

![](../../../.gitbook/assets/image%20%2844%29.png)

Windows ADK does contain some files, but not everything, so don't use this

![](../../../.gitbook/assets/image%20%28169%29.png)

If you used **`Get-DownOSDBuilder,`** then you should have downloaded Windows in the other languages that you need.  If you did this, you can write a script to perform this task

```text
$MediaDirectory = "D:\OSDBuilder\Langs\Media"
$DestinationOS = "D:\OSDBuilder\Langs\OSBuilds\Windows 10 Enterprise x64 1809 17763.404 de-DE en-GB en-US es-ES fr-FR\OS"

Get-ChildItem "$MediaDirectory" | `
Where-Object {$_.PSIsContainer -eq $true} | `
Select -Property Name, FullName | `
foreach {
    robocopy "$($_.FullName)" "$DestinationOS" *.* /e /ndl /xc /xn /xo /xf /xx *.wim /np
}
```

When complete, you will have a Merged OS with all the Language resources that are needed in the Media

![](../../../.gitbook/assets/image%20%2883%29.png)

## Results

Considering this Windows 10 contains 4 additional Languages, the size increase is not that large

![](../../../.gitbook/assets/image%20%28126%29.png)





## Sample Task

```text
{
    "TaskType":  "OSBuild",
    "TaskName":  "Windows 10 1809 x64 Multi",
    "TaskVersion":  "19.4.11.0",
    "TaskGuid":  "900f013b-2f08-4304-a9aa-eb065477e67b",
    "CustomName":  "",
    "OSMFamily":  "Client Enterprise x64 17763 en-US",
    "OSMGuid":  "18887e55-5125-42ab-aaad-7b897bbb504b",
    "Name":  "Windows 10 Enterprise x64 1809 17763.404",
    "ImageName":  "Windows 10 Enterprise",
    "Arch":  "x64",
    "ReleaseId":  "1809",
    "UBR":  "17763.404",
    "Languages":  [
                      "en-US"
                  ],
    "EditionId":  "Enterprise",
    "InstallationType":  "Client",
    "MajorVersion":  "10",
    "Build":  "17763",
    "CreatedTime":  "\/Date(1552375866357)\/",
    "ModifiedTime":  "\/Date(1554442584580)\/",
    "EnableNetFX3":  "False",
    "WinPEAutoExtraFiles":  "False",
    "RemoveAppxProvisionedPackage":  null,
    "RemoveWindowsCapability":  null,
    "RemoveWindowsPackage":  null,
    "DisableWindowsOptionalFeature":  null,
    "EnableWindowsOptionalFeature":  null,
    "Drivers":  null,
    "ExtraFiles":  null,
    "Scripts":  null,
    "StartLayoutXML":  "",
    "UnattendXML":  "",
    "AddWindowsPackage":  null,
    "AddFeatureOnDemand":  null,
    "WinPEADKPE":  [
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\lp.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\lp.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\lp.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\lp.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-WMI_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-WMI_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-SRH_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-SRT_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-SRT_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-SRH_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-WMI_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-SRH_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-SRT_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-WMI_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-SRT_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-SRH_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\WinPE-Speech-TTS-es-ES.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\WinPE-Speech-TTS-de-DE.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\WinPE-Speech-TTS-en-GB.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\WinPE-Speech-TTS-fr-FR.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-ATBroker_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-ATBroker_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-Narrator_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-Narrator_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-ATBroker_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-Narrator_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-ATBroker_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-Narrator_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-AudioCore_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-WDS-Tools_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-Scripting_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-AudioCore_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-Scripting_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-Scripting_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-WDS-Tools_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-WDS-Tools_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-AudioCore_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-WDS-Tools_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-Scripting_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-AudioCore_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-Speech-TTS_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-Speech-TTS_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-Speech-TTS_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-Speech-TTS_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-AudioDrivers_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-AudioDrivers_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-AudioDrivers_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-AudioDrivers_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-SecureStartup_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-SecureStartup_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-SecureStartup_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-SecureStartup_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-EnhancedStorage_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-EnhancedStorage_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-EnhancedStorage_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-EnhancedStorage_fr-fr.cab"
                   ],
    "WinPEADKRE":  [
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\lp.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\lp.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\lp.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\lp.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-SRT_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-WMI_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-WMI_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-HTA_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-SRH_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-SRT_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-SRH_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-SRH_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-SRT_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-WMI_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-HTA_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-SRH_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-HTA_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-SRT_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-WMI_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-HTA_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\WinPE-Speech-TTS-es-ES.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-WiFi_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\WinPE-Speech-TTS-de-DE.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-WiFi_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\WinPE-Speech-TTS-en-GB.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-WiFi_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\WinPE-Speech-TTS-fr-FR.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-WiFi_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-Rejuv_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-Rejuv_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-Rejuv_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-Rejuv_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-Narrator_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-Narrator_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-ATBroker_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-ATBroker_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-Narrator_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-Narrator_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-ATBroker_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-ATBroker_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-WDS-Tools_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-WDS-Tools_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-WDS-Tools_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-AudioCore_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-AudioCore_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-Scripting_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-AudioCore_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-Scripting_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-Scripting_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-Scripting_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-AudioCore_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-WDS-Tools_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-StorageWMI_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-StorageWMI_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-Speech-TTS_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-Speech-TTS_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-StorageWMI_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-StorageWMI_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-Speech-TTS_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-Speech-TTS_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-OpcServices_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-OpcServices_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-OpcServices_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-OpcServices_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-AudioDrivers_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-AudioDrivers_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-AudioDrivers_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-AudioDrivers_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-AppxPackaging_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-SecureStartup_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-AppxPackaging_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-AppxPackaging_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-SecureStartup_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-SecureStartup_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-SecureStartup_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-AppxPackaging_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-EnhancedStorage_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-EnhancedStorage_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-EnhancedStorage_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-EnhancedStorage_de-de.cab"
                   ],
    "WinPEADKSE":  [
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\lp.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\lp.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\lp.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\lp.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-WMI_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-WMI_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-SRT_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-SRH_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-SRT_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-SRH_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-WMI_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-SRH_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-SRT_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-WMI_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-SRT_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-SRH_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\WinPE-Speech-TTS-es-ES.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\WinPE-Speech-TTS-de-DE.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\WinPE-Speech-TTS-en-GB.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\WinPE-Speech-TTS-fr-FR.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-Setup_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-Setup_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-Setup_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-Setup_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-Narrator_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-ATBroker_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-Narrator_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-Narrator_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-ATBroker_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-Narrator_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-ATBroker_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-ATBroker_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-AudioCore_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-AudioCore_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-Scripting_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-AudioCore_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-Scripting_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-WDS-Tools_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-WDS-Tools_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-Scripting_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-AudioCore_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-WDS-Tools_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-WDS-Tools_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-Scripting_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-Speech-TTS_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-Speech-TTS_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-Speech-TTS_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-Speech-TTS_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-Setup-Client_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-AudioDrivers_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-AudioDrivers_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-AudioDrivers_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-Setup-Client_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-Setup-Client_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-AudioDrivers_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-Setup-Client_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-SecureStartup_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-SecureStartup_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-SecureStartup_es-es.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-SecureStartup_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\en-gb\\WinPE-EnhancedStorage_en-gb.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\de-de\\WinPE-EnhancedStorage_de-de.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\fr-fr\\WinPE-EnhancedStorage_fr-fr.cab",
                       "IsoExtract\\Windows 10 1809 Language\\Windows Preinstallation Environment\\x64\\WinPE_OCs\\es-es\\WinPE-EnhancedStorage_es-es.cab"
                   ],
    "WinPEDaRT":  "",
    "WinPEDrivers":  null,
    "WinPEExtraFilesPE":  null,
    "WinPEExtraFilesRE":  null,
    "WinPEExtraFilesSE":  null,
    "WinPEScriptsPE":  null,
    "WinPEScriptsRE":  null,
    "WinPEScriptsSE":  null,
    "LangSetAllIntl":  "",
    "LangSetInputLocale":  "",
    "LangSetSKUIntlDefaults":  "",
    "LangSetSetupUILang":  "",
    "LangSetSysLocale":  "",
    "LangSetUILang":  "",
    "LangSetUILangFallback":  "",
    "LangSetUserLocale":  "",
    "LanguagePack":  [
                         "IsoExtract\\Windows 10 1809 Language\\x64\\langpacks\\Microsoft-Windows-Client-Language-Pack_x64_de-de.cab",
                         "IsoExtract\\Windows 10 1809 Language\\x64\\langpacks\\Microsoft-Windows-Client-Language-Pack_x64_en-gb.cab",
                         "IsoExtract\\Windows 10 1809 Language\\x64\\langpacks\\Microsoft-Windows-Client-Language-Pack_x64_es-es.cab",
                         "IsoExtract\\Windows 10 1809 Language\\x64\\langpacks\\Microsoft-Windows-Client-Language-Pack_x64_fr-fr.cab"
                     ],
    "LanguageInterfacePack":  null,
    "LocalExperiencePacks":  null,
    "LanguageFeature":  [
                            "IsoExtract\\Windows 10 1809 FOD x64\\Microsoft-Windows-LanguageFeatures-Basic-de-de-Package~31bf3856ad364e35~amd64~~.cab",
                            "IsoExtract\\Windows 10 1809 FOD x64\\Microsoft-Windows-LanguageFeatures-Basic-en-gb-Package~31bf3856ad364e35~amd64~~.cab",
                            "IsoExtract\\Windows 10 1809 FOD x64\\Microsoft-Windows-LanguageFeatures-Basic-es-es-Package~31bf3856ad364e35~amd64~~.cab",
                            "IsoExtract\\Windows 10 1809 FOD x64\\Microsoft-Windows-LanguageFeatures-Basic-fr-fr-Package~31bf3856ad364e35~amd64~~.cab",
                            "IsoExtract\\Windows 10 1809 FOD x64\\Microsoft-Windows-LanguageFeatures-Handwriting-de-de-Package~31bf3856ad364e35~amd64~~.cab",
                            "IsoExtract\\Windows 10 1809 FOD x64\\Microsoft-Windows-LanguageFeatures-Handwriting-en-gb-Package~31bf3856ad364e35~amd64~~.cab",
                            "IsoExtract\\Windows 10 1809 FOD x64\\Microsoft-Windows-LanguageFeatures-Handwriting-es-es-Package~31bf3856ad364e35~amd64~~.cab",
                            "IsoExtract\\Windows 10 1809 FOD x64\\Microsoft-Windows-LanguageFeatures-Handwriting-fr-fr-Package~31bf3856ad364e35~amd64~~.cab",
                            "IsoExtract\\Windows 10 1809 FOD x64\\Microsoft-Windows-LanguageFeatures-OCR-de-de-Package~31bf3856ad364e35~amd64~~.cab",
                            "IsoExtract\\Windows 10 1809 FOD x64\\Microsoft-Windows-LanguageFeatures-OCR-en-gb-Package~31bf3856ad364e35~amd64~~.cab",
                            "IsoExtract\\Windows 10 1809 FOD x64\\Microsoft-Windows-LanguageFeatures-OCR-es-es-Package~31bf3856ad364e35~amd64~~.cab",
                            "IsoExtract\\Windows 10 1809 FOD x64\\Microsoft-Windows-LanguageFeatures-OCR-fr-fr-Package~31bf3856ad364e35~amd64~~.cab",
                            "IsoExtract\\Windows 10 1809 FOD x64\\Microsoft-Windows-LanguageFeatures-Speech-de-de-Package~31bf3856ad364e35~amd64~~.cab",
                            "IsoExtract\\Windows 10 1809 FOD x64\\Microsoft-Windows-LanguageFeatures-Speech-en-gb-Package~31bf3856ad364e35~amd64~~.cab",
                            "IsoExtract\\Windows 10 1809 FOD x64\\Microsoft-Windows-LanguageFeatures-Speech-es-es-Package~31bf3856ad364e35~amd64~~.cab",
                            "IsoExtract\\Windows 10 1809 FOD x64\\Microsoft-Windows-LanguageFeatures-Speech-fr-fr-Package~31bf3856ad364e35~amd64~~.cab",
                            "IsoExtract\\Windows 10 1809 FOD x64\\Microsoft-Windows-LanguageFeatures-TextToSpeech-de-de-Package~31bf3856ad364e35~amd64~~.cab",
                            "IsoExtract\\Windows 10 1809 FOD x64\\Microsoft-Windows-LanguageFeatures-TextToSpeech-en-gb-Package~31bf3856ad364e35~amd64~~.cab",
                            "IsoExtract\\Windows 10 1809 FOD x64\\Microsoft-Windows-LanguageFeatures-TextToSpeech-es-es-Package~31bf3856ad364e35~amd64~~.cab",
                            "IsoExtract\\Windows 10 1809 FOD x64\\Microsoft-Windows-LanguageFeatures-TextToSpeech-fr-fr-Package~31bf3856ad364e35~amd64~~.cab"
                        ]
}
```

















