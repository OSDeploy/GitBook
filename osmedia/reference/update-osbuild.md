* 18.06.26 Initial Release.  Replaces [Update-OSMedia](/osmedia/reference/update-osmedia.md)

---


# Update-OSBuild


This function is used to apply Windows Updates and to Cleanup and compress a Windows Image

![](/assets/2018-06-26_12-27-05.png)

---

### -Action "Apply Updates and Component Cleanup"

This is a lengthy process that will complete the following

* Mount the Windows Image
* Apply MSU or CAB Windows Update Packages \(PowerShell Add-WindowsPackage\)
* Cleanup the Windows Image \(Dism /Cleanup-Image /StartComponentCleanup /ResetBase\)
* Dismount the Windows Image

---

### -Action "Apply Updates Only"

This is a lengthy process that will complete the following

* Mount the Windows Image
* Apply MSU or CAB Windows Update Packages \(PowerShell Add-WindowsPackage\)
* Dismount the Windows Image

---

### -Action "Component Cleanup Only"

This is a lengthy process that will complete the following

* Mount the Windows Image
* Cleanup the Windows Image \(Dism /Cleanup-Image /StartComponentCleanup /ResetBase\)
* Dismount the Windows Image



