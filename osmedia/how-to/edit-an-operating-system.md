# Edit an Operating System

---

### Copy-OSMedia

Start by copying an Operating System

```
Copy-OSMedia -NewOSMediaName "Windows 10 Enterprise 1803 x64 2018-06 Custom"
```

![](/assets/2018-06-24_2-53-33.png)

---

### Edit-OSMedia

In this example the Action will be to Stay Mounted so I can go through different options at different times.

![](/assets/2018-06-24_3-00-47.png)

---

### Select the OSMedia to Edit

I will be prompted to select the OSMedia from the Library to work with

![](/assets/2018-06-24_9-38-07.png)

---

### Export and Mount

The Windows Image will be exported to a temp.wim and then mounted.

![](/assets/2018-06-24_9-39-48.png)

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





