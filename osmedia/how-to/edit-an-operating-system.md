# Edit an Operating System

---

### Copy-OSMedia

Start by copying an Operating System

```
Copy-OSMedia -NewOSMediaName "Windows 10 Enterprise 1803 x64 2018-06 Edit"
```

![](/assets/2018-06-24_14-46-04.png)

---

### Edit-OSMedia

In this example the Action will be "**Stay Mounted**'.  This will allow us to go through the Edit-OSMedia process repeatedly without saving to mount and dismount the Windows Image.

![](/assets/2018-06-24_14-48-14.png)

---

### Select the OSMedia to Edit

Select the Operating System to edit and press OK

![](/assets/2018-06-24_14-50-11.png)

---

### Export and Mount

The Windows Image will be exported to a temp.wim and then mounted.

![](/assets/2018-06-24_14-52-34.png)

---

### -ManageAppxPackages

Selecting this option will display a grid of all currently installed Appx Packages.  Select the ones you want to remove and press OK.

![](/assets/2018-06-24_9-47-41.png)

Every Appx Package that was selected will be removed

![](/assets/2018-06-24_9-52-57.png)

---

### -ManageCapabilities

Selecting this parameter will display all the installed Windows Capabilities, allowing you to select and remove as needed.

![](/assets/2018-06-24_9-57-17.png)

---

### -ManageFeatures

This parameter will display a list of ENABLED Windows Features that can be selected and DISABLED.

![](/assets/2018-06-24_10-00-00.png)

As well as DISABLED Windows Features that can be ENABLED

![](/assets/2018-06-24_10-01-57.png)

---

### -ManagePackages

Windows Packages will be displayed and can be selected for Removal

![](/assets/2018-06-24_10-05-45.png)

---

### -ApplyNetFX3

Selecting this parameter will install .NET 3.5 in your Windows Image.  This Package will cause the Windows Image to have Pending Operations, so you will not be able to Start Component Cleanup after installing the package.

![](/assets/2018-06-24_10-06-49.png)

---

### -Action "Stay Mounted"

Since the Action Parameter was set to "Stay Mounted", the Windows Image is not dismounted.

![](/assets/2018-06-24_10-09-19.png)

