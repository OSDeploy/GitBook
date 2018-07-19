# Offline Servicing - The Complete Steps

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

---

### Servicing Stack Update

If you don't know what a Servicing Stack is, please read a little about that here

[https://www.osdeploy.com/osbuilder/knowledge/servicing-stacks.html](https://www.osdeploy.com/osbuilder/knowledge/servicing-stacks.html)

Be aware if you do not install the Servicing Stack Update before the Cumulative Update, the CU may not actually install at all since it does not meet its prerequisite.  You will not receive a warning or an error when this happens, you will see the CU completed successfully \(because it is not applicable since the SSU was not in place\)

![](/assets/2018-06-26_23-55-29b.png)

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

#### Boot from Media \(ISO\)

This method uses Setup.wim \(Boot.wim Index 2\).  Like files in the Sources directory of this WIM need to be identical to what is on the OS Media Sources.

#### Operating System Upgrades

This uses the Sources directory of the OS Media

#### Microsoft Deployment Toolkit \(MDT\)

Installing an Operating System in MDT will use WinPE \(Boot.wim Index 1\) as this will take preference over the ADK WinPE.wim.  This will require an updated Sources directory in this WIM

This is confirmed by Michael Niehaus in this article

[https://blogs.technet.microsoft.com/mniehaus/2009/06/27/mdt-2010-new-feature-7-boot-image-creation-optimized/](https://blogs.technet.microsoft.com/mniehaus/2009/06/27/mdt-2010-new-feature-7-boot-image-creation-optimized/)

![](/assets/2018-07-19_9-32-56.png)

#### Recovery Image or Push Button Reset

This uses WinRE inside that is in the Windows Image

#### SCCM

SCCM has its own Boot WIMs.  I will work on a solution in then near future for this

---

### DISM Image Cleanup

This step is important to shrink the internal size if your WIMs.  If you do not, your Boot.wim may exceed the size of your Boot Partition.

---

### NetFX3

If you need to enable NetFX3 \(you probably do\), understand that you must run DISM Image Cleanup first as you will not be able to perform a Cleanup after NetFX3 is enabled due to pending operations.

![](/assets/2018-06-28_15-28-02.png)

You can run Get-WindowsCapability on a Mounted Windows Image to see what the problem is

![](/assets/2018-06-28_15-31-10.png)

If you do not reapply the CU to the Install.wim after enabling NetFX3, your computer will show that the Cumulative Update is needed, and it will be applied in Windows.  This defeats the whole point of updating the Install.wim.

The image below shows what the mounted Install.wim looks like after reapplying the CU, so yes, this is required

![](/assets/2018-07-17_12-08-03.png)

---

### Export the WIMs

Exporting the WIMs will reduce the size of the WIMs.  If you do not, your Boot.wim may exceed the size of your Boot Partition

---

### Update Sources

To update the Sources directory on your OS Media, you need to perform a Robocopy from your Mounted Setup WIM.  You should only update NEWER MATCHING files in your Sources directory.

```
robocopy "$MountDirectory\Windows\System32" "$OS\sources" *.* /e /ndl /xo /xx /xl /b /np /r:0 /w:0
```

Repeat this step with your mounted Install.wim.  This will ensure that DEVINV is the proper version and prevent issues.  For more information about this issue, see these articles

[http://www.asquaredozen.com/2018/01/16/windows-7-windows-10-fall-creators-update-1709-place-upgrade-fails-error-0xc1900204-invalid-sku/](http://www.asquaredozen.com/2018/01/16/windows-7-windows-10-fall-creators-update-1709-place-upgrade-fails-error-0xc1900204-invalid-sku/)

[http://blog.ctglobalservices.com/configuration-manager-sccm/mag/devicemap-and-device-inventory-failures-in-win7-to-win10-1709-in-place-upgrades/](http://blog.ctglobalservices.com/configuration-manager-sccm/mag/devicemap-and-device-inventory-failures-in-win7-to-win10-1709-in-place-upgrades/)

This is what the Sources looks like after performing the Robocopy

![](/assets/2018-07-19_1-50-50.jpg)

If you do not perform this step, Operating System Upgrades will probably fail.  Additionally, if you update the Install.wim and not the Sources directory on the OS Media, you will not be able to create an ISO to image from \(or a bootable USB\).  This causes a mismatch as detailed in this link from Microsoft

[https://support.microsoft.com/en-us/help/4041170/windows-installation-cannot-find-driver-boot-wim](https://support.microsoft.com/en-us/help/4041170/windows-installation-cannot-find-driver-boot-wim)

![](/assets/2018-07-16_11-14-04.png)

---

### Monthly Updating

If you plan on updating your WIMs every month, do not enable NetFX3 as you will not be able to DISM Image Cleanup.  This is why I recommend keeping a separate build updated monthly that does not have NetFX3 enabled.  Use this as your REFERENCE that you build a secondary Install.wim with NetFX3 enabled.

---

### What To Update

* Install.wim - Servicing Stack and then the Cumulative Update.  Enable NetFX3 and reapply CU
* WinPE WIM - Servicing Stack and then the Cumulative Update
* Setup WIM - Servicing Stack and then the Cumulative Update.  Sources will be updated when applying the CU
* WinRE WIM - Servicing Stack and then the Cumulative Update
* Sources - on the OS Media

---

### The Complete Steps

##### **Monthly Updated Image**

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
10. Dismount and Save the Install.wim
11. Export Install.wim to a new Install.wim
12. Replace the Install.wim in the OS Media Sources
13. Mount Setup WIM
    1. Apply Servicing Stack
    2. Apply Cumulative Update
    3. Dism Image Cleanup
    4. Robocopy MATCHING NEWER files to OS Media Sources using /b \(to bypass Trusted Installer issues\)
    5. Dismount and Save
14. Mount WinPE
    1. Apply Servicing Stack
    2. Apply Cumulative Update
    3. Dism Image Cleanup
    4. Dismount and Save
15. Export WinPE to a new Boot.wim
16. Export Setup WIM to the same Boot.wim with Bootable switch
17. Replace the Boot.wim in the OS Media Sources with the updated one
18. Rebuild ISO using OSCDIMG \(ADK\)

##### Production Image

1. Copy the Monthly Updated Image to a working directory
2. Mount the Install.wim
3. Enable NetFX3 \(if needed\)
4. Reapply the Cumulative Update
5. Perform any additional customizations
6. Dismount and Save the Install.wim

---



