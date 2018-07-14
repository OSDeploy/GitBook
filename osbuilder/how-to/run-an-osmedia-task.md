# Run an OSMedia Task

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

![](/assets/2018-07-12_14-13-49.png)

---

### Reading a Task

After selecting a Task to run, OSBuilder will read the configuration.  This task in particular is identified as an OSMedia Task.  Also note that a PowerShell Transcript has been started

![](/assets/2018-07-12_13-13-24.png)

---

### WinPE Phase

All WinPE's will be mounted first

![](/assets/2018-07-12_13-23-18.png)

Windows Updates will be applied \(excluding Adobe Flash Security Updates\)

![](/assets/2018-07-12_13-24-34.png)and Dism /Cleanup-Image will be run to remove the superseded files from the WIM

![](/assets/2018-07-12_13-25-45.png)

WinPE will be Dismounted, Saved, and Exported

![](/assets/2018-07-12_14-15-31.png)Boot.wim will be regenerated with the updated Indexes

![](/assets/2018-07-12_14-16-36.png)

---

### Mounting the OS Install.wim

The OS will be mounted and the updated WinRE will be injected

![](/assets/2018-07-12_14-17-35.png)

---

### Stacks and Windows Updates

Servicing Stacks and Windows Updates will be applied.  The UBR will be shown before the Windows Updates start.

![](/assets/2018-07-12_13-17-15.png)

If all goes well you should see the updated UBR after Windows Updates have completed

![](/assets/2018-07-12_13-20-29.png)

---

### Dism Cleanup Image

This will take a while, go grab a lunch or something

![](/assets/2018-07-12_14-19-11.png)

---

### OSBuild Options

Skipped!

![](/assets/2018-07-12_14-20-09.png)

---

### Closing Process

Image Configuration will be saved and Install.wim will be Dismounted and Saved

![](/assets/2018-07-12_14-52-01.png)And the directory will be renamed using the Image Information and the UBR![](/assets/2018-07-12_14-53-28.png)

---

### Complete OSMedia

Once the Task has been run, the new OSMedia is available to use for and OSBuild.  The main benefit of a Task is that when a new Cumulative Update is released, just copy the updates in the Windows Updates directory and run the task again without any other modifications.



![](/assets/2018-07-12_14-55-19.png)

---



