* 18.06.26 Edited Import-OSMedia select title  
* 18.06.25 Initial Release

---


# Import-OSMedia


Once the OSMedia paths have been set, you can import an Operating System into the OSMedia Library using this function.  Enter the name of the Operating System you are importing.

![](/assets/2018-06-26_9-59-31.png)

* Import-OSMedia will check Drives for instances of %Drive%\sources\install.wim
* Import will be automatic for single instances of install.wim.  If multiple instances are found, you will be prompted to select the drive to Import

![](/assets/2018-06-26_10-00-57.png)

---

### -NewOSMediaName

This is the name of the Operating System and should be unique.  The dates at the end of the Operating System names correspond with the last update.  Windows 10 Enterprise 1803 x64 that was last updated in March 2018, should have the following naming convention.

```
Windows 10 Enterprise 1803 x64 2018-03
```

NewOSMediaName is also applied to the Windows Image as the ImageName.  This can be confirmed by using Get-WindowsImage.

**Known Issue: If the Operating System running Import-OSMedia is Windows 10 1803, the ImageName may not be set properly**

```
Get-WindowsImage -ImagePath "D:\OSMedia\Library\Windows 10 Enterprise 1803 x64 2018-03\Sources\install.wim"

ImageIndex       : 1
ImageName        : Windows 10 Enterprise 1803 x64 2018-03
ImageDescription : Windows 10 Enterprise
ImageSize        : 15,649,800,180 bytes
```

---



