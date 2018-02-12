# Create Packages

Create Packages from your Package Content.  Create a Program for the Package.  You must specify the Operating System and Architecture in the command line for the Program.  This ensures that you don't have any issues with x64 File System Redirection.

```
cscript OSDrivers.vbs /OS:"Windows 10" /Archx64
```

When complete, your Package should show a Program with the Command Line.

![](/assets/OSD Package Properties.png)

---

## Windows 7 to Windows 10 Upgrades

Specifying the Operating System in the OSDrivers Command Line of the Package allows us to send this package to Windows 7 systems.  Why would we want to do this?  Because this allows the Drivers to function in an OS Upgrade from Windows 7 to Windows 10 and place the Windows 10 compatible Drivers on your system.

---

## Create Remaining Packages

Create the remaining OSDrivers Packages and you are in business.

![](/assets/OSD Packages.png)

