# OSDUpdate

{% hint style="danger" %}
**If you used the previous OSD.Update PowerShell Module, it was removed because it downloaded superseded updates, and I didn't like the period in the name**
{% endhint %}

## **OSDUpdate** PowerShell Module

**OSDSoftware** is a PowerShell Module that is used to download some common updates used in OS Deployments.  It is published in the PowerShell Gallery at [**https://www.powershellgallery.com/packages/OSDUpdate**](https://www.powershellgallery.com/packages/OSDUpdate)\*\*\*\*

The following updates are included.  More will be added as needed in the future

* **Windows Defender**
* **McAfee SuperDAT v2**
* **McAfee SuperDAT v3**
* **McAfee GetSusp**
* **McAfee Stinger**
* **Microsoft Office 2010, 2013, 2016**
* **Microsoft Windows 10**
* **Microsoft Windows Server 2012 R2**
* **Microsoft Windows Server 2016**
* **Microsoft Windows Server 2019**

{% hint style="info" %}
**OSDUpdate contains the latest Microsoft Office and Microsoft Windows Updates to February 16, 2019.  Later releases will have more up to date information**
{% endhint %}

## Installation

Installation of the module through PowerShell is with the following commands

```text
Install-Module OSDUpdate
Import-Module OSDUpdate -Force
```

## Upgrading to a New Release

**OSDUpdate** includes a function that will Uninstall previous versions and Install the latest version.  Simply use the following command

```text
Update-ModuleOSDUpdate
```

