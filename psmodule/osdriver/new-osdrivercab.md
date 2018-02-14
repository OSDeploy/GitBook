# New-OSDriverCab

Used to create CAB files

![](/assets/2018-02-14_2-44-45.png)

Make multiple CABs

![](/assets/2018-02-14_2-45-11.png)



---

## Comment Based Help

```
<#
.SYNOPSIS
    Creates a CAB file from a Directory or Child Directories
.DESCRIPTION
    Creates a CAB file from a Directory or Child Directories
.PARAMETER Path
    Directory to create the CAB from
.PARAMETER LZXHighCompression
    Forces LZX High Compression (Slower).  Unchecked is MSZIP Fast Compression
.PARAMETER MakeCABsFromSubDirs
    Creates CAB files from Path Subdirectories
.EXAMPLE
    New-OSDriverCab -Path C:\Temp\Dell\LatitudeE10_A01
    Creates MSZIP Fast Compression CAB from of C:\Temp\Dell\LatitudeE10_A01
.EXAMPLE
    New-OSDriverCab -Path C:\Temp\Dell -LZXHighCompression -MakeCABsFromSubDirs
    Creates LZX High Compression CABS from all subdirectories of C:\Temp\Dell
.NOTES
        NAME:    New-OSDriverCab.ps1
        AUTHOR:    David Segura, david@segura.org
        BLOG:    http://www.osdeploy.com
        CREATED:    02/07/2018
        VERSION:    1.0.7.1
#>
```



