# Nvidia Video Drivers

Before downloading the Nvidia Drivers, its best to get a grasp on the differences between Nvidia Drivers

---

## ODE Drivers

ODE is what Nvidia defines as


http://www.nvidia.com/Download/Help.aspx











## SCCM Report Count Video Cards by Type

I'll start by referencing my SCCM Report - Count video cards by type.  According to this Report, I have the following Nvidia Graphics Cards, sorted by popularity.  These are my top 25 out of 77 total.

```
NVIDIA NVS 5200M
NVIDIA NVS 4200M
NVIDIA Quadro M2000M
NVIDIA Quadro 4000
NVIDIA Quadro K1100M
NVIDIA Quadro K1000M
NVIDIA Quadro K4000
NVIDIA Quadro 2000
NVIDIA Quadro 1000M
NVIDIA Quadro M3000M
NVIDIA GeForce GT 720M
NVIDIA Quadro K3100M
NVIDIA Quadro K2100M
NVIDIA Quadro M4000
NVIDIA Quadro FX 580
NVIDIA Quadro K3000M
NVIDIA NVS 3100M
NVIDIA Quadro K2000
NVIDIA Quadro FX 570
NVIDIA Quadro K2000M
NVIDIA Quadro 3000M
NVIDIA GRID M60-0Q
NVIDIA NVS 510
NVIDIA Quadro FX 2800M
NVIDIA Quadro NVS 420
```

---

## Nvidia NVS 5200M

Since the Nvidia NVS 5200M is my most popular Video Card, this is what I will focus on.  I will head over to [http://www.nvidia.com/Download/index.aspx](http://www.nvidia.com/Download/index.aspx) and download this driver.  I notice that this uses the

![](/assets/2017-11-02_10-46-51.png)

On the Download page I see that this Driver will work for several of my Nvidia Video Cards in my environment.

![](/assets/1-8-2018 11-28-59 PM.png)

I'll download and repeat this process for my other Operating Systems.

---

## Nvidia GeForce GT 720M

Since GeForce Drivers are not part of the Quadro Driver Pack, I'll download these drivers as well.

---

## Unpack Drivers - Don't

The easiest method to expand the Drivers is to double click the EXE file, but there are a few issues with this.  The first issue is that NTFS Permissions will be changed for these files.  This is either because the files are extracted to the root of the OS Disk, but I am not certain.

![](/assets/1-8-2018 11-53-17 PM.png)

The second reason is because this just Unpacks the EXE, but leaves several files compressed.  You can identify the compressed files as the extension ends in an underscore.  You can't just rename the files, you have to expand them first.

![](/assets/1-8-2018 11-57-59 PM.png)

If you require further reading on this method, see this link

[https://technet.microsoft.com/en-us/library/cc938939.aspx](https://technet.microsoft.com/en-us/library/cc938939.aspx)

> Typically, files compressed with this tool are named with the last letter of the file name extension replaced with an underscore character \(\_\) to clearly identify the file as compressed.

---

## Unpack Drivers - Do

7-Zip will unzip the EXE \(but not uncompress the underscored files\).  A simple Right Click will take care of all the downloaded Drivers

![](/assets/1-9-2018 12-05-50 AM.png)

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

## PS Edit-OSDriversNvidia

The OSDrivers PowerShell Module will easily handle the Expand of the Compressed Files, as well as removing the Nvidia Junk.

![](/assets/1-9-2018 12-13-31 AM.png)


---

Modified: {{ file.mtime }}