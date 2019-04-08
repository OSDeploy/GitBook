# OSBuild Multi-Language

{% hint style="danger" %}
**This Guide is a Draft and will not be complete until April 11, 2019  
Requires OSDBuilder version 19.4.11 which will be released on April 11, 2019**
{% endhint %}



## Purpose

There are probably a handful of people that can properly create Windows Multi-Language Media, its not as simple as injecting Language Packs.  The purpose of this guide is to fully detail how this is done properly with Windows 10 1809 x64

## Select Primary Language

In this example, I am going to combine the 5 Languages in Windows.  I should refer to the following Microsoft link to determine Base Language Requirements

{% embed url="https://support.microsoft.com/en-us/help/14236/language-packs" %}

| **Language** | **LP** | **Base Language Required** |
| :--- | :--- | :--- |
| English \(US\) | en-US | Any Language |
| English \(International\) | en-GB | Any Language |
| French | fr-FR | Any Language |
| German | de-DE | Any Language |
| Spanish | es-ES | Any Language |

I'm in luck that there are no requirements on the Base Language.  This means that any language can be used as the Base Language.  **I'll take the easy road and use English \(US\) as my Base Language**

## Download Windows Volume License Media

You should download all your Volume License Media from MVLS, but you can also use OSDBuilder to download the Feature Updates instead.  You will need the Windows ISO's for each Language you want combine

{% page-ref page="../../docs/basics/import-osmedia/feature-update-vl-media.md" %}

I will need the original OS Media for each of the Operating Systems that I want to include.  If you already have your ISO's, you can skip this step, otherwise you can use the following command to download Volume Licensing Media for Windows 10 1809 x64

```text
Get-DownOSDBuilder -MediaESD Download
```

![](../../../.gitbook/assets/image%20%28169%29.png)

Keep in mind that this may take a considerable amount of time as the files must be downloaded and extracted

![](../../../.gitbook/assets/image%20%2829%29.png)

## Import-OSMedia

{% page-ref page="../../docs/basics/import-osmedia/" %}

Use **`Import-OSMedia`** to import all Windows Editions you plan to include.  Its best to sort by **EditionId** as the **French** have a different spelling for **Enterprise**

![](../../../.gitbook/assets/image%20%28244%29.png)

This process will take about 5-10 minutes per OS, so give it some time.  When complete, all Operating System Languages will be imported into OSMedia.  Windows 10 en-US does not show a language by default

![](../../../.gitbook/assets/image%20%2826%29.png)

## Update-OSMedia \(Base Language Only\)

{% page-ref page="../../docs/basics/update-osmedia/" %}

The Base Language OS will need to be updated with **`Update-OSMedia`**.  It is not necessary to update the additional Languages

![](../../../.gitbook/assets/image%20%28174%29.png)

## ISO Extract FOD and Language

{% page-ref page="../../docs/basics/content/isoextract.md" %}

Download and extract the following ISOs from MVLS or MSDN as shown in the image below

* **Windows 10 1809 Features on Demand x64**
* **Windows 10 1809 Language**

![](../../../.gitbook/assets/image%20%28135%29.png)

In the Windows 10 1809 Language content, delete the directories and files for the Languages that will not be in your Media.  Do not delete your Primary OSMedia Language files

![](../../../.gitbook/assets/image%20%28190%29.png)

## Windows ADK

{% page-ref page="../../docs/basics/content/adk.md" %}

Add the Windows ADK to the proper Content directory

![](../../../.gitbook/assets/image%20%2835%29.png)

If you have the Languages ISO in your ISOExtract directory, delete ALL the Language sub-directories from the following location

```text
<OSDBuilder Home>\Content\ADK\Windows 10 1809\Windows Preinstallation Environment\amd64\WinPE_OCs
```

![](../../../.gitbook/assets/image%20%2824%29.png)

## New-OSBuildTask -ContentLanguagePackages

{% page-ref page="../../docs/basics/new-osbuildtask/" %}

Create a New-OSBuildTask with the following parameters

```text
New-OSBuildTask -Kind Task -TaskName "Windows 10 1809 x64 Multi" -ContentLanguagePackages
```

Select the Language Packs to add and press OK.  There is no need to select the Primary OSMedia Language

![](../../../.gitbook/assets/image%20%28147%29.png)

Select the Language Features on Demand to add when prompted.  To make things easier, select a single Language and press OK.  There is no need to add the Primary OSMedia Language

![](../../../.gitbook/assets/image%20%28152%29.png)

Select any Local Experience Packs to add and press OK.  Press Cancel if you do not need to add any

![](../../../.gitbook/assets/image%20%28143%29.png)

Repeat the same Command Line to keep adding the additional Language Features on Demand.  The previously selected ones will remain.  Press Cancel if you are prompted to select Language Packs or Local Experience Packs and don't have anything to add.

![](../../../.gitbook/assets/image%20%28206%29.png)

### Task JSON

When complete the Task JSON should look similar to what I have

```text
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
					],
```

## WinPE Installed Packages

To properly add the Language Resources that you need, you have to know what Features are in the different Windows PE's.  OSDBuilder captures this information in a TXT, JSON, and XML format

![](../../../.gitbook/assets/image%20%28139%29.png)

You can easily pull a list using PowerShell

```text
$WinPE = "<OSDBuilder Home>\OSMedia\Windows 10 Enterprise x64 1809 17763.404\WinPE\info\xml\Get-WindowsPackage-WinPE.xml"
Import-Clixml $WinPE | ? {$_.ReleaseType -like "*LanguagePack*"} | Select -Property PackageName
```

Here is a list of what is in my WinPE's to save you some time.  These were generated from Windows 10 Enterprise x64 1809 en-US

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

![](../../../.gitbook/assets/image%20%2853%29.png)

### Task JSON

Here is the what the relevant entries in my Task look like

```text
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

```

## New-OSBuildTask -SourcesLanguageCopy

The final step is to combine the Language Resources in the Sources directory.  Microsoft details how to do this process 

![](../../../.gitbook/assets/image%20%28181%29.png)

{% embed url="https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/add-multilingual-support-to-windows-setup\#step-3-add-localized-windows-setup-resources-to-the-windows-distribution" %}

Unfortunately this process does not include the Language resources for Boot and Logging

![](../../../.gitbook/assets/image%20%2846%29.png)

Windows ADK does contain some files, but not everything, so don't use this

![](../../../.gitbook/assets/image%20%28173%29.png)

### SourcesLanguageCopy

Edit your OSBuild Task by using the **`SourcesLanguageCopy`** parameter

![](../../../.gitbook/assets/image%20%28241%29.png)

This will prompt you to select additional Languages to add to your Sources

![](../../../.gitbook/assets/image%20%28122%29.png)

### Task JSON

Here is what the addition looks like in the Task JSON

```text
"LanguageCopySources":  [
							"Client Enterprise x64 17763 de-DE",
							"Client Enterprise x64 17763 en-GB",
							"Client Enterprise x64 17763 es-ES",
							"Client Enterprise x64 17763 fr-FR"
						]
```

## New-OSBuild

When you have your Task sorted out you can create your build.  Here is what the WinPE Language integration should looks like

![](../../../.gitbook/assets/image%20%28168%29.png)

Language Packs and Language Features will be installed, and Language Sources will be added.  A new Lang.ini will be generated \(in Sources\).  The Lang.ini is also copied to WinSE \(Windows Setup\)

![](../../../.gitbook/assets/image%20%2844%29.png)

When complete, the new OSBuild will be created.  If you did not select a Custom Name, the Languages will be added to the default name.  Additionally an **OSBuild.json** file will be included which will contain the Task + Templates that were used to create the OSMedia

![](../../../.gitbook/assets/image%20%28113%29.png)

## Results

Considering this Windows 10 contains 4 additional Languages, the size increase is not that large

![](../../../.gitbook/assets/image%20%28130%29.png)

When booting to the ISO, you will be prompted to select a Language

![](../../../.gitbook/assets/image%20%28200%29.png)

Here you can see that you have the ability to select different Languages for Windows Setup

![](../../../.gitbook/assets/image%20%2872%29.png)

