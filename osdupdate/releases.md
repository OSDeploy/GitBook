# Releases

## 19.4.2 \(April 2, 2019\)

{% hint style="info" %}
**This release contains updated WSUS Catalogs.  New Updates for Office 2010, 2013, 2016, Windows 10 1809, and Windows Server 2019 are included**
{% endhint %}

## 19.3.18 \(March 18, 2019\) Get-Down Office Edition

Thanks for [**Kyle Baker** ](https://twitter.com/kbaker)for being the most impatient person that had to test this out ASAP

* **Get-DownDefender**
  * Rename of **`Update-OSDdefender`**
* **Get-DownMcAfee**
  * Rename of **`Update-OSDmcafee`**
* **Get-DownOSDUpdate**
  * Rename of **`Get-OSDUpdateDownloads`**
* **Get-DownOffice**
  * **LanguageId** default = 'en-us'
  * **OfficeArch** default = '64'
  * **OfficeProduct** default = 'Office 365 ProPlus'
  * **ProofingTools** default = 'en-us'
  * **UpdateChannel** default = 'SAC'
  * **XmlOnly** parameter will create an XML for downloading, but will not download the Office Product

{% hint style="info" %}
**Full documentation expected in the next day or so.  The screenshot below explains why Get-Down is being used \(makes things easier\)**
{% endhint %}

![](../.gitbook/assets/image%20%28170%29.png)

![](../.gitbook/assets/image%20%2885%29.png)

## 19.3.12 \(March 12, 2019\) Patch Tuesday

{% hint style="info" %}
**All Catalogs have been updated to March 12, 2019**
{% endhint %}

```text
Catalog                   KBNumber Title
-------                   -------- -----
Office 2010 32-Bit        4462226  Security Update for Microsoft Office 2010 (KB4462226) 32-Bit Edition
Office 2010 64-Bit        4462226  Security Update for Microsoft Office 2010 (KB4462226) 64-Bit Edition
Windows 7                 4474419  2019-03 Security Update for Windows 7 for x64-based Systems (KB4474419)
Windows 7                 4474419  2019-03 Security Update for Windows 7 for x86-based Systems (KB4474419)
Windows 7                 4489873  2019-03 Cumulative Security Update for Internet Explorer 11 for Windows 7 for x64-based systems (KB4489873)
Windows 7                 4489873  2019-03 Cumulative Security Update for Internet Explorer 11 for Windows 7 for x86-based systems (KB4489873)
Windows 7                 4489878  2019-03 Security Monthly Quality Rollup for Windows 7 for x64-based Systems (KB4489878)
Windows 7                 4490628  2019-03 Servicing Stack Update for Windows 7 for x64-based Systems (KB4490628)
Windows 7                 4490628  2019-03 Servicing Stack Update for Windows 7 for x86-based Systems (KB4490628)
Windows 10                4489868  2019-03 Cumulative Update for Windows 10 Version 1803 for x64-based Systems (KB4489868)
Windows 10                4489868  2019-03 Cumulative Update for Windows 10 Version 1803 for x86-based Systems (KB4489868)
Windows 10                4489871  2019-03 Cumulative Update for Windows 10 Version 1703 for x64-based Systems (KB4489871)
Windows 10                4489871  2019-03 Cumulative Update for Windows 10 Version 1703 for x86-based Systems (KB4489871)
Windows 10                4489882  2019-03 Cumulative Update for Windows 10 Version 1607 for x64-based Systems (KB4489882)
Windows 10                4489882  2019-03 Cumulative Update for Windows 10 Version 1607 for x86-based Systems (KB4489882)
Windows 10                4489886  2019-03 Cumulative Update for Windows 10 Version 1709 for x64-based Systems (KB4489886)
Windows 10                4489886  2019-03 Cumulative Update for Windows 10 Version 1709 for x86-based Systems (KB4489886)
Windows 10                4489899  2019-03 Cumulative Update for Windows 10 Version 1809 for x64-based Systems (KB4489899)
Windows 10                4489899  2019-03 Cumulative Update for Windows 10 Version 1809 for x86-based Systems (KB4489899)
Windows 10                4489907  2019-03 Security Update for Adobe Flash Player for Windows 10 Version 1607 for x64-based Systems (KB4489907)
Windows 10                4489907  2019-03 Security Update for Adobe Flash Player for Windows 10 Version 1607 for x86-based Systems (KB4489907)
Windows 10                4489907  2019-03 Security Update for Adobe Flash Player for Windows 10 Version 1703 for x64-based Systems (KB4489907)
Windows 10                4489907  2019-03 Security Update for Adobe Flash Player for Windows 10 Version 1703 for x86-based Systems (KB4489907)
Windows 10                4489907  2019-03 Security Update for Adobe Flash Player for Windows 10 Version 1709 for x64-based Systems (KB4489907)
Windows 10                4489907  2019-03 Security Update for Adobe Flash Player for Windows 10 Version 1709 for x86-based Systems (KB4489907)
Windows 10                4489907  2019-03 Security Update for Adobe Flash Player for Windows 10 Version 1803 for x64-based Systems (KB4489907)
Windows 10                4489907  2019-03 Security Update for Adobe Flash Player for Windows 10 Version 1803 for x86-based Systems (KB4489907)
Windows 10                4489907  2019-03 Security Update for Adobe Flash Player for Windows 10 Version 1809 for x64-based Systems (KB4489907)
Windows 10                4489907  2019-03 Security Update for Adobe Flash Player for Windows 10 Version 1809 for x86-based Systems (KB4489907)
Windows 10 Dynamic Update 4489723  2019-03 Dynamic Update for Windows 10 Version 1803 for x64-based Systems (KB4489723)
Windows 10 Dynamic Update 4489723  2019-03 Dynamic Update for Windows 10 Version 1803 for x86-based Systems (KB4489723)
Windows Server 2012 R2    4489873  2019-03 Cumulative Security Update for Internet Explorer 11 for Windows Server 2012 R2 for x64-based systems (KB4489873)
Windows Server 2012 R2    4489881  2019-03 Security Monthly Quality Rollup for Windows Server 2012 R2 for x64-based Systems (KB4489881)
Windows Server 2012 R2    4489907  2019-03 Security Update for Adobe Flash Player for Windows Server 2012 R2 for x64-based Systems (KB4489907)
Windows Server 2016       4489868  2019-03 Cumulative Update for Windows Server 2016 (1803) for x64-based Systems (KB4489868)
Windows Server 2016       4489882  2019-03 Cumulative Update for Windows Server 2016 for x64-based Systems (KB4489882)
Windows Server 2016       4489886  2019-03 Cumulative Update for Windows Server 2016 (1709) for x64-based Systems (KB4489886)
Windows Server 2016       4489907  2019-03 Security Update for Adobe Flash Player for Windows Server 2016 for x64-based Systems (KB4489907)
Windows Server 2019       4489899  2019-03 Cumulative Update for Windows Server 2019 for x64-based Systems (KB4489899)
Windows Server 2019       4489907  2019-03 Security Update for Adobe Flash Player for Windows Server 2019 for x64-based Systems (KB4489907)
```

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

