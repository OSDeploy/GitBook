# un an OSMedia Task

---

### Things to Know

When it comes to Servicing Windows offline, understand two things:

* The more Monthly Updates an Operating System needs, the longer the Cumulative Update and the Image Cleanup will take. This means that Windows 1607 OSMedia that hasn't been updated since November 2016 has about 21 months worth of updates.
* An x64 will take almost twice as long as x86 Operating System to update because it contains files for 32-bit and 64-bit execution

To keep things simple, look at the size of the Cumulative Update as a good metric. Windows 10 x86 1803 is under 400MB, whereas Windows 10 x64 1607 is over 1.3GB. Test and Execute your smallest first to ensure that everything will function properly.

![](/assets/2018-07-14_1-13-29.png)

---

### Select a Task

You will be prompted to select an existing Task.  You can select more than one to run sequentially.

![](/assets/2018-07-14_1-54-41.png)

---

### Reading a Task

After selecting a Task to run, OSBuilder will read the configuration

![](/assets/2018-07-14_3-02-49.png)

---

### Working Copy

A copy of the OSMedia will be made to work with so no changes are ever made to the original import

![](/assets/2018-07-14_3-04-17.png)

---

### WinPE Phase

All WinPE's will be mounted first

![](/assets/2018-07-14_3-04-54.png)

Windows Updates will be applied \(excluding Adobe Flash Security Updates\)![](/assets/2018-07-14_3-05-42.png)

and Dism /Cleanup-Image will be run to remove the superseded files from the WIM

![](/assets/2018-07-14_3-06-21.png)

WinPE will be Dismounted and Saved, and then Exported to reduce the size of the WIMs

![](/assets/2018-07-14_3-07-11.png)

Boot.wim will be regenerated with the updated Indexes

![](/assets/2018-07-14_3-08-07.png)

---

### Mounting the OS Install.wim and ReplaceWinRE

The OS will be mounted and the updated WinRE will be injected

![](/assets/2018-07-14_11-04-25.png)

---

### Stacks and Windows Updates

Servicing Stacks and Windows Updates will be applied.  The UBR will be shown before the Windows Updates start and after it is complete.  Make sure the UBR matches the one from the downloaded Cumulative Update \(this is why I added the UBR to in the naming convention if you get the updates using OSBuilder\)

![](/assets/2018-07-14_11-05-28.png)

---

### Dism Cleanup Image

This is what an update looks like when Servicing an x86 OS from a June to July CU.  If you update this monthly the process does not take long.  This process will take considerably longer the more updates that are needed.

![](/assets/2018-07-14_11-09-56.png)

---

### OSBuild Options

Skipped as we are creating an OSMedia update, which is only SSU and CU's

![](/assets/2018-07-12_14-20-09.png)

---

### Closing Process

Image Configuration will be saved and Install.wim will be Dismounted and Saved, and then exported to compact the size of the WIM.  Configuration files will be created and logged.

![](/assets/2018-07-14_11-12-51.png)

---

### Logging

There is quite a bit of logging that goes on in OSBuilder.  In these JSON files is the current information about the image.

![](/assets/2018-07-14_11-12-51b.png)

These files are saved historically, so you should be able to have PowerShell perform a comparison of the earliest and the current version.

![](/assets/2018-07-14_11-24-28.png)

---

### Reporting

This is the complete output from the JSON files and a current Get-WindowsImage -Index 1 with the UBR added to the bottom.

![](/assets/2018-07-14_11-20-44.png)

---

### Complete

When complete, OSBuilder will rename the complete directory to match the Operating System including the UBR at the end, so there is no guess as to what version of Windows 10 you are using.

![](/assets/2018-07-14_11-27-08.png)

![](/assets/2018-07-14_11-28-51.png)

---

