# OSBuilder: Getting Started

I recommend running OSBuilder in PowerShell ISE \(as Administrator\) until you get familiar with the steps.  The first step of using OSBuilder is to run Get-OSBuilder.

---

### Supported Operating Systems

OSBuilder currently supports Windows 10.  I am updating the logic to work with Windows Server 2016 in the next few weeks

---

### A Word of Caution

Since OSBuilder will mount Windows Images, I strongly recommend that you do not have any running Anti-Virus scanning files ON ACCESS.  McAfee will prevent the dismounting of images properly.

**Work with OSBuilder in a clean Virtual Machine or a stand alone Workgroup Computer**

---

### OSMedia

If you used my previous attempt at this called OSMedia, you will need to get rid of it first.

![](/assets/2018-07-10_11-49-36.png)

---

### Get-OSBuilder

Start by opening PowerShell ISE as Elevated \(Run as Administrator\).  Select the OSBuilder Module and then Get-OSBuilder

When executing Get-OSBuilder without any parameters, it will display a few things:

* OSBuilder PowerShell Module Version Information
* Directory Structure
  * \(does not exist\) is self explanatory
* Update Information \(OSBuilder PowerShell Module is OK\)

![](/assets/2018-07-13_19-14-36.png)

---

### Get-OSBuilder -OSBuilderPath

If you want to redirect OSBuilder to a different location, use this parameter

![](/assets/2018-07-13_19-25-42.png)

---

### Get-OSBuilder -CreatePaths

This will create the OSBuilder directory structure.  Notice that \(does not exist\) is no longer present

![](/assets/2018-07-13_19-23-04.png)

And the same structure in Windows Explorer

![](/assets/2018-07-10_12-00-51.png)

---



