# Releases

## 19.3.12 \(March 12, 2019\) Patch Tuesday

{% hint style="info" %}
**All Catalogs have been updated to March 12, 2019**
{% endhint %}

{% embed url="https://gist.github.com/OSDeploy/d3794de59265738ff38f8b7d9c4af710" %}

## 19.3.6 \(March 6, 2019\)

{% hint style="info" %}
**All Catalogs have been updated to March 6, 2019**
{% endhint %}

* **Get-OSDUpdateDownloads**
  * RemoveSuperseded parameter added

**Make sure you read the new Guide linked below**

{% page-ref page="docs/guides/microsoft-office-monthly-updates.md" %}

## 19.3.4 \(March 4, 2019\)

{% hint style="info" %}
**All Catalogs have been updated to March 4, 2019**
{% endhint %}

* **Windows Catalogs**
  * ~~Windows 7~~
  * ~~Windows 8.1~~
  * ~~Windows 8.1 Dynamic Update~~
  * Windows 10
  * Windows 10 Dynamic Update
  * Windows 10 Feature On Demand
  * Windows 10 Language Packs
  * Windows 10 Language Interface Packs
  * ~~Windows Server 2012 R2~~
  * Windows Server 2016
  * Windows Server 2019
* **Windows Parameter changes**
  * UpdateArch - Filter the results based on OS Architecture
  * UpdateBuild - Rename of WindowsBuild
  * UpdateGroup - Rename of WindowsProfile

## 19.2.22 \(February 22, 2019\)

Updated Catalogs and included a BETA PowerShell Script for installing Office MSP files

## 19.2.21 \(February 21, 2019\)

{% hint style="danger" %}
**Documentation will be in the next day or so, lots of changes in this release**
{% endhint %}

* **Get-OSDUpdate** - New function to return all current Microsoft Updates
  * **GridView** - Displays the results in GridView with PassThru for easy selection
  * **Office Parameter Set**
    * CatalogOffice - Office Version and Architecture
    * OfficeProfile - Office Update Selection Profile
  * **Windows Parameter Set**
    * CatalogWindows - Windows Version and Architecture
    * WindowsBuild - Filters results based on Windows Build
    * WindowsProfile - Windows Update Selection Profile
* **Get-OSDUpdateDownloads** - Replaces Update-OSDoffice and Update-OSDwindows
  * **RepositoryRootPath** - Path to store the downloads.  Recommended is C:\OSDUpdate or similar.  Child directories will be created automatically
  * **GridView** - Displays the results in GridView with PassThru for easy selection
  * **Office Parameter Set**
    * CatalogOffice - Office Version and Architecture
    * OfficeProfile - Office Update Selection Profile
    * OfficeSetupUpdatesPath - Full Path to &lt;Office Setup Package&gt;\Updates for MSP files.  This is optional
  * **Windows Parameter Set**
    * CatalogWindows - Windows Version and Architecture
    * WindowsBuild - Filters results based on Windows Build
    * WindowsProfile - Windows Update Selection Profile
* **New-OSDUpdateRepository** - New function to create the initial OSDUpdate Repository.  This is not required and will be created automatically as needed

![OSDUpdate Repository with Content](../.gitbook/assets/2019-02-21_15-52-19.png)

## 19.2.19 \(February 19, 2019\) Initial Release

* **Update-ModuleOSDUpdate**
* **Update-OSDdefender**
  * Defender Definitions
* **Update-OSDmcafee**
  * Mcafee SuperDAT v2
  * McAfee SuperDAT v3
  * McAfee GetSusp
  * McAfee Stinger
* **Update-OSDoffice**
  * Microsoft Office 2010 \(32-Bit and 64-Bit\)
  * Microsoft Office 2013 \(32-Bit and 64-Bit\)
  * Microsoft Office 2016 \(32-Bit and 64-Bit\)
* **Update-OSDwindows**
  * Microsoft Windows 10
  * Microsoft Windows Server 2012 R2
  * Microsoft Windows Server 2016
  * Microsoft Windows Server 2019

