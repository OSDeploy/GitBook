# Apply Updates

I prefer to run this step on a network disconnected Virtual Machine so nothing on my production computer interferes with the process \(like McAfee ...\)

Using PowerShell ISE, select Update-OSMedia.  If the default path of OSBuild is C:\OSBuild, and all the updates are in C:\OSBuild\Updates, then the only step needed is to select the Action "Update and Cleanup Imported OSMedia"

![](/assets/2018-06-18_22-56-28.png)

---

### Select OSMedia

The first step is to select the OSMedia to update.  In the example below, this is the OSMedia that was Copied in the last page.  Press OK after selecting the proper OSMedia.

![](/assets/2018-06-18_23-01-34.png)

---

### Select Windows Updates

Once the OSMedia is selected, a grid of the available updates in C:\OSBuild\Updates will be displayed.  Select the updates that need to be applied and press OK.  If there are many updates, a simple use of the Filter to enter something like 1803 will narrow things down

![](/assets/2018-06-18_23-03-55.png)

---

### Execution

Once the updates have been selected the following steps will occur

* Windows Image will be mounted
* Windows Updates will be applied Offline
* Image Cleanup with /StartComponentCleanup /ResetBase
* Image will be dismounted and saved

This process will take a while to run so take a break.  When you get back, you will now have an updated OSMedia that you can import into SCCM or MDT.

![](/assets/2018-06-19_0-29-46.png)

---

### Logs

In addition to the PowerShell Transcript that is created, some additional TXT files are created with information about the 

* Get-AppxProvisionedPackage
* Get-WindowsCapability
* Get-WindowsOptionalFeature
* Get-WindowsPackage

![](/assets/2018-06-19_0-35-12.png)

Reviewing the Get-WindowsPackage TXT file, the updates that were applied successfully show as installed.

![](/assets/2018-06-19_0-36-29.png)

---

### Summary

Using OSBuild to apply updates to a Windows Image makes things simple and painless.

