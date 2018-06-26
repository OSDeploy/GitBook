# Set-OSMedia

* 18.06.26 Renamed parameters.  Added BuildsPath parameter
* 18.06.25 Initial Release

The default OSMedia paths won't work for everyone, so you are able to make changes on your own.  All parameters should be directory paths

![](/assets/2018-06-26_2-17-10.png)

* Executing Set-OSMedia without parameters will display the current values

![](/assets/2018-06-26_2-22-56.png)

* Changes will be reflected in the User Registry

![](/assets/2018-06-26_2-38-15.png)

---

### -OSMediaPath \| -PathOSMedia

Making a change to the main directory will result in a change of all child directories.  In the example below a the OSMedia Path has been changed from C:\OSMedia to D:\OSMedia

---

### -LibraryPath \| -PathOSLibrary

Default is a child directory of OSMedia named Library

---

### -BuildsPath

Default is a child directory of OSMedia named Builds

---

### -UpdatesPath \| -PathOSUpdates

Default is a child directory of OSMedia named Updates

---

### -MountPath \| -PathOSMount

You can certainly make a change to the Mount directory without any issues.

![](/assets/2018-06-22_23-44-42.png)

---



