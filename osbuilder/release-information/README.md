# Release Information

## 19.1.2 \(January 2, 2019\)

{% hint style="danger" %}
**Several functions were renamed or changed, it is important that you review the changes for each of them before using in custom Scripts**
{% endhint %}

* [**Get-OSMedia**](../docs/functions/osmedia/get-osmedia.md)\*\*\*\*
  * New function to return all OSMedia as a PowerShell Custom Object
* \*\*\*\*[**Get-OSBUpdate**](../docs/functions/osbupdate/get-osbupdate.md)\*\*\*\*
  * _**Rename of Get-OSBuilderUpdates**_
* \*\*\*\*[**New-OSBMediaISO**](../docs/functions/osbmedia/new-osbmediaiso.md)\*\*\*\*
  * _**Rename of New-MediaISO**_
  * **`FullName`** parameter is now a Pipeline Value By Property Name 
* \*\*\*\*[**New-OSBMediaUSB**](../docs/functions/osbmedia/new-osbmediausb.md)\*\*\*\*
  * _**Rename of New-MediaUSB**_
  * **`FullName`** parameter is now a Pipeline Value By Property Name
* \*\*\*\*[**Show-OSBMediaInfo**](../docs/functions/osbmedia/show-osbmediainfo.md)\*\*\*\*
  * _**Rename of Show-OSInfo**_

#### **Windows 7**

Yup, its supported.  Here is what you need to know

{% page-ref page="../docs/articles/windows-7/" %}

**Documentation**

To make things easier to follow, I will be moving and organizing documentation under the Docs section.  Links may change over the next few weeks as documentation is updated

{% page-ref page="../docs/" %}

#### Functions

Here is the latest on all the OSBuilder Functions

{% page-ref page="../docs/functions/" %}

#### Verbose Logging

Detailed information requires using the -Verbose parameter

{% page-ref page="../docs/tips/verbose-logging.md" %}

**Function Rename**

Several functions were renamed so they could be grouped by commonality.  This will impact any scripts you have based on the older names

![](../../.gitbook/assets/2019-01-01_10-19-31.png)

#### Comment Based Help

All functions have updated Comment Based Help including Online Links.  For Online with a Function, use the **`Get-Help <function> -Online`**

![](../../.gitbook/assets/2019-01-02_12-25-27.png)



