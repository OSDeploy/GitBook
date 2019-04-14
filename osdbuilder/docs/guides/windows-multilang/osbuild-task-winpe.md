# OSBuild Task WinPE

{% hint style="danger" %}
**This guide requires OSDBuilder 19.4.11 or newer**
{% endhint %}

## WinPE Installed Packages

To properly add the Language Resources that you need, you have to know what Features are in the different Windows PE's.  OSDBuilder captures this information in a TXT, JSON, and XML format

![](../../../../.gitbook/assets/image%20%28179%29.png)

You can easily pull a list using PowerShell

```text
$WinPE = "<OSDBuilder Home>\OSMedia\Windows 10 Enterprise x64 1809 17763.404\WinPE\info\xml\Get-WindowsPackage-WinPE.xml"
Import-Clixml $WinPE | ? {$_.ReleaseType -like "*LanguagePack*"} | Select -Property PackageName
```

Here is a list of the Packages that are in Windows 10 1809 x64 WinPE

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

![](../../../../.gitbook/assets/image%20%2870%29.png)

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



