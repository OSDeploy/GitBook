# Get-OSMedia

* 18.06.26 Renamed variables.  Added BuildsPath
* 18.06.25 Initial Release

Returns the Directory Paths used by all OSMedia.

![](/assets/2018-06-26_1-58-01.png)

If content is in the Library, Builds, or Updates directories, they will be displayed

![](/assets/2018-06-26_2-07-32.png)

---

### OSMediaPath \| PathOSMedia

OSMedia main directory.  The default is C:\OSMedia \(System Drive\)

---

### LibraryPath \| PathOSLibrary

Directory where the Operating Systems are imported.  The default is C:\OSMedia\Library

Imported Operating Systems should not be modified

---

### BuildsPath

Directory where Operating Systems are Updated or Edited.  The default is C:\OSMedia\Builds



---

### UpdatesPath \| PathOSUpdates

Directory for downloaded CAB and MSU files from Windows Update Catalog.  The default is C:\OSMedia\Updates

---

### MountPath \| PathOSMount

Directory where the Windows Images will be mounted.  The default is C:\OSMedia\Mount

---

### Registry

When executing Get-OSMedia, empty Strings will be created at HKEY\_CURRENT\_USER\Software\OSDeploy

![](/assets/2018-06-22_12-38-17.png)

