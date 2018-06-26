# Get-OSMedia

* 18.06.26 Renamed variables.  Added BuildsPath
* 18.06.25 Initial Release

Returns the Directory Paths used by all OSMedia, displays the Operating Systems in the OSLibrary Path, and displays the Operating System Updates in OSUpdates Path.  There are no parameters.

![](/assets/2018-06-24_22-38-13.png)

---

### PathOSMedia

OSMedia main directory.  The default is C:\OSMedia \(System Drive\)

---

### PathOSLibrary

Directory where the Operating Systems are imported.  The default is C:\OSMedia\Library

---

### PathOSUpdates

Directory for downloaded CAB and MSU files from Windows Update Catalog.  The default is C:\OSMedia\Updates

---

### PathOSMount

Directory where the Windows Images will be mounted.  The default is C:\OSMedia\Mount

---

### Registry

When executing Get-OSMedia, empty Strings will be created at HKEY\_CURRENT\_USER\Software\OSDeploy

![](/assets/2018-06-22_12-38-17.png)

