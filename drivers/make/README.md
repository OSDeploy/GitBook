# Make Drivers \(Manufacturer\)

This section is not going to get into how to make drivers . . . Make is just another term for Computer Manufacturer.

You can easily find the Computer Manufacturer in PowerShell through WMI.  In my case, I am using a Dell.

```
PS C:\> (Get-WmiObject -Class:Win32_ComputerSystem).Manufacturer
Dell Inc.
```

An easier way to do this is to look at the branding on your Computer itself, but odds are you already know what Computer Make you need Drivers for.

---

## SCConfigMgr Driver Automation Tool

This is the easiest way to download Drivers for your specified Computer Make \(Dell, HP, Lenovo, Microsoft\)

[http://www.scconfigmgr.com/modern-driver-management/](http://www.scconfigmgr.com/modern-driver-management/)

[https://gallery.technet.microsoft.com/Driver-Tool-Automate-9ddcc010](https://gallery.technet.microsoft.com/Driver-Tool-Automate-9ddcc010)

---



