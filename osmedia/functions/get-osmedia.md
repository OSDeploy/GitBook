# Get-OSMedia

Returns the Directory Paths used by all OSMedia functions.

![](/assets/2018-06-22_12-48-29.png)

---

### -PathOSMedia

OSMedia main directory.  The default is C:\OSMedia \(System Drive\)

---

### -PathOSLibrary

Directory where the Operating Systems are imported.  The default is C:\OSMedia\Library

---

### -PathOSUpdates

Directory for downloaded CAB and MSU files from Windows Update Catalog.  The default is C:\OSMedia\Updates

---

### -PathOSMount

Directory where the Windows Images will be mounted.  The default is C:\OSMedia\Mount

---

### Registry

When executing Get-OSMedia, empty Strings will be created at HKEY\_CURRENT\_USER\Software\OSDeploy

![](/assets/2018-06-22_12-38-17.png)

