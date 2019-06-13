# DEV OSDCoreDrivers

{% hint style="danger" %}
**This PowerShell Module is currently under development and is planned on being released the week of MMSMOA**
{% endhint %}

## Purpose

The purpose of **OSDCoreDrivers** is to separate common shared Drivers from traditional OSD Driver Packages and to provide an always up-to-date method for obtaining the Drivers

## Download Drivers

In this example, I can select Intel Display Drivers.  The links are pulled from intel.com, so they will always contain the latest Drivers

Currently **OSDCoreDrivers** is targeted at Intel Display.  Intel Wireless and Intel Ethernet will be added before release

![](.gitbook/assets/image%20%2857%29.png)

## The Process

What happens next is this ...

* **Driver Zip is downloaded**
* **Driver Zip is expanded**
* **Supported PNPIDs are exported from the INFs and indexed in an XML**
* **Driver directory is converted to a CAB**

![](.gitbook/assets/image%20%28291%29.png)

## Why use Cabs?

* **Cab is about 25% the size of the expanded Drivers**
* **Cab has a higher compression than Zip**
* **Cab can be extracted from WinPE without any dependencies**

In table below compares the latest Intel DCH Drivers in the three different formats

| **Format** | **Size** |
| :--- | :--- |
| **Cab** | **259MB** |
| **Zip** | **312MB** |
| **Expanded** | **978MB** |

![](.gitbook/assets/image%20%28318%29.png)

## Deployment Process

I'm still working on this aspect, but the design will follow these steps

* **Generate Hardware List of installed devices**
* **Import OSDCoreDrivers\*.xml to determine Driver CABs / XMLs to process**
* **Process Driver XMLs to determine matching Hardware**
* **If a match is found, expand the Driver CAB into C:\Drivers**
* **Unattend.xml or Windows Setup will install the Drivers**

## Solutions

* **Driver Packages from Vendors do not always contain the latest Drivers \(common sense\)**
* **OSDCoreDrivers reduces the size of Driver Packages**

## Reducing the Size of Driver Packages

I'll keep this simple so you can keep up.  Let's say you use the **Driver Automation Tool**.  In this example, I download the 10 most common Driver Packages for my environment.  In total, I have ~20GB \(~2GB each\)

![](.gitbook/assets/image%20%28156%29.png)

Using **OSDCoreDrivers** for Intel Display results in about 500MB of compressed drivers.  **Believe it or not, these are the only three Drivers that are needed to support Windows 10 x64**

![](.gitbook/assets/image%20%28126%29.png)

When looking at what was in the Dell Driver Packages, I can remove the Intel Display Drivers and recover 8.27GB of space.  In this case, 42% of my Drivers were Intel Display related.  In the image below its easy to see that there were several duplicated Drivers between different Models, and some x86 Drivers that are completely unnecessary

![](.gitbook/assets/image%20%28190%29.png)

## Goal

After adding some more Core Drivers, you should easily be able to reduce your current Driver Repository by 50%

I plan on releasing **OSDCoreDrivers** during the week of **MMSMOA** as my schedule is wide open that week, so stay tuned!

