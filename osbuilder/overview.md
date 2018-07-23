# OSBuilder Overview

OSBuilder is a PowerShell module to help you perform Offline Servicing to a Windows Operating System Image.  By using an Offline method of configuring an Operating System, it can then be imported in MDT or SCCM and used like any other OS Deployment.  This includes being able to use in an Upgrade Task Sequence, which you cannot do with a Captured Image.

The main difference between OSBuilder and other scripted methods for Servicing a Windows Image Offline is that OSBuilder creates an answer file called a Task \(think Task Sequence\).  Since the Task has all the information it needs to update the Windows Image, there is no interaction necessary, and as long as the content \(updates\) are updated regularly, the Task can be repeated as needed.

Since the configuration is also saved in a Task, it is possible to select multiple tasks to run, and they will execute one right after another.  This makes performing a monthly update take a few minutes to kick off.  After a few hours, everything will be complete!

---

# OSBuilder Design

Most people are visual, so to help you understand how OSBuilder will work, here is the OSBuilder Lifecycle.  So let's talk about how this works.

### ![](/assets/2018-07-21_23-10-22.png)Patch Tuesday

On Patch Tuesday, download your required bits into OSBuilder using the following command

```
Get-OSBuilder -DownloadUpdates Latest
```

Make sure you remove any superseded Servicing Stacks and Cumulative Updates.

### OSMedia Task

Create an OSMedia Task and execute it.  This will automatically take the latest OSMedia version and update the new Servicing Stack and Cumulative Update to the Install.wim as well as the Boot.wim \(both indexes\) and WinRE.wim.  When this is complete, you will have a new OSMedia Image \(since the version should change\).

### OSBuild Task

The OSBuild Task will contain customizations, like enabling NetFX3, removing some Appx Packages, adding Drivers, or even adding a custom Start Layout.  The OSBuild Task will automatically use the latest OSMedia \(the one you just created\) and customize that.  Once the execution of this task is complete, you will have a custom OSBuild which can then deploy to your environment. You can choose to make multiple OSBuilds from the same OSMedia that have different configurations \(eg. one Enterprise and one Manufacturing OSBuild\)

### The Cycle

This is where your process repeats.  When Microsoft releases a new round of updates, download the updates you need, and remove the ones you don't from OSBuilder.  Then Invoke-OSBuilderTask and select both your OSMedia Task and your OSBuild Task.  The OSMedia will process first, creating an updated OSMedia and the OSBuild Task will automatically pick the new OSMedia version and customize it.  As long as there are no changes, you will spend 10 minutes or so downloading updates, and about a minute kicking off the Tasks.  While the build process will take a little while to run, you will probably spend 5 minutes or so in the Patch and Task kickoff parts.

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

---

### References

* [Johan Arwidmark: Windows 10 Servicing Script - Creating the better In-Place upgrade image](https://deploymentresearch.com/Research/Post/672/Windows-10-Servicing-Script-Creating-the-better-In-Place-upgrade-image)
* [EXEC\|MGR: Windows 10 Image Maintenance and Cleanup](https://execmgr.net/2018/06/07/windows-10-image-maintenance/)
* [Mike Terrill: Optimizing Win10 OS Upgrade WIM Sizes](https://miketerrill.net/2018/06/23/optimizing-win10-os-upgrade-wim-sizes/)

---



