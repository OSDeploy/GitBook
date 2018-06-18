# Import OSMedia

Let's start with something as simple as importing an Operating System into our OSMedia library.

---

### Version Information

If we download our media from Microsoft Volume Licensing Service Center, we see that each Windows 10 Version has an updated date.  It is important to keep that in mind when we import the OSMedia.

![](/assets/2018-06-18_11-29-13.png)

---

### Mount Windows 10 Enterprise 1803

If you downloaded an ISO for Windows 10 Enterprise, you will need to mount it in your Operating System before it is ready to use.

---

### OSBuild PowerShell Module

Open PowerShell ISE as Administrator and make sure you "Show Command Add-on".  Select the OSBuild Module and the Import-OSMedia PowerShell Function.  Press the Show Details button.

For Action, select "OSMedia Import from Drive"

The OSMediaName should be something super-memorable.  It is import to include the OS Version, Architecture, and Update information.

PathOSBuild can be left blank and will default to C:\OSBuild

Press Run

![](/assets/2018-06-18_11-43-43.png)

---

### Select OSMedia Import Drive

If the ISO is properly mounted we will get a prompt to select a drive to import from.  Select the drive and press OK

![](/assets/2018-06-18_11-47-20.png)

---

### Multiple Windows Image Indexes

PowerShell will check the install.wim for multiple indexes.  Only single index Windows Images should be imported.  Select the Windows Image to import and press OK.

![](/assets/2018-06-18_11-49-47.png)

---

### Script Output

We should get a short and detailed output of information in the import of the OS

![](/assets/2018-06-18_11-55-16.png)

---

### Imported OSMedia Directory

In my example, my Windows 10 Enterprise was imported to C:\OSBuild\OSMedia\Windows 10 Enterprise 1803 x64 2018-03.  Additionally we see that there is a Logs directory that was newly created.

![](/assets/2018-06-18_12-07-34.png)

---

### Logs

In this directory you will find a PowerShell Transcript of your Import.  Additionally there is Output from Get-WindowsImage and Get-WindowsImageContent.  In the Get-WindowsImage Output, you will see that the new ImageName matches the OSMediaName that you entered in the PowerShell Module.  This will help identify the image when you import it into SCCM or MDT.

![](/assets/2018-06-18_12-22-51.png)

---

### Additional Imports

Repeat this process for every OS Image that you support.

![](/assets/2018-06-18_12-56-53.png)

