# Releases

## Install OSDBuilder PowerShell Module

{% page-ref page="../docs/basics/installation.md" %}

## UNRELEASED 19.4.11 \(April 11, 2019\) HASMUG Edition

{% hint style="danger" %}
**This version will be released on April 11, 2019 @ HASMUG**
{% endhint %}

{% embed url="http://www.hasmug.com/event/hasmug-2019-april-11th/" %}

* **Get-OSDBuilder**
  * Content Directories are no longer presented in standard list
* **New-OSBuildTask**
  * Optionally create a Template
  * Edit an existing OSBuild Task
* **Content Directory Changes**
  * Content\ADK replaces Content\WinPE\ADK
  * Content\DaRT replaces Content\WinPE\DaRT
* **New Content Directories \(Automatically Created\)**
  * Content\ADK
  * Content\ADK\Windows 10 1809\Windows Preinstallation Environment
  * Content\DaRT
  * Content\IsoExtract\Windows 10 1809 FOD x64
  * Content\IsoExtract\Windows 10 1809 Language
  * Content\IsoExtract\Windows Server 2019 1809 FOD x64
  * Content\IsoExtract\Windows Server 2019 1809 Language

{% page-ref page="../docs/basics/content/adk.md" %}

{% page-ref page="../docs/basics/content/dart.md" %}

## 19.4.3 \(April 3, 2019\)

* OSBuild Merged Last Run Task is saved in the OSMedia directory
* Dismount-WindowsImage \(WinPE and OS\) will be delayed 10 seconds to allow for open file closures
* **Get-DownOSDBuilder**
  * MediaESD parameter adds the ability to download Windows 10 1809 Feature Update ESD files
* **Import-OSMedia**
  * OSDBuilder\Media is now scanned for expanded Feature Updates
* **New-OSBuild**
  * Removed ErrorAction Stop when an OSBuild could not be renamed
* **Update-OSMedia**
  * Removed ErrorAction Stop when an OSMedia could not be renamed

{% page-ref page="../docs/basics/import-osmedia/feature-update-vl-media.md" %}

## 19.4.2 \(April 2, 2019\)

{% hint style="info" %}
**This release contains updates to OSDBuilder WSUS Catalogs.  No other changes are included in this release**
{% endhint %}

