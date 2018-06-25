# Import-OSMedia

Once the OSMedia paths have been set, you can import an Operating System into the OSMedia Library using this function

![](/assets/2018-06-22_15-28-51.png)

---

### -NewOSMediaName

This is the name of the Operating System and should be unique.  The dates at the end of the Operating System names correspond with the last update.  See the examples below.

```
Windows 10 Enterprise 1709 x64 2017-12
Windows 10 Enterprise 1803 x64 2018-03
```

NewOSMediaName is also applied to the Windows Image as the ImageName.  This can be confirmed by using Get-WindowsImage.

```
Get-WindowsImage -ImagePath "D:\OSMedia\Library\Windows 10 Enterprise 1803 x64 2018-03\Sources\install.wim"

ImageIndex       : 1
ImageName        : Windows 10 Enterprise 1803 x64 2018-03
ImageDescription : Windows 10 Enterprise
ImageSize        : 15,649,800,180 bytes
```

---



