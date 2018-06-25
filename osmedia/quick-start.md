# OSMedia Quick Start

OSMedia is a PowerShell module to work with Offline Windows Images.  Using OSMedia, you will be able to:

* Create an OSMedia \(Operating System\) Library
* Import an Operating System
* Update an Operating Systems with Windows Updates \(Cumulative Updates\)
  * DISM /Cleanup-Image /StartComponentCleanup /ResetBase
* Edit an Operating System Image Offline
  * Install DotNet 3.5
  * Remove Appx Packages
  * Remove Windows Capabilities
  * Remove Windows Features
  * Remove Windows Packages

---

### Installation

OSMedia has been published in the [PowerShell Gallery](https://www.powershellgallery.com/)

[https://www.powershellgallery.com/packages/OSMedia/](https://www.powershellgallery.com/packages/OSMedia/)

You can install OSMedia by using the following command in PowerShell

```
Install-Module -Name OSMedia -Scope CurrentUser
```

---



