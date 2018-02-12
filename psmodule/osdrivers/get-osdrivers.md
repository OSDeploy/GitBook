# Get-OSDrivers

This Module requires AWS Tools for PowerShell

```
<#
.SYNOPSIS
    Downloads OSDrivers from Amazon S3 Storage
.DESCRIPTION
    Downloads OSDrivers from Amazon S3 Storage
.PARAMETER LocalFolder
    Local Directory where OSDrivers will be downloaded
.PARAMETER ExcludeWin10
    Excludes Windows 10 Drivers with *Win10* in the File or Path Name
.PARAMETER ExcludeX64
    Excludes x64 Drivers with *x64* in the File or Path Name
.PARAMETER IncludeWin7
    Excludes Windows 7 Drivers with *Win7* in the File or Path Name
.PARAMETER IncludeX86
    Excludes x86 Drivers with *x86* in the File or Path Name
.PARAMETER OSDCore
    Select OSD\Core* Drivers to Download
.PARAMETER OSDDell
    Select OSD\Dell* Drivers to Download
.PARAMETER OSDVideo
    Select OSD\Video* Drivers to Download
.EXAMPLE
    Get-OSDrivers -LocalFolder C:\DeploymentShare\OSDrivers -OSDCore -OSDVideo
    Downloads OSDrivers for Windows 10 x64 Core and Video
.NOTES
        NAME:    Get-OSDrivers.ps1
        AUTHOR:    David Segura, david@segura.org
        BLOG:    http://www.osdeploy.com
        CREATED:    02/07/2018
        VERSION:    1.0.7.4
#>
```



