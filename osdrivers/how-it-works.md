# How It Works

OSDrivers is a method of applying Drivers to a Computer during OS Deployment \(MDT or ConfigMgr\), or Stand Alone. A TXT answer file provides all the information necessary to determine if a Driver should be applied to a system. The main benefit of using this method is that it does not require a Web Service or any other external dependencies. A secondary benefit is that compressed CAB files can be used to reduce the size of the Driver Repository.

## OSDrivers.vbs

The first component of OSDrivers is the VBS Script. It executes in both WinPE or a running OS and processes files in any child directories. In the screenshot below, it will process files in the OSD directory, which contains Video CAB files.

![](../.gitbook/assets/2018-02-08_16-10-38.png)

## CAB Files

CAB files are compressed Drivers. In the screenshot below, there are three Nvidia CAB files, which different Driver versions. The name of the CAB file is not important to OSDrivers, but it allows us to easily know what this Driver will apply to. Additionally, there are TXT files in the same directory that have the same name as the CAB.

![](../.gitbook/assets/2018-02-08_16-14-36.png)

## TXT Files

TXT files are what OSDrivers.vbs processes. There are some simple conditions

* TXT file must be encoded in ANSI \(CR LF\)
* The first line must be \[OSDrivers\] for the OSDrivers.vbs to process it
* OS must be specified in the following format.  If the Operating System does not match, or Operating System = All, then the driver is skipped.
  * Windows 10 x64 = Yes
  * Windows 7 x64 = Yes
  * Operating System = All

Everything else is optional and are detailed in a later article.

```text
[OSDrivers]
Windows 10 x64 = Yes
MasterPNPID = VEN_10DE
URL = http://www.nvidia.com/download/driverResults.aspx/129085/en-us

[WQL]
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_10DE%'

[PNPIDS]
PCI\VEN_10DE&DEV_06C0 = NVIDIA GeForce GTX 480
PCI\VEN_10DE&DEV_06C0&SUBSYS_075F10DE = NVIDIA GeForce GTX 480
PCI\VEN_10DE&DEV_06C4 = NVIDIA GeForce GTX 465
PCI\VEN_10DE&DEV_06C4&SUBSYS_C0001458 = NVIDIA GeForce GTX 465
PCI\VEN_10DE&DEV_06CA&SUBSYS_005314C0 = NVIDIA GeForce GTX 480M
PCI\VEN_10DE&DEV_06CA&SUBSYS_048F1028 = NVIDIA GeForce GTX 480M
PCI\VEN_10DE&DEV_06CA&SUBSYS_04901028 = NVIDIA GeForce GTX 480M
PCI\VEN_10DE&DEV_06CA&SUBSYS_09031558 = NVIDIA GeForce GTX 480M
PCI\VEN_10DE&DEV_06CA&SUBSYS_72001558 = NVIDIA GeForce GTX 480M
PCI\VEN_10DE&DEV_06CA&SUBSYS_81001558 = NVIDIA GeForce GTX 480M
PCI\VEN_10DE&DEV_06CA&SUBSYS_86871558 = NVIDIA GeForce GTX 480M
PCI\VEN_10DE&DEV_06CA&SUBSYS_86891558 = NVIDIA GeForce GTX 480M
PCI\VEN_10DE&DEV_06CD = NVIDIA GeForce GTX 470
PCI\VEN_10DE&DEV_06CD&SUBSYS_079F10DE = NVIDIA GeForce GTX 470
PCI\VEN_10DE&DEV_06CD&SUBSYS_C0001458 = NVIDIA GeForce GTX 470
PCI\VEN_10DE&DEV_0DC0 = NVIDIA GeForce GT 440
PCI\VEN_10DE&DEV_0DC0&SUBSYS_082D10DE = NVIDIA GeForce GT 440
```

## OSDrivers In Action

* OSDrivers.vbs finds a Text file \(line4\)
  * Looks for \[OSDrivers\] entry
* Finds a CAB that matches the same file name
* Validates that we are Windows 10 x64
* Checks for PNPID in Win32\_PnPEntity
* Match is found, Drivers are extracted

![](../.gitbook/assets/2018-02-09_9-12-40.png)

