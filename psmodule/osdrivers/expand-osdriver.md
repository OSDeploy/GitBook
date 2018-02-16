# Expand-OSDriver

In some cases, Drivers will be compressed.  Nvidia likes to do this with their Drivers.  You can read about this on my Nvidia Video Drivers page.

[https://www.osdeploy.com/drivers/download-hardware-drivers/nvidia-video-drivers/](https://www.osdeploy.com/drivers/download-hardware-drivers/nvidia-video-drivers/)

Expand-OSDriver will expand and rename the files as well as giving the option to remove Nvidia Junk.

![](/assets/2018-02-16_2-16-02.png)

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



