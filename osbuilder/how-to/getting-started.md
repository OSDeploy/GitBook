# OSBuilder: Getting Started

I recommend running OSBuilder in PowerShell ISE \(as Administrator\) until you get familiar with the steps.  The first step of using OSBuilder is to run Get-OSBuilder.

---

### Hardware Requirements

Offline Servicing of Windows 10 can take a considerable amount of time, especially on older releases.  The process of Mounting a WIM, Applying a Cumulative Update, and performing DISM Image Cleanup will take as little as 30 minutes \(1803 x86\) on a healthy Intel Core i7 computer with a SSD, to almost 2 hours \(1607 x64\) on the same system.

I strongly recommend using a Workstation class system in performing these updates.

Since OSBuilder will mount Windows Images, I strongly recommend that you do not have any running Anti-Virus scanning files ON ACCESS.  McAfee will prevent the dismounting of images properly.

**Work with OSBuilder in a clean Virtual Machine \(with 4 Cores and 16GB of RAM minimum\) or a stand alone Workgroup Computer**

---

### Admin Rights

OSBuilder requires Admin Rights in PowerShell as you will be manipulating Windows Images. Make sure you launch PowerShell ISE as Administrator when using OSBuilder

---

### Supported Operating Systems

OSBuilder currently supports Windows 10.  I am updating the logic to work with Windows Server 2016 in the next few weeks

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

![](/assets/2018-07-13_19-37-37.png)

![](/assets/2018-07-13_19-39-05.png)

---

### Get-OSBuilder -CreatePaths

This will create the OSBuilder directory structure

![](/assets/2018-07-13_19-37-20.png)

![](/assets/2018-07-13_19-40-42.png)

And the same structure in Windows Explorer

![](/assets/2018-07-10_12-00-51.png)

---

### Updates

If OSBuilder is up to date, this will be displayed as a message on the bottom

![](/assets/2018-07-13_19-35-18.png)

If a newer version is released, this will change to a Warning message

![](/assets/2018-07-13_13-10-21.png)

If Servicing Stacks or Windows Updates have changed, a Warning message will be displayed as well

![](/assets/2018-07-13_13-13-10.png)

---



