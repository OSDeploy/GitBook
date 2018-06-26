* 18.06.26 Initial Release.  Replaces [Edit-OSMedia](/osmedia/reference/edit-osmedia.md)

---

# Edit-OSBuild




This function will optionally allow you to remove Appx Packages or Windows Components.  It is recommended that this step be completed AFTER running an Update-OSMedia.  Some changes that are made using Edit-OSMedia may be Pending Changes.  When the Windows Image has Pending Changes, you cannot run DISM Component Cleanup to shrink down a Windows Image.

![](/assets/2018-06-24_22-35-01.png)

---

### -Action "Dismount Save"

After all edit options are complete, the Windows Image will be dismounted and saved.

```
Dismount-WindowsImage -Path "$PathOSMount" -Save
```

---

### -Action "Dismount Discard"

After all edit options are complete, the Windows Image will be dismounted without saving.  This option is ideal for validating a Windows Image

```
Dismount-WindowsImage -Path "$PathOSMount" -Discard
```

---

### -Action "Stay Mounted"

You can execute Edit-OSMedia multiple times if you do not dismount the Windows Image.  This is ideal for making multiples passes to ensure that you have made the correct changes.  When you are done making edits, simply change the Action to a Dismount option.

---

### -ApplyNetFX3

Installs the NETFX3 Packages into the Windows Image.  This option will cause the Windows Image to have a Pending Change.  You will not be able to run DISM Cleanup-Image after enabling this option

---

### -ManageAppxPackages

Displays a grid with all installed Appx Packages so you can optionally select for removal.

Uses Get-AppxProvisionedPackage and Remove-AppxProvisionedPackage

---

### -ManageCapabilities

Displays a grid with all installed Windows Capabilities so you can optionally select for removal

Uses Get-WindowsCapability and Remove-WindowsCapability

---

### -ManageFeatures

Displays a grid of all enabled Features and disabled Features so you can optionally enable or disable them.

Uses Get-WindowsOptionalFeature, Disable-WindowsOptionalFeature, and Enable-WindowsOptionalFeature

---

### -ManagePackages

Displays a grid of installed Packages so you can optionally select for removal.  After running a DISM Cleanup-Image, you will not be able to remove Security Updates.

Uses Get-WindowsPackage and Remove-WindowsPackage

---





