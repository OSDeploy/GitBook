# OSDSoftware Home

## **OSDSoftware** PowerShell Module

**OSDSoftware** is a PowerShell Module that is used to download some common software used in OS Deployments.  It is published in the PowerShell Gallery at [**https://www.powershellgallery.com/packages/OSDSoftware**](https://www.powershellgallery.com/packages/OSDSoftware)\*\*\*\*

The following software is included.  More will be added as needed in the future

* **Google Chrome Enterprise x64** \(latest version\)
* **Microsoft ADK 1803**
* **Microsoft ADK 1809**
* **Microsoft ADK 1809 WinPE Addon**
* **Microsoft MDT 8456 x86**
* **Microsoft MDT 8456 x64**
* **Microsoft VS code User x64** \(latest version\)
* **Microsoft VS code System x64** \(latest version\)

{% hint style="info" %}
**OSDSoftware will always download the latest versions of Google Chrome and Microsoft VS code**

**Adobe Acrobat Reader and Notepad++ will be added in a later release**
{% endhint %}

## Installation

Installation of the module through PowerShell is with the following commands

```text
Install-Module OSDSoftware
Import-Module OSDSoftware -Force
```

## Upgrading to a New Release

**OSDSoftware** includes a function that will Uninstall previous versions and Install the latest version.  Simply use the following command

```text
Update-ModuleOSDSoftware
```

