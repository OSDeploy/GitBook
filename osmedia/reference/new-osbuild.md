**18.06.26 Initial Release.  Replaces [Copy-OSMedia](/osmedia/reference/copy-osmedia.md)**

---


# New-OSBuild


An OSBuild is a copy of any previously imported Operating System \(Library\) or Operating System Build \(Builds\).  This function will create a new instance located in C:\OSMedia\Builds

![](/assets/2018-06-26_11-43-11.png)

---

### -OSBuildName

This is the name of the new Operating System and it will need to be unique.  Using the example below will create a copy of an existing Operating System with the name "Windows 10 Enterprise 1803 x64 2018-06"

```
New-OSBuild -OSBuildName "Windows 10 Enterprise 1803 x64 2018-06"
```

OSBuildName is also applied to the Windows Image as the ImageName

---



