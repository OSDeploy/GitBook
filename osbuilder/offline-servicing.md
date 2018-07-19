# Offline Servicing - The Complete Process

I wanted to take the time to explain all the steps involved with Offline Servicing a Windows Image.  This will primarily focus on Windows 10, but the same methods should also be applied to Windows Server 2016.

---

### A Simple Definition

Offline Servicing is a method that has been used for years to Mount a Windows Image, Apply Patches, and Save the Image.  The reason we do this is to save time in our OS Deployments, so we do not have to spend hours applying patches.  When Microsoft releases a new ISO, it is fully patched up to the point that they sealed it.  In the image below are the Windows 10 Builds with the updated date.  Windows 10 1803 is the only version that has been updated this year.

![](/assets/2018-07-19_0-02-31.jpg)

---

### Required Updates

Before getting started, you need to gather the following updates for Windows 10

* Latest Servicing Stack
* Latest Cumulative Update \(Monthly\)
* Latest Adobe Flash Security Update \(Monthly\)

If you don't know what a Servicing Stack is, please read a little about that here \(but to be clear, you need this or your Cumulative Update is probably not installing properly.

[https://www.osdeploy.com/osmedia/knowledge/servicing-stacks.html](https://www.osdeploy.com/osmedia/knowledge/servicing-stacks.html)

---

### Boot WIMs

You absolutely need to understand the Boot WIMs that are used for installing Windows, so here they are.

Boot.wim is located in the Sources directory of your Windows 10 Media.  This WIM contains two indexes.  Index 1 is WinPE, and Index 2 is the bootable Index, and this is Windows Setup.

```
ImageIndex       : 1
ImageName        : Microsoft Windows PE (x64)
ImageDescription : Microsoft Windows PE (x64)
ImageSize        : 1,560,430,353 bytes

ImageIndex       : 2
ImageName        : Microsoft Windows Setup (x64)
ImageDescription : Microsoft Windows Setup (x64)
ImageSize        : 1,719,223,056 bytes

```

The third Boot WIM on Windows Media is located inside the Install.wim at Windows\System32\Recovery\winre.wim.  This is the Recovery Environment

```
ImageIndex       : 1
ImageName        : Microsoft Windows Recovery Environment (x64)
ImageDescription : Microsoft Windows Recovery Environment (x64)
ImageSize        : 1,945,278,901 bytes
```

---

### Setup WIM

When you boot your Windows 10 Media on a computer, it will boot to Sources\Boot.wim Index 2 to start Windows Setup.  If you are updating your 









