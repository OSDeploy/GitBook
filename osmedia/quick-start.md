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

### References

* [EXEC\|MGR: Windows 10 Image Maintenance and Cleanup](https://execmgr.net/2018/06/07/windows-10-image-maintenance/)
* [Mike Terrill: Optimizing Win10 OS Upgrade WIM Sizes](https://miketerrill.net/2018/06/23/optimizing-win10-os-upgrade-wim-sizes/)

---

### Admin Rights

OSMedia requires Admin Rights in PowerShell as you will be manipulating Windows Images.  Make sure you launch PowerShell ISE as Administrator when using OSMedia

---

### OSMedia Installation

OSMedia has been published in the [PowerShell Gallery](https://www.powershellgallery.com/) at [https://www.powershellgallery.com/packages/OSMedia/](https://www.powershellgallery.com/packages/OSMedia/)

**PowerShell Uninstall Previous Versions:**

```
Uninstall-Module -Name OSMedia -AllVersions -Force
```

**PowerShell Install Latest Version:**

```

Install-Module -Name OSMedia -Scope CurrentUser
```

---

### OSMedia in PowerShell ISE

After installing the PowerShell Module, OSMedia can now be run in PowerShell ISE

![](/assets/2018-06-25_9-46-08.png)

