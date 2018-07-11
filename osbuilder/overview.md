# OSBuilder Overview

OSBuilder is a PowerShell module to help you perform Offline Servicing to a Windows Operating System Image.  By using an Offline method of configuring an Operating System, it can then be imported in MDT or SCCM and used like any other OS Deployment.  This includes being able to use in an Upgrade Task Sequence, which you cannot do with a Captured Image.

The main difference between OSBuilder and other scripted methods for Servicing a Windows Image Offline is that OSBuilder creates a prompted answer file called a Task \(think Task Sequence\).  Since the Task has all the information it needs to update the Windows Image, there is no interaction necessary, and as long as the content \(updates\) are updated regularly, the Task can be repeated as needed.

Since the configuration is also saved in a Task, it is possible to select multiple tasks to run, and they will execute one right after another.  This makes performing a monthly update take a few minutes to kick off.  After a few hours, everything will be complete!

---

### OSBuilder Features

With OSBuilder, you will be able to perform the following:

* **Create an OSMedia Library**
* **Create a custom OS Build and perform the following Offline**
  * Apply Servicing Stack Updates
  * Apply Cumulative Updates
  * Perform Image Cleanup
  * Enable DotNet 3.5
  * Remove Appx Packages
  * Remove Windows Capabilities
  * Enable Windows Features
  * Disable Windows Features
  * Install Language Packs
  * Install Packages
  * Inject Drivers
  * Add Extra Files
  * Apply a Start Layout Modification
  * Apply a Windows Unattend.xml
* **Customize WinPE and WinRE**
  * Apply Servicing Stack Updates
  * Apply Cumulative Updates
  * Perform Image Cleanup
  * Apply DaRT
  * Inject Drivers
* **Create Update Tasks**
* **Execute Multiple Update Tasks without interaction**

---


### OSBuilder PowerShell Module

To keep things easy, OSBuilder is a PowerShell module and integrates well into PowerShell ISE


![](/assets/2018-07-10_11-21-36.png)


---

### References

* [Johan Arwidmark: Windows 10 Servicing Script - Creating the better In-Place upgrade image](https://deploymentresearch.com/Research/Post/672/Windows-10-Servicing-Script-Creating-the-better-In-Place-upgrade-image)
* [EXEC\|MGR: Windows 10 Image Maintenance and Cleanup](https://execmgr.net/2018/06/07/windows-10-image-maintenance/)
* [Mike Terrill: Optimizing Win10 OS Upgrade WIM Sizes](https://miketerrill.net/2018/06/23/optimizing-win10-os-upgrade-wim-sizes/)

---



