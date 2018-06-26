* 18.06.26 This function is removed and has been replaced by [**New-OSBuild**](/osmedia/reference/new-osbuild.md)
* 18.06.25 Initial Release

---

# Copy-OSMedia

Before making any changes to any imported OSMedia, it is strongly recommended that you make a copy of the OSMedia

![](/assets/2018-06-22_15-28-13.png)

---

### -NewOSMediaName

This is the name of the new Operating System and it will need to be unique.  Using the example below will create a copy of an existing Operating System with the name "Windows 10 Enterprise 1803 x64 2018-06"

```
Copy-OSMedia -NewOSMediaName "Windows 10 Enterprise 1803 x64 2018-06"
```

NewOSMediaName is also applied to the Windows Image as the ImageName

---



