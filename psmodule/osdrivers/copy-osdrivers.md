# Copy-OSDrivers

Detailed documentation and screenshots coming soon

```
<#
.SYNOPSIS
    Exports an existing OSDrivers Directory to a new one.  This can be used for Package Creation
.DESCRIPTION
    Exports an existing OSDrivers Directory to a new one.  This can be used for Package Creation
.PARAMETER SourceDir
    Local OSDrivers Source Directory
.PARAMETER TargetDir
    Export Destination Directory
.PARAMETER ExcludeWin10
    Excludes Drivers with *Win10* in the File or Directory Name.  These are included by default
.PARAMETER ExcludeX64
    Excludes Drivers with *x64* in the File or Directory Name.  These are included by default
.PARAMETER IncludeWin7
    Includes Drivers with *Win7* in the File or Directory Name.  These are excluded by default
.PARAMETER IncludeX86
    Includes Drivers with *x86* in the File or Directory Name.  These are excluded by default
.PARAMETER Like
    Wildcard include for Driver Packages in the SourceDir.  eg. *Dell*
.PARAMETER NotLike
    Wildcard exclude for Driver Packages in the SourceDir.  eg. *Lenovo*
.PARAMETER OnlyCore
    Only includes Drivers with *\OSD\Core* in the File FullName (including Path)
.PARAMETER OnlyCustom
    Only includes Drivers that do not have *\OSD\Core* or *\OSD\Dell* or *\OSD\X-Dell* or *\OSD\Video* in the File FullName (including Path)
.PARAMETER OnlyDell
    Only includes Drivers with *\OSD\Dell* or *\OSD\X-Dell* in the File FullName (including Path)
.PARAMETER OnlyVideo
    Only includes Drivers with *\OSD\Video* in the File FullName (including Path)
.EXAMPLE
    Copy-OSDrivers -SourceDir D:\OSDrivers -TargetDir D:\Packages\Win10 x64 Video
    Exports a selected subset of D:\OSDrivers to D:\Packages\Win10 x64 Video
.NOTES
        NAME:    Copy-OSDrivers.ps1
        AUTHOR:    David Segura, david@segura.org
        BLOG:    http://www.osdeploy.com
        CREATED:    02/07/2018
        VERSION:    1.0.7.4
#>
```



