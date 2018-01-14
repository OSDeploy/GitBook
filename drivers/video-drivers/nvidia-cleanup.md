# Nvidia Cleanup

Nvidia is far from the best when it comes to making things easy for IT Administrators to create Packages.

---

## Empty NTFS Permissions

One big problem with Nvidia is that their Driver Extraction clears the Permissions of the Extracted Files.  As you can see in the screenshot below, there is nothing set for NTFS Permissions.

![](/assets/2017-11-02_13-14-46.png)

---

## Take Ownership

This is an easy enough change to make.  Open an Admin Command Prompt and Take Ownership of the Parent Directory

```
takeown /F "D:\OSDeploy\OSDriversDEV\Download\Hardware\Graphics - Nvidia" /R /A
```

---

## Inheritable Permissions

Once you have Ownership of the files, Replace the Permissions on the Child Objects to be Inheritable.

![](/assets/2017-11-02_13-16-10.png)

---

## Expanding Drivers







---

## Driver Cleanup

With the 4 Drivers expanded, they are quite large, but there are several directories that are not needed, especially in the GeForce Drivers.

![](/assets/2017-11-02_13-43-26.png)

With a simple PowerShell script pasted into PowerShell ISE \(modify your $DriverPath\), these can be removed.

```
$DriverPath = "D:\OSDeploy\OSDriversDEV\Download\Hardware\Graphics - Nvidia"

$RemoveDirs =   "Display.NView",
                "Display.Optimus",
                "Display.Update",
                "GFExperience",
                "GFExperience.NvStreamSrv",
                "MSVCRT",
                "nodejs",
                "NV3DVision",
                "NvBackend",
                "NvCamera",
                "NvContainer",
                "NVI2",
                "NvTelemetry",
                "NVWMI",
                "PhysX",
                "ShadowPlay",
                "Update.Core"

ForEach ($DriverDir in $RemoveDirs) {Remove-Item -Path $DriverPath -Include $DriverDir -Recurse}
```

Cutting almost 1GB for these drivers.

![](/assets/2017-11-02_13-44-19.png)



