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

There are a few parameters to OSBuilder, but running Get-OSBuilder without a parameter will give you a listing of your OSBuilder components.

![](/assets/2018-07-10_11-55-28.png)

---

### Get-OSBuilder -OSBuilderPath

If you want to redirect OSBuilder to a different location, use this parameter

![](/assets/2018-07-10_11-57-17.png)

---

### Get-OSBuilder -CreatePaths

If you are satisfied with the OSBuilder path, using this parameter will set the OSBuilder structure

![](/assets/2018-07-10_11-58-43.png)

And the same structure in Windows Explorer

![](/assets/2018-07-10_12-00-51.png)

---



