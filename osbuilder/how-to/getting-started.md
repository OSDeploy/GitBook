# OSBuilder: Getting Started

I recommend running OSBuilder in PowerShell ISE \(as Administrator\) until you get familiar with the steps.  The first step of using OSBuilder is to run Get-OSBuilder.

---

### Hardware Requirements

Offline Servicing of Windows 10 can take a considerable amount of time, especially on older releases.  The process of Mounting a WIM, Applying a Cumulative Update, and performing DISM Image Cleanup will take as little as 30 minutes \(1803 x86\) on a healthy Intel Core i7 computer with a SSD, to almost 2 hours \(1607 x64\) on the same system.

I strongly recommend using a Workstation class system in performing these updates.

---

### Supported Operating Systems

OSBuilder currently supports Windows 10.  I am updating the logic to work with Windows Server 2016 in the next few weeks

---

### A Word of Caution

Since OSBuilder will mount Windows Images, I strongly recommend that you do not have any running Anti-Virus scanning files ON ACCESS.  McAfee will prevent the dismounting of images properly.

**Work with OSBuilder in a clean Virtual Machine \(with 4 Cores and 16GB of RAM minimum\) or a stand alone Workgroup Computer**

---

### OSMedia

If you used my previous attempt at this called OSMedia, you will need to get rid of it first.

![](/assets/2018-07-10_11-49-36.png)

---

### Get-OSBuilder

There are a few parameters to OSBuilder, but running Get-OSBuilder without a parameter will give you a listing of your OSBuilder components.  The Version will be displayed at the top

![](/assets/2018-07-13_14-15-54.png)

---

### Get-OSBuilder -OSBuilderPath

If you want to redirect OSBuilder to a different location, use this parameter

![](/assets/2018-07-13_14-16-46.png)

---

### Get-OSBuilder -CreatePaths

If you are satisfied with the OSBuilder path, using this parameter will set the OSBuilder structure

![](/assets/2018-07-13_14-18-07.png)

And the same structure in Windows Explorer

![](/assets/2018-07-13_14-19-26.png)

---

### Updates

If OSBuilder is up to date, this will be displayed as a message on the bottom

![](/assets/2018-07-13_14-15-54b.png)

If a newer version is released, this will change to a Warning message

![](/assets/2018-07-13_13-10-21.png)

If Servicing Stacks or Windows Updates have changed, a Warning message will be displayed as well

![](/assets/2018-07-13_13-13-10.png)

---





