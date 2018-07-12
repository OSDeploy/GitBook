# Run an OSMedia Task

---

### Select a Task

---

### Reading a Task

After selecting a Task to run, OSBuilder will read the configuration.  This task in particular is identified as an OSMedia Task.  Also note that a PowerShell Transcript has been started

![](/assets/2018-07-12_13-13-24.png)

---

### WinPE Updates

All WinPE's will be mounted first

![](/assets/2018-07-12_13-23-18.png)

Windows Updates will be applied \(excluding Adobe Flash Security Updates\)

![](/assets/2018-07-12_13-24-34.png)and Dism /Cleanup-Image will be run to remove the superseded files from the WIM

![](/assets/2018-07-12_13-25-45.png)









---

### Windows Updates



![](/assets/2018-07-12_13-17-15.png)

If all goes well you should see the updated UBR after Windows Updates have completed

![](/assets/2018-07-12_13-20-29.png)



---



