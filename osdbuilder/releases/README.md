# Releases

## Install OSDBuilder PowerShell Module

{% page-ref page="../docs/basics/installation.md" %}

## 19.3.15 \(March 15, 2019\)

* **Get-OSDBuilderDownloads**
  * Function has been renamed to **`Get-DownOSDBuilder`** to mirror changes to related PS Modules
  * **ContentDownload** parameter has been added to support updating **OneDriveSetup.exe**

{% page-ref page="../docs/functions/get-downosdbuilder.md" %}

### Content\OneDrive

Explained in the following link

{% page-ref page="../docs/content/onedrive.md" %}

## 19.3.14 \(March 14, 2019\)

* **Get-OSBuilds** - resolved issue with Cumulative Updates showing Repair.  [**Thanks Andrew!**](https://twitter.com/AndrewJimenez_/status/1105848482470875146)\*\*\*\*
* **Import-OSMedia** - resolved issue with Legacy OS's not being imported properly
* **New-OSBuild** - resolved issue with LCU being applied one too many times.  [**Thanks Steve!**](https://twitter.com/NeighborGeek/status/1105583794042613760)\*\*\*\*
* Resolved error message during check for Module OSBuilder.  **Thanks Mike and Reinhard!**

## 19.3.12 \(March 12, 2019\) Patch Tuesday

### Function Changes

* **Get-OSDBuilder**
  * Replaces Get-OSBuilder
  * Default new directory C:\OSDBuilder
* **Get-OSDBuilderDownloads**
  * Replaces Get-OSBUpdate
* **New-OSDBuilderISO**
  * Replaces New-OSBMediaISO
* **New-OSDBuilderUSB**
  * Replaces New-OSBMediaUSB
* **Show-OSDBuilderInfo**
  * Replaces Show-OSBMediaInfo
* **Import-OSMedia**
  * Rename Parameter MediaINFO to OSDInfo
  * Remove Parameter MediaISO
* **Update-OSMedia**
  * Added Parameter SkipComponentCleanup
  * Rename Parameter DownloadUpdates to Download
  * Rename Parameter MediaISO to OSDISO
  * Rename Parameter MediaINFO to OSDInfo
* **New-OSBuild**
  * Added Parameter SkipComponentCleanup
  * Rename Parameter DownloadUpdates to Download
  * Rename Parameter MediaISO to OSDISO
  * Rename Parameter MediaINFO to OSDInfo
* **Removed Function New-OSBUpdate**
* **Removed Function Repair-OSBuildTask**
* **Removed Function Repair-PEBuildTask**
* **Removed Function Rename-OSMedia**

### Module Name Change

Ok, so changing the Module name from OSBuilder to OSDBuilder was not an easy one, but to be fair, the name change is more consistent with what I do \(OSD Stuff\) and easier to distinguish what it is used for.  I have tried to make the changes with minimal impact to you  Here are the things to know

* **OSDBuilder checks the Registry for your last OSBuilder path and picks up where OSBuilder left off**
* **OSDBuilder will use your current OSBuilder directory, without any material changes**
* **OSDUpdate Catalogs are now part of the OSDBuilder Module**
  * As long as you are on the latest **OSDBuilder**, you will have the latest **OSDUpdate** Catalogs
  * Since the **OSDUpdate** Catalogs are part of the Module, it's easy to go back to a previous Update Revision if necessary.  Just download an older **OSDBuilder** Module
  * You can stay on a Patch Revision until you are ready to update by staying on an older Module version

![](../../.gitbook/assets/image%20%2849%29.png)

* **Updates are downloaded to Content\OSDUpdate**
  * This should not impact you as **OSDBuilder** is being released on Patch Tuesday, when you have to get new updates anyway
  * Content\Updates will not be deleted automatically and is now an Orphan
* **Language Packages are no longer downloaded by OSDBuilder**
  * Microsoft has stopped publishing links to Language Packages in WSUS, as a result, I could only include versions up to 1803.  Since ALL Windows versions could not be supported with my downloads, the option was removed rather than supporting multiple methods for obtaining Language Packages
  * Additionally, the size of the Language Package Catalogs \(**8.62MB**\) is not ideal for including in a frequently updated PowerShell Module.  For comparison, all Windows 10 updates for all versions is **840KB**
  * Additionally, since **OSDBuilder** uses different logic for addressing Updates than **OSBuilder**, I was short on time getting this solutioned for **OSDBuilder**'s release.  Because there are Solutions and Workarounds for getting Language Packages added, my time was better spent on other things.  If time permits and there is a substantial need to be able to download Language Packages in OSDBuilder, I will consider adding them back
  * Existing downloads in Content\Updates will continue to work in **New-OSBuildTask** and **New-OSBuild**
  * As a solution, use the Language Pack ISO's from Microsoft MVLS going forward
  * As a workaround, download all your Language Packages in **OSBuilder** before upgrading to **OSDBuilder**
  * As a workaround, use my [**OSDUpdate PowerShell Module**](../../osdupdate/home.md) to download the Language Packages and add them to an **OSBuild** as a Package

![](../../.gitbook/assets/image%20%2873%29.png)

* **Optional Downloads are thing**
  * These are available to download and install in OSDBuilder

![](../../.gitbook/assets/image%20%28106%29.png)

* **Alias Everything**
  * You can execute OSBuilder or OSDBuilder.  Changes have been aliased

![](../../.gitbook/assets/image%20%283%29.png)

### Concerns

* **Q: But now my C:\OSBuilder directory doesn't have the same name as OSDBuilder.  What do I do?**
  * A: Relax and rename C:\OSBuilder to C:\OSDBuilder
* **Q: How do I add a custom SSU or LCU?**
  * A: You can't for now
* **Q: Can I update the Catalogs myself with WSUS?**
  * A: `Install-Module OSDCatalog`

