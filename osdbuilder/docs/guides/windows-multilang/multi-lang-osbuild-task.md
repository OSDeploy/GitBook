# OSBuild Task

{% hint style="danger" %}
**This guide requires OSDBuilder 19.4.11 or newer**
{% endhint %}

## New-OSBuildTask -ContentLanguagePackages

{% page-ref page="../../basics/new-osbuildtask/" %}

Create a New-OSBuildTask with the following parameters

```text
New-OSBuildTask -Kind Task -TaskName "Windows 10 1809 x64 Multi" -ContentLanguagePackages
```

Select the Language Packs to add and press OK.  There is no need to select the Primary OSMedia Language

![](../../../../.gitbook/assets/image%20%28213%29.png)

Select the Language Features on Demand to add when prompted.  To make things easier, select a single Language and press OK.  There is no need to add the Primary OSMedia Language

![](../../../../.gitbook/assets/image%20%28219%29.png)

Select any Local Experience Packs to add and press OK.  Press Cancel if you do not need to add any

![](../../../../.gitbook/assets/image%20%28207%29.png)

Repeat the same Command Line to keep adding the additional Language Features on Demand.  The previously selected ones will remain.  Press Cancel if you are prompted to select Language Packs or Local Experience Packs and don't have anything to add.

![](../../../../.gitbook/assets/image%20%28294%29.png)

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

## New-OSBuildTask -SourcesLanguageCopy

The final step is to combine the Language Resources in the Sources directory.  Microsoft details how to do this process 

![](../../../../.gitbook/assets/image%20%28260%29.png)

{% embed url="https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/add-multilingual-support-to-windows-setup\#step-3-add-localized-windows-setup-resources-to-the-windows-distribution" %}

Unfortunately this process does not include the Language resources for Boot and Logging

![](../../../../.gitbook/assets/image%20%2868%29.png)

Windows ADK does contain some files, but not everything, so don't use this

![](../../../../.gitbook/assets/image%20%28249%29.png)

### SourcesLanguageCopy

Edit your OSBuild Task by using the **`SourcesLanguageCopy`** parameter

![](../../../../.gitbook/assets/image%20%28343%29.png)

This will prompt you to select additional Languages to add to your Sources

![](../../../../.gitbook/assets/image%20%28176%29.png)

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







