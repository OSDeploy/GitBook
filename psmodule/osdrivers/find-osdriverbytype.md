# Find-OSDriverTypes

This module allows you to select a Driver Type and search in your Driver Repository for instances.  Optionally you can remove the Directory containing the Driver.

![](/assets/2018-02-14_2-18-01.png)

The following values are used in the search

* AMD Video = "amdave32.dl\*", "amdkmpfd.inf"
* Intel Bluetooth = "ibt\*.inf"
* Intel Ethernet = "e1\*.inf"
* Intel Thunderbolt = "tbt\*.inf"
* Intel Video = "igfx\*.cpl"
* Intel Wireless = "netw\*.inf"
* Nvidia Video = "nvapi.dl\*"
* Realtek Audio = "hdxadc.inf", "hd\*.inf"

---

## Execution

Once executed, you will be presented a list of results.  Simply select the files you want to include in the size estimate.  If you checked the box for RemoveDirectories, the selected Directories will be deleted.

![](/assets/2018-02-14_2-22-51.png)

After selecting the files and pressing OK, you will have a listing of the Directories selected, with their size, as well as an Estimated Size that can be Recovered by removing the directories.

![](/assets/2018-02-14_2-24-38.png)

**If you are using Dell Family Drivers \(Windows 10 x64\), then your 73.37 GB Driver Repository should contain 27.99 GB of Intel Video Drivers \(38%\).  If you are using Dell Model Drivers \(Windows 10 x64\), then 65.58 GB of your 157.13 GB are Intel Video Drivers \(41.7%\)**

---

## Comment Based Help

```
<#
.SYNOPSIS
    Finds specified file types, estimates size, option to remove Parent directory
.DESCRIPTION
    Finds specified file types, estimates size, option to remove Parent directory
.PARAMETER Path
    Directory to search for INF files.  This should be your Driver Repository
.PARAMETER DriverType
    Select Drivers by Type
.PARAMETER RemoveDirectories
    Removes the directory containing the file
.EXAMPLE
    Find-OSDriverTypes -DriverType "Intel Wireless" -Path C:\OSDrivers\Intel
    Finds directories containing Intel Wireless Drivers
.EXAMPLE
    Find-OSDriverTypes -DriverType "Intel Wireless" -Path C:\OSDrivers\Intel -RemoveDirectories
    Finds directories containing Intel Wireless Drivers.  Removes Parent directory of selected files
.NOTES
        NAME:    Find-OSDriverTypes.ps1
        AUTHOR:    David Segura, david@segura.org
        BLOG:    http://www.osdeploy.com
        CREATED:    02/14/2018
        VERSION:    1.0.7.3
#>
```



