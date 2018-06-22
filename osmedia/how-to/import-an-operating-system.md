### Import an Operating System

This page will detail how to import an Operating System using OSMedia.  In this example we will import Windows 10 Enterprise 1803 x64 into the OSMedia Library

---

### Know Your Update Information

If you download Windows 10 from the Microsoft Volume Licensing Service Center, each download of Windows 10 has an updated date.  Make a note of this information.

![](/assets/2018-06-18_11-29-13.png)

---

### Mount Windows 10 1803 x64

Mount the ISO as a Drive, as you normally would in Windows Explorer

---

### Import-OSMedia

Since each imported Operating System will need to be unique, make sure the updated information is in the NewOSMediaName

```
Import-OSMedia -NewOSMediaName "Windows 10 Enterprise 1803 x64 2018-03"
```

---

### Multiple Windows Images

After running the PowerShell command, the Operating System Image will be checked for multiple Windows Images within the install.wim.  Select a single Operating System to import and press OK.

![](/assets/2018-06-22_13-38-59.png)

---



















