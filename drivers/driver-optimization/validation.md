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

## Non-Validation Recommendations

I assume Dell is going to look into these things, and since I have their ear, how about some recommendations

* Separate the x86 and x64 Driver Packs.





