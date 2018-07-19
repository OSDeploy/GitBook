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

When you boot your Windows 10 Media on a computer, it will boot to Sources\Boot.wim Index 2 to start Windows Setup.  The image below shows the OS Media and the mounted Setup WIM.  As you can see there is a Setup.exe, and they both match.  These files are not the complete setup, they just take your parameters and pass them to the setup.exe in the Sources directory.

![](/assets/2018-07-19_0-31-12.jpg)

---

### Sources

In the Sources directory setup.exe also exists, and they match as well.  On the left is the OS Media Sources, and on the right is the mounted Setup WIM.  I wanted to highlight the DISM components as these are required for servicing an image.

![](/assets/2018-07-19_0-34-30.jpg)

---

### Imaging Methods

Booting to Media \(ISO\) to image a computer requires Setup.wim \(Boot.wim Index 2\).  This requires an updated Sources directory in this WIM.

Upgrading a computer requires the Sources directory on the OS Media

Installing an Operating System in MDT will use WinPE \(Boot.wim Index 1\) as this will take preference over the ADK WinPE.wim.  This will require an updated Sources directory in this WIM

WinRE can be used for Windows installation when restoring a Recovery Image or Push Button Reset

---

### What To Update

* Install.wim - Servicing Stack and then the Cumulative Update
* WinPE WIM - Servicing Stack and then the Cumulative Update
* Setup WIM - Servicing Stack and then the Cumulative Update.  Sources will be updated when applying the CU
* WinRE WIM - Servicing Stack and then the Cumulative Update
* Sources - on the OS Media

---

### Complete Steps

1. Copy the contents of your ISO to a working directory
2. Mount the Install.wim
   1. Copy WinRE.wim out of the Mount directory
3. Mount WinRE.wim
   1. Apply Servicing Stack
   2. Apply Cumulative Update
   3. Dism Image Cleanup
   4. Dismount and Save
4. Export WinRE.wim to another WIM to reduce the size
5. Copy WinRE.wim back into the Mounted Install.wim
6. Apply Servicing Stack to the Mounted Install.wim
7. Apply Cumulative Update to the Mounted Install.wim
8. Dism Image Cleanup
9. Robocopy MATCHING NEWER files to OS Media Sources using /b \(to bypass Trusted Installer issues\)
10. Enable NetFX3 \(if needed\) and reapply Cumulative Update
11. Dismount and Save
12. Mount Setup WIM
   1. Apply Servicing Stack
   2. Apply Cumulative Update
   3. Dism Image Cleanup





**Robocopy Command Example**

```
robocopy "$MountDirectory\Windows\System32" "$OS\sources" *.* /e /ndl /xo /xx /xl /b /np /r:0 /w:0
```









