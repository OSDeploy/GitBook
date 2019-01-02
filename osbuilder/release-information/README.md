# Release Information

## 19.1.1 \(January 1, 2019\) UNRELEASED

_**Because several functions were renamed or changed, it is important that you review the changes for each of them before using in custom Scripts**_

* [**Get-OSMedia**](../docs/functions/osmedia/get-osmedia.md)\*\*\*\*
  * New function to return all OSMedia as a PowerShell Custom Object
* \*\*\*\*[**Get-OSBUpdate**](../docs/functions/updates/get-osbupdate.md)\*\*\*\*
  * _**Rename of Get-OSBuilderUpdates**_
* \*\*\*\*[**Import-OSMedia**](../docs/functions/osmedia/import-osmedia.md)\*\*\*\*
* \*\*\*\*[**New-OSBMediaISO**](../docs/functions/media/new-osbmediaiso.md)\*\*\*\*
  * _**Rename of New-MediaISO**_
  * **`FullName`** parameter is now a Pipeline Value By Property Name 
* \*\*\*\*[**New-OSBMediaUSB**](../docs/functions/media/new-osbmediausb.md)\*\*\*\*
  * _**Rename of New-MediaUSB**_
  * **`FullName`** parameter is now a Pipeline Value By Property Name
* \*\*\*\*[**Show-OSBMediaInfo**](../docs/functions/media/show-osbmediainfo.md)\*\*\*\*
  * _**Rename of Show-OSInfo**_

**Documentation**

* \*\*\*\*[**Docs**](../docs/)\*\*\*\*
  * To make things easier to follow, I will be moving and organizing documentation under the Docs section.  Links may change over the next few weeks as documentation is updated
* \*\*\*\*[**Functions**](../docs/functions/)\*\*\*\*
  * Quick details on all the functions and their new groupings
* \*\*\*\*[**Verbose Logging**](../docs/tips/verbose-logging.md)\*\*\*\*
  * Log information is now only visible when using the Verbose parameter

**Function Rename**

Several functions were renamed so they could be grouped by commonality.  This will impact any scripts you have based on the older names

![](../../.gitbook/assets/2019-01-01_10-19-31.png)



