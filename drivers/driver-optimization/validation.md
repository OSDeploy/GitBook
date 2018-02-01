# Validation

The main issue with importing Driver Packs downloaded from Vendors without validating them will just lead to errors in your Deployment.  Failure to correct these errors impacts others that use the same Driver Packs.

In my Enterprise, roughly 95% of the Computers are Dell systems, so I apologize in advance for picking on them in this article.

---

## Dell Underscores Nvidia's Drivers

In just about every Driver Pack are Nvidia Video Drivers.  Nvidia likes to compress their Drivers and this is easy to see when looking at the Drivers themselves.  In the image below, we can see several files with a **DL\_** extension.

![](/assets/2-1-2018 12-12-35 AM.png)

According to Microsoft, these are Compressed

[https://technet.microsoft.com/en-us/library/cc938939.aspx](https://technet.microsoft.com/en-us/library/cc938939.aspx)

> Typically, files compressed with this tool are named with the last letter of the file name extension replaced with an underscore character \(\_\) to clearly identify the file as compressed.

While the effort to save space seems nice, these Drivers will not install.  Reading the NVDM.INF which references all the dependent files, the full extension is shown.  So while you may be able to import them, and OSD will copy the files to the Computer, they simply will not install.

![](/assets/2-1-2018 12-16-51 AM.png)

Ok, so is this a big problem?  A quick check in the Dell Family CAB's for Windows 10 show 29 instances

```
D:\Drivers\Test\Alpha\Win10\Win10_LatitudeE5_A02\LatitudeE5\win10\x64\video\N4MHX\Windows10-x64\nvapi.dl_
D:\Drivers\Test\Alpha\Win10\Win10_LatitudeE6_A10\LatitudeE6\win10\x64\video\N4MHX\Windows10-x64\nvapi.dl_
D:\Drivers\Test\Alpha\Win10\Win10_LatitudeE6XFR_A04\LatitudeE6XFR\Win10\x64\video\08PKM\Windows10-x64\nvapi.dl_
D:\Drivers\Test\Alpha\Win10\Win10_LatitudeE7_A12\LatitudeE7\WIN10\x64\Video\XCDV4\nvapi.dl_
D:\Drivers\Test\Alpha\Win10\Win10_LatitudeE8_A18\LatitudeE8\WIN10\x64\Video\XCDV4\nvapi.dl_
D:\Drivers\Test\Alpha\Win10\Win10_LatitudeE9_A11\LatitudeE9\WIN10\x64\Video\7MG3T\Windows10-x64\nvapi.dl_
D:\Drivers\Test\Alpha\Win10\Win10_LatitudeE9_A11\LatitudeE9\WIN10\x64\Video\H58F8\Windows10-x64\nvapi.dl_
D:\Drivers\Test\Alpha\Win10\Win10_LatitudeE9_A11\LatitudeE9\WIN10\x64\Video\K1TC4\Windows10-x64\nvapi.dl_
D:\Drivers\Test\Alpha\Win10\Win10_LatitudeE9_A11\LatitudeE9\WIN10\x64\Video\K7C9J\Display.Driver\Win10_x64\nvapi.dl_
D:\Drivers\Test\Alpha\Win10\Win10_LatitudeE9_A11\LatitudeE9\WIN10\x64\Video\K7C9J\Display.Driver\WinVista_7_8_8.1_x64\nvapi.dl_
D:\Drivers\Test\Alpha\Win10\Win10_LatitudeE10_A01\LatitudeE10\WIN10\x64\Video\02KPV\Windows10-x64\nvapi.dl_
D:\Drivers\Test\Alpha\Win10\Win10_OptiPlexD4_A02\OptiplexD4\Win10\x64\video\258DX\Display.Driver\nvapi.dl_
D:\Drivers\Test\Alpha\Win10\Win10_OptiPlexD5_A08\OptiplexD5\win10\x64\video\258DX\Windows10-x64\nvapi.dl_
D:\Drivers\Test\Alpha\Win10\Win10_OptiPlexD7_A16\OptiplexD7\WIN10\x64\Video\7MDNT\nvapi.dl_
D:\Drivers\Test\Alpha\Win10\Win10_PrecisionM3800_A00\PrecisionM3800\win10\x64\video\9PY90\Windows10-x64\nvapi.dl_
D:\Drivers\Test\Alpha\Win10\Win10_PrecisionM5_A02\PrecisionM5\Win10\x64\video\1F9M7\Display.Driver\nvapi.dl_
D:\Drivers\Test\Alpha\Win10\Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Video\242X0\Display.Driver\Win10_x64\nvapi.dl_
D:\Drivers\Test\Alpha\Win10\Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Video\242X0\Display.Driver\WinVista_7_8_8.1_x64\nvapi.dl_
D:\Drivers\Test\Alpha\Win10\Win10_PrecisionM7_A06\PrecisionM7\WIN10\x64\Video\04W6J\Windows10-x64\nvapi.dl_
D:\Drivers\Test\Alpha\Win10\Win10_PrecisionM7_A06\PrecisionM7\WIN10\x64\Video\27GW3\Windows10-x64\nvapi.dl_
D:\Drivers\Test\Alpha\Win10\Win10_PrecisionM7_A06\PrecisionM7\WIN10\x64\Video\CYKKX\Display.Driver\nvapi.dl_
D:\Drivers\Test\Alpha\Win10\Win10_PrecisionWS5_A03\PrecisionWS5\win10\x64\video\CY9PN\Windows10-x64\nvapi.dl_
D:\Drivers\Test\Alpha\Win10\Win10_PrecisionWS6_A13\PrecisionWS6\WIN10\x64\Video\95C25\nvapi.dl_
D:\Drivers\Test\Alpha\Win10\Win10_PrecisionWS6_A13\PrecisionWS6\WIN10\x64\Video\N1DWN\Display.Driver\nvapi.dl_
D:\Drivers\Test\Alpha\Win10\Win10_PrecisionWS6_A13\PrecisionWS6\WIN10\x64\Video\NV3PY\Display.Driver\nvapi.dl_
D:\Drivers\Test\Alpha\Win10\Win10_PrecisionWS7_A16\PrecisionWS7\WIN10\x64\Video\N1DWN\Display.Driver\nvapi.dl_
D:\Drivers\Test\Alpha\Win10\Win10_PrecisionWS7_A16\PrecisionWS7\WIN10\x64\Video\NV3PY\Display.Driver\nvapi.dl_
D:\Drivers\Test\Alpha\Win10\Win10_PrecisionWS8_A08\PrecisionWS8\WIN10\x64\Video\46C1H\nvapi.dl_
D:\Drivers\Test\Alpha\Win10\Win10_PrecisionWS8_A08\PrecisionWS8\WIN10\x64\Video\4KXK6\Display.Driver\nvapi.dl_
```

I'm sure this faulty Driver is the cause of this problem.

[https://www.reddit.com/r/SCCM/comments/7u1dir/laptops\_not\_installing\_additional\_gpu\_drivers/](https://www.reddit.com/r/SCCM/comments/7u1dir/laptops_not_installing_additional_gpu_drivers/)

And this issue has apparently been going on since 2011.

![](/assets/2-1-2018 12-26-58 AM.png)

Since we know there are issues with Dell's Nvidia implementation, we have to remove them from our Driver Packs.

---

## Fat Touchpad Drivers

Dell has a Touchpad Driver \(WWVKD\) that is used in the Latitude E6 A10 and the Latitude E7 A12 Family Driver CABs, but why is the one in the E6 10 times larger than the one in the E7?

![](/assets/2-1-2018 12-38-23 AM.png)

The solution is easy, remove everything except Windows10-x64

![](/assets/2-1-2018 12-41-51 AM.png)

---

## Driver Packs include x86 and x64 Drivers

Is there really a logical reason these are combined?  Here is my 1.7GB OptiPlex D4 Driver Pack with almost 1 GB in x86 Drivers.  These should be separated as most everyone will either not use the x86 Drivers, or create Separate Driver Packages if they do need them.

![](/assets/2-1-2018 12-53-08 AM.png)

---

## x86 Drivers in x64 Drivers

Easy enough to fix, but this would only be caught with proper Validation.  This is not the same issue as above, these are clearly in the x64 part of the Driver Pack.

![](/assets/2-1-2018 12-46-53 AM.png)

---

## Incomplete Readme.txt

Located in the Driver Pack is a Readme.txt which contains some information.  This one in particular is from the Dell Precision WS8 A08 Family Pack.

```
Dell TechCenter Community

Family Driver ZIP for Dell

OS:       Win10 
Date:     2017-08-31 11:16
Revision: A08

Note: This driver CAB is provided As-is with no warranty of functionality or support. Use at your own risk.  The Dell TechCenter community maintains this ZIP file.  Comments or concerns can be posted there.

The Dell drivers that are applied to a given system with this driver pack may be different Dell drivers than the supported Dell drivers available on support.dell.com

This driver pack does not attempt to have the most current drivers for each model listed.  It contains drivers that work best for the series of models listed below.

The goal of this driver pack is to have a single cab for a series of systems, for the purpose of:

1. Simplify driver management.
2. Minimize storage required for drivers.
3. Support Stand-alone media limitations.

A current list of tested models is maintained on DellTechCenter.com at 

http://en.community.dell.com/techcenter/enterprise-client/w/wiki/11438.dell-family-driver-cab-s

WMI Queries for targeting of this driver pack are as follows:

1. Use a If Statement so that the correct queries below will apply.

select * from Win32_ComputerSystem where Model like 'Venue %'
select * from Win32_ComputerSystem where Model like 'Latitude %'
select * from Win32_ComputerSystem where Model like 'XPS %'
select * from Win32_ComputerSystem where Model like 'Precision %'
select * from Win32_ComputerSystem where Model like 'Optiplex %'

For additional information on how to use the Dell Family Driver package, go to http://www.dell.com/imageassist  for the latest documentation.

Supported Systems: 
                32BIT - No Systems Supported
                64BIT - 5720AIO,PRECISION7920RACK,PRECISION7920XLRACK,PRECISION5820TOWER,PRECISION5820XLTOWER,PRECISION7820TOWER,PRECISION7820XLTOWER,PRECISION7920TOWER,PRECISION7920XLTOWER


Individual CABS Integrated into build:
```

The WMI Queries in here are generic and incomplete.  In comparison the Lenovo Recipe Cards are very accurate and helpful.

![](/assets/2-1-2018 1-03-00 AM.png)

[https://support.lenovo.com/us/en/solutions/ht104042](https://support.lenovo.com/us/en/solutions/ht104042)

If we are instructed to use WMI Queries in this document, why are the proper ones not included?  Looking at the x64 supported models is easy enough to tell where they should apply, but hard for me to get the proper WMI Query correct, without having these systems present in the first place.

```
5720AIO,PRECISION7920RACK,PRECISION7920XLRACK,PRECISION5820TOWER,PRECISION5820XLTOWER,PRECISION7820TOWER,PRECISION7820XLTOWER,PRECISION7920TOWER,PRECISION7920XLTOWER
```

---

## Conclusion

With proper Driver Optimization, these issues can be resolved \(except for the incomplete Readme.txt\).  The Nvidia issue alone requires immediate correction if you are using Dell Driver Packs.

