# Releases

## Install OSDBuilder PowerShell Module

{% page-ref page="../docs/basics/installation.md" %}

## 19.6.13 \(June 13, 2019\) Legacy Update

**This release only contains Updates for Windows 7 and Windows Server 2012 R2**

```text
2019-06 Cumulative Security Update for Internet Explorer 11 for Windows 7 for x64-based systems (KB4503259)
2019-06 Cumulative Security Update for Internet Explorer 11 for Windows 7 for x86-based systems (KB4503259)
2019-06 Cumulative Security Update for Internet Explorer 11 for Windows Server 2012 R2 for x64-based systems (KB4503259)
2019-06 Security Monthly Quality Rollup for Windows 7 for x64-based Systems (KB4503292)
2019-06 Security Monthly Quality Rollup for Windows 7 for x86-based Systems (KB4503292)
2019-06 Security Monthly Quality Rollup for Windows Server 2012 R2 for x64-based Systems (KB4503276)
2019-06 Security Update for Adobe Flash Player for Windows Server 2012 R2 for x64-based Systems (KB4503308)
```

## 19.6.11 \(June 11, 2019\) Patch Tuesday

Hello friends, here's a quick list of the changes

#### Shortcuts

Open PowerShell and type in OSDBuilder for some quick shortcuts to get the latest OneDrive and download your updates

{% hint style="info" %}
**You can just type OSDBuilder instead of the full 'Get-OSDBuilder'.  'Get-' is not necessary.  You knew that, right?**
{% endhint %}

![](../../.gitbook/assets/image%20%2821%29.png)

#### Detailed Execution Time

Functions will start showing more detailed execution times so its easier to track down the proper log.  This is a work in progress and is not 100% complete, especially in PEBuilds

![YYYY-MM-DD-hhmmss](../../.gitbook/assets/image%20%2812%29.png)

#### New Updates

Here are the new updates, no time to test.

```text
2019-06 Cumulative Update for Windows 10 Version 1607 for x64-based Systems (KB4503267)
2019-06 Cumulative Update for Windows 10 Version 1607 for x86-based Systems (KB4503267)
2019-06 Cumulative Update for Windows 10 Version 1703 for x64-based Systems (KB4503279)
2019-06 Cumulative Update for Windows 10 Version 1703 for x86-based Systems (KB4503279)
2019-06 Cumulative Update for Windows 10 Version 1709 for x64-based Systems (KB4503284)
2019-06 Cumulative Update for Windows 10 Version 1709 for x86-based Systems (KB4503284)
2019-06 Cumulative Update for Windows 10 Version 1803 for x64-based Systems (KB4503286)
2019-06 Cumulative Update for Windows 10 Version 1803 for x86-based Systems (KB4503286)
2019-06 Cumulative Update for Windows 10 Version 1809 for x64-based Systems (KB4503327)
2019-06 Cumulative Update for Windows 10 Version 1809 for x86-based Systems (KB4503327)
2019-06 Cumulative Update for Windows 10 Version 1903 for x64-based Systems (KB4503293)
2019-06 Cumulative Update for Windows 10 Version 1903 for x86-based Systems (KB4503293)
2019-06 Cumulative Update for Windows Server 2016 (1803) for x64-based Systems (KB4503286)
2019-06 Cumulative Update for Windows Server 2016 for x64-based Systems (KB4503267)
2019-06 Cumulative Update for Windows Server 2019 for x64-based Systems (KB4503327)
2019-06 Dynamic Update for Windows 10 Version 1803 for x64-based Systems (KB4503539)
2019-06 Dynamic Update for Windows 10 Version 1803 for x86-based Systems (KB4503539)
2019-06 Security Update for Adobe Flash Player for Windows 10 Version 1607 for x64-based Systems (KB4503308)
2019-06 Security Update for Adobe Flash Player for Windows 10 Version 1607 for x86-based Systems (KB4503308)
2019-06 Security Update for Adobe Flash Player for Windows 10 Version 1703 for x64-based Systems (KB4503308)
2019-06 Security Update for Adobe Flash Player for Windows 10 Version 1703 for x86-based Systems (KB4503308)
2019-06 Security Update for Adobe Flash Player for Windows 10 Version 1709 for x64-based Systems (KB4503308)
2019-06 Security Update for Adobe Flash Player for Windows 10 Version 1709 for x86-based Systems (KB4503308)
2019-06 Security Update for Adobe Flash Player for Windows 10 Version 1803 for x64-based Systems (KB4503308)
2019-06 Security Update for Adobe Flash Player for Windows 10 Version 1803 for x86-based Systems (KB4503308)
2019-06 Security Update for Adobe Flash Player for Windows 10 Version 1809 for x64-based Systems (KB4503308)
2019-06 Security Update for Adobe Flash Player for Windows 10 Version 1809 for x86-based Systems (KB4503308)
2019-06 Security Update for Adobe Flash Player for Windows 10 Version 1903 for x64-based Systems (KB4503308)
2019-06 Security Update for Adobe Flash Player for Windows 10 Version 1903 for x86-based Systems (KB4503308)
2019-06 Security Update for Adobe Flash Player for Windows Server 2016 for x64-based Systems (KB4503308)
2019-06 Security Update for Adobe Flash Player for Windows Server 2019 for x64-based Systems (KB4503308)
2019-06 Servicing Stack Update for Windows 10 Version 1607 for x64-based Systems (KB4503537)
2019-06 Servicing Stack Update for Windows 10 Version 1607 for x86-based Systems (KB4503537)
2019-06 Servicing Stack Update for Windows 10 Version 1809 for x64-based Systems (KB4504369)
2019-06 Servicing Stack Update for Windows 10 Version 1809 for x86-based Systems (KB4504369)
2019-06 Servicing Stack Update for Windows Server 2016 for x64-based Systems (KB4503537)
2019-06 Servicing Stack Update for Windows Server 2019 for x64-based Systems (KB4504369)
```

#### Functions

Lots of changes to the internal Private Functions, now using proper PowerShell Verb-Noun naming format.  Work in progress.  Make sure you close all open PowerShell Sessions after updating the Module

![Lots of Work!!!!](../../.gitbook/assets/image%20%28176%29.png)

## 19.6.3 \(June 3, 2019\)

**New Windows 10 1903 SSU and LCU's have been released, and the issue with the LCU not being able to be applied to WinPE seems to have been resolved**

**I have started to add a Time Stamp and Duration to the Console output, which aligns with the Log Time Stamp.  This is being added in pieces, so it may take a few updates before this is complete.**

**Some internal Scripts and Functions have changed, so I highly recommend closing all PowerShell sessions after updating to the current Module version**

![](../../.gitbook/assets/image%20%2853%29.png)

## 19.5.22 \(May 22, 2019\)

**Installing the LCU in WinPE is causing DISM related issues in Windows 10 1903.  This is currently disabled until a resolution can be found**

![](../../.gitbook/assets/image%20%2885%29.png)

## 19.5.21 \(May 21, 2019\)

**Added Windows 10 1903 to ESD Downloads**

## 19.5.20 \(May 20, 2019\)

Windows 10 1903 has a new Cumulative Update.  The remaining updates from May 16 appear to be MicroCode related \(OSBuilds only\)

![](../../.gitbook/assets/image%20%28244%29.png)

## 19.5.14 \(May 14, 2019\) Patch Tuesday

**Patch Tuesday is here folks and ALL Windows 10 OS's have new Servicing Stacks!**

![](../../.gitbook/assets/image%20%2820%29.png)

## 19.5.7 \(May 7, 2019\)

**Cumulative Updates for 1809 and 1903.  New Servicing Stack Updates for Windows 10 1903.  No script changes in this release to keep everyone at MMSMOA happy!**

![](../../.gitbook/assets/image%20%2896%29.png)

## 19.4.26 \(April 26, 2019\)

**New Dynamic Updates for some old versions of Windows 10**

![](../../.gitbook/assets/image%20%28124%29.png)

## 19.4.14 \(April 14, 2019\)

* **New-OSBuildTask** - Use SaveAs parameter to create a Template \(replaces the Kind Child Mandatory parameter that made zero sense\)

{% page-ref page="../docs/basics/new-osbuildtask/" %}

## 19.4.12 \(April 12, 2019\) 0daydorpher Edition

**Update-OSMedia** and **New-OSBuild** were not renaming the temporary "buildxxxx" directories upon completion.  Thanks [@0daydorpher](https://twitter.com/0daydorpher)

## 19.4.11 \(April 11, 2019\) HASMUG Edition

{% embed url="http://www.hasmug.com/event/hasmug-2019-april-11th/" %}

* **Windows 10 1903 Updates**
* **Get-OSDBuilder**
  * Content Directories are no longer presented in standard list
* **New-OSBuildTask**
  * Optionally create a Template
  * Edit an existing OSBuild Task
  * Parameters are used to select Task Items
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

{% page-ref page="../docs/guides/windows-multilang/" %}

{% page-ref page="../docs/basics/content/adk.md" %}

{% page-ref page="../docs/basics/content/dart.md" %}

## 19.4.9 \(April 9, 2019\)

{% hint style="success" %}
**Patch Tuesday Updates! \(no other changes\)**
{% endhint %}

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

