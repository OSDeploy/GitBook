# Multi-Language OSBuild

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

![](../../.gitbook/assets/image%20%28161%29.png)

Keep in mind that this may take a considerable amount of time as the files must be downloaded and extracted

![](../../.gitbook/assets/image%20%2828%29.png)

## Import-OSMedia

Use Import-OSMedia to import the Primary OS into OSDBuilder

![](../../.gitbook/assets/image%20%2854%29.png)

## Update-OSMedia

{% embed url="https://www.osdeploy.com/osdbuilder/docs/basics/update-osmedia" %}

The Primary OS will need to be updated.  Use Update-OSMedia to do this

![](../../.gitbook/assets/image%20%28224%29.png)

## ISO Extract FOD and Language

Download and extract the following ISOs from MVLS or MSDN as shown in the image below

* **Windows 10 1809 Features on Demand x64**
* **Windows 10 1809 Language**

![](../../.gitbook/assets/image%20%28128%29.png)

In the Windows 10 1809 Language content, delete the directories and files for the Languages that will not be in your Media.  Do not delete your Primary OSMedia Language files

![](../../.gitbook/assets/image%20%28179%29.png)

## Windows ADK

{% embed url="https://www.osdeploy.com/osdbuilder/docs/basics/content/adk" %}

Add the Windows ADK to the proper Content directory

![](../../.gitbook/assets/image%20%2834%29.png)

If you have the Languages ISO in your ISOExtract directory, delete ALL the Language sub-directories from the following location

```text
<OSDBuilder Home>\Content\ADK\Windows 10 1809\Windows Preinstallation Environment\amd64\WinPE_OCs
```

![](../../.gitbook/assets/image%20%2824%29.png)

## New-OSBuildTask -ContentLanguagePackages

Create a New-OSBuildTask with the following parameters

```text
New-OSBuildTask -Kind Task -TaskName "Windows 10 1809 x64 Multi" -ContentLanguagePackages
```

Select the Language Packs to add and press OK.  There is no need to select the Primary OSMedia Language

![](../../.gitbook/assets/image%20%28140%29.png)

Select the Language Features on Demand to add when prompted.  To make things easier, select a single Language and press OK.  There is no need to add the Primary OSMedia Language

![](../../.gitbook/assets/image%20%28145%29.png)

Select any Local Experience Packs to add and press OK.  Press Cancel if you do not need to add any

![](../../.gitbook/assets/image%20%28136%29.png)

Repeat the same Command Line to keep adding the additional Language Features on Demand.  The previously selected ones will remain.  Press Cancel if you are prompted to select Language Packs or Local Experience Packs and don't have anything to add.

![](../../.gitbook/assets/image%20%28194%29.png)

When complete the Task JSON should look similar to the image below

![](../../.gitbook/assets/image%20%28119%29.png)

## WinPE Installed Packages

To properly add the Language Resources that you need, you have to know what Features are in the different Windows PE's.  OSDBuilder captures this information in a TXT, JSON, and XML format

![](../../.gitbook/assets/image%20%28132%29.png)

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

![](../../.gitbook/assets/image%20%2851%29.png)

## 

## Media Merge

Merging the Media is important as it adds Language Resources for Windows Setup.  This means it is used when booting to the Media.  Keep in mind when performing Upgrades, you are using Windows Setup, so this applies as well.

Microsoft details that you need to copy the contents of the Sources directory

![](../../.gitbook/assets/image%20%28170%29.png)

{% embed url="https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/add-multilingual-support-to-windows-setup\#step-3-add-localized-windows-setup-resources-to-the-windows-distribution" %}

But this does not include the Language resources for Boot and Logging, so I find it important to copy everything except the WIMS

![](../../.gitbook/assets/image%20%2844%29.png)

OSDBuilder won't do this automatically for you, but here is the script that I used to combine

```text
$MediaDirectory = "D:\OSDBuilder\Langs\Media"
$PrimaryOS = "$MediaDirectory\17763.379.190312-1352.rs5_release_svc_refresh_CLIENTBUSINESS_VOL_x64FRE_en-us"

Get-ChildItem "$MediaDirectory" | `
Where-Object {$_.PSIsContainer -eq $true} | `
Select -Property Name, FullName | `
foreach {
    robocopy "$($_.FullName)" "$MediaDirectory\MergedOS" *.* /e /ndl /xc /xn /xo /xf *.wim /np
}

#Copy PRIMARY OS
robocopy "$PrimaryOS" "$MediaDirectory\MergedOS" *.* /e /ndl /np
```

When complete, you will have a Merged OS with all the Language resources that are needed in the Media

![](../../.gitbook/assets/image%20%28227%29.png)

## Sample Task

Here 

{% embed url="https://gist.github.com/OSDeploy/bdc5b94b3294b95eab5cb8ad37b88487" %}

















