# Expand-OSDriver

In some cases, Drivers will be compressed.  Nvidia likes to do this with their Drivers.  You can identify the compressed files as the extension ends in an underscore.  You can't just rename the files, you have to expand them first.

![](/assets/1-8-2018 11-57-59 PM.png)

If you require further reading on this method, see this link

[https://technet.microsoft.com/en-us/library/cc938939.aspx](https://technet.microsoft.com/en-us/library/cc938939.aspx)

> Typically, files compressed with this tool are named with the last letter of the file name extension replaced with an underscore character \(\_\) to clearly identify the file as compressed.

---

## Nvidia Junk

Nvidia adds several Junk files to the Drivers that are not needed and not used when installing during OSD.

![](/assets/1-9-2018 12-08-30 AM.png)

The following Directories can be safely removed in my experience.

```
"Display.NView",
"Display.Optimus",
"Display.Update",
"DisplayDriverCrashAnalyzer",
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
```

---









