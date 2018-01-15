# Nvidia Driver Download

I have over 15,000 Nvidia Video Cards in my Enterprise, so I need to capture the Drivers for these as well.

---

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

## Nvidia NVS

Since the Nvidia NVS 5200M is my most popular Video Card, this is what I will focus on.  I will head over to [http://www.nvidia.com/Download/index.aspx](http://www.nvidia.com/Download/index.aspx) and get the Driver that I need.

![](/assets/2017-11-02_10-46-51.png)

On the Download page I see that this Driver will work for several of my Nvidia Video Cards

![](/assets/2017-11-02_10-47-55.png)

29 of the 77 to be exact

```
NVIDIA NVS 310
NVIDIA NVS 4200M
NVIDIA NVS 510
NVIDIA NVS 5200M
NVIDIA Quadro 1000M
NVIDIA Quadro 2000M
NVIDIA Quadro 3000M
NVIDIA Quadro K1000M
NVIDIA Quadro K1100M
NVIDIA Quadro K2000
NVIDIA Quadro K2000M
NVIDIA Quadro K2100M
NVIDIA Quadro K3000M
NVIDIA Quadro K3100M
NVIDIA Quadro K4000
NVIDIA Quadro K4000M
NVIDIA Quadro K4100M
NVIDIA Quadro K4200
NVIDIA Quadro K5000
NVIDIA Quadro K600
NVIDIA Quadro K6000
NVIDIA Quadro K620
NVIDIA Quadro M1000M
NVIDIA Quadro M2000
NVIDIA Quadro M2000M
NVIDIA Quadro M2200* This was not specified on Nvidia.com but in the ListDevices.txt
NVIDIA Quadro M3000M
NVIDIA Quadro M4000
NVIDIA Quadro M5000
```

I'll download this file for later to D:\OSDeploy\OSDriversDEV\Download\Hardware\Graphics - Nvidia

---

## Quadro FX

I find that in the remaining 48 Nvidia Video Cards in my environment, several are Quadro FX.  Of these, the Quadro FX 580 seems to be the most popular.  Going back to [http://www.nvidia.com/Download/index.aspx](http://www.nvidia.com/Download/index.aspx) allows me to locate the best Driver

![](/assets/2017-11-02_12-49-55.png)

![](/assets/2017-11-02_12-19-01.png)

This allows me to scratch off another 27 from my list

```
NVIDIA NVS 300
NVIDIA NVS 3100M
NVIDIA Quadro 2000
NVIDIA Quadro 400
NVIDIA Quadro 4000
NVIDIA Quadro 5000
NVIDIA Quadro 600
NVIDIA Quadro 6000
NVIDIA Quadro FX 1600M
NVIDIA Quadro FX 1700
NVIDIA Quadro FX 1700M
NVIDIA Quadro FX 1800
NVIDIA Quadro FX 1800M
NVIDIA Quadro FX 2800M
NVIDIA Quadro FX 370 LP
NVIDIA Quadro FX 3700
NVIDIA Quadro FX 3800
NVIDIA Quadro FX 4600
NVIDIA Quadro FX 570
NVIDIA Quadro FX 580
NVIDIA Quadro FX 770M
NVIDIA Quadro FX 880M
NVIDIA Quadro K2200
NVIDIA Quadro NVS 160M
NVIDIA Quadro NVS 290
NVIDIA Quadro NVS 295
NVIDIA Quadro NVS 420
```

Again, I'll download this file for later to D:\OSDeploy\OSDriversDEV\Download\Hardware\Graphics - Nvidia

---

## GeForce

For some reason, we seem to have some Nvidia GeForce Video Controllers in our environment, with the NVIDIA GeForce GT 720M being the most popular.  So time to find the right Driver and download that.

![](/assets/2017-11-02_12-48-44.png)

![](/assets/2017-11-02_12-43-57.png)

A whopping 3 Video Cards in my Environment are covered by this Driver, but over 200 installs.

```
NVIDIA GeForce 840M
NVIDIA GeForce GT 720M
NVIDIA GeForce GT 740M
```

Download to to D:\OSDeploy\OSDriversDEV\Download\Hardware\Graphics - Nvidia

---

## Tesla

I have a few of these in use so I guess I need to download this as well.

![](/assets/2017-11-02_12-53-41.png)

![](/assets/2017-11-02_12-53-30.png)

Covering another 3 Video Cards

```
NVIDIA Tesla C2070
NVIDIA Tesla C2075
NVIDIA Tesla K20c
```

Download to to D:\OSDeploy\OSDriversDEV\Download\Hardware\Graphics - Nvidia

---

## Remaining Hardware

The remaining 15 Nvidia Devices that I have are either not compatible with Windows 10 \(Legacy\) or they are non-Standard computers.  I am at the point of diminishing returns of adding a Driver for 1 PC.  You can stop when you get to this point.

---

## Extracting Drivers

The first step is to run each EXE so we can expand the Drivers.  When prompted for a folder to save, make sure it is in the Extract Path.  Also renaming the Directories will be helpful later

* D:\OSDeploy\OSDriversDEV\Extract\Hardware\Graphics - Nvidia\Graphics - Nvidia GeForce 388.13 Win10 x64
* D:\OSDeploy\OSDriversDEV\Extract\Hardware\Graphics - Nvidia\Graphics - Nvidia NVS 385.69 Win10 x64
* D:\OSDeploy\OSDriversDEV\Extract\Hardware\Graphics - Nvidia\Graphics - Nvidia Quadro 342.00 Win10 x64
* D:\OSDeploy\OSDriversDEV\Extract\Hardware\Graphics - Nvidia\Graphics - Nvidia Tesla 385.54 Win10 x64

![](/assets/2017-11-02_13-11-50.png)

I'll make sure to Cancel when it gets to the point of installing.

![](/assets/2017-11-02_13-07-01.png)

---

## Not Complete

The Nvidia Drivers are not complete yet for creating SCCM Packages or Importing into MDT, there is some Cleanup required to get things working 100%.


---

Modified: {{ file.mtime }}