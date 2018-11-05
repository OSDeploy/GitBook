---
description: Updated 2018.11.05
---

# PowerShell SnapPE

## **Download**

{% embed url="https://github.com/OSDeploy/PowerShell-SnapPE" %}

## OSBuilder Public

SnapPE is included in OSBuilder Public so you can easily add it using OSBuilder WinPE ExtraFiles

{% embed url="https://github.com/OSDeploy/OSBuilder.Public" %}

## Overview

**SnapPE** is a PowerShell WPF EXE used to take screenshots within WinPE.  You will need to add PowerShell from the ADK for this to work.

This can easily be added to WinPE in OSBuilder using [**WinPE Extra Files**](../osbuilder/osbuild/new-osbuildtask-winpe/winpe-extrafiles.md)\*\*\*\*

In this example I have included **SnapPE** in Windows Setup \(boot.wim Index 2\)

![](../.gitbook/assets/2018-11-02_14-43-28.png)

I will need to open the Command Prompt by holding down Shift + F10.  I can then launch SnapPE in the Command Prompt.

![](../.gitbook/assets/2018-11-02_14-43-54.png)

Pressing the Snap button will hide **SnapPE** and record the image as a PNG.  The default location  of the saves will be in X:\SnapPE

![](../.gitbook/assets/2018-11-02_14-49-29.gif)

In the case of Windows Setup, saving to the Virtual Drive X won't help much, so I can WIPE my Hard Drive with a nifty script I have embedded, and redirect my snapshots

![](../.gitbook/assets/2018-11-02_15-09-35.png)

If I added Microsoft DaRT to Windows Setup, I can move the Snaps that I have already taken to the C Drive so I will have them after Windows comes online, or just redirect to a USB Drive

![](../.gitbook/assets/2018-11-02_15-10-00.png)

Now I can take my screenshots during Windows Setup

![](../.gitbook/assets/2018-11-02_15-13-44.gif)

And when I am all done, everything should be saved in C:\SnapPE

![](../.gitbook/assets/2018-11-02_15-21-48.png)

## SnapPE Samples

The following screenshots were captured with **SnapPE**

![](../.gitbook/assets/20181102_151027.png)

![](../.gitbook/assets/20181102_151031.png)

![](../.gitbook/assets/20181102_151104.png)

![](../.gitbook/assets/20181102_151108.png)

![](../.gitbook/assets/20181102_151114.png)

![](../.gitbook/assets/20181102_151118.png)



