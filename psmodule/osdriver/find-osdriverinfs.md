# Find-OSDriverINFs

Detailed documentation and screenshots coming soon

```
<#
.SYNOPSIS
    Finds specified files, estimates size, option to remove Parent directory
.DESCRIPTION
    Finds specified files, estimates size, option to remove Parent directory
.PARAMETER Path
    Directory to search for INF files
.PARAMETER Files
    Files to Include.  Default is *.inf
.PARAMETER RemoveDirectories
    Removes the directory containing the file
.EXAMPLE
    Find-OSDriverINFs -Path C:\OSDrivers\Intel
    Finds all INF files in C:\OSDrivers\Intel
.EXAMPLE
    Find-OSDriverINFs -Path C:\OSDrivers\Intel -RemoveDirectories
    Finds all INF files in C:\OSDrivers\Intel.  Removes Parent directory of selected files
.NOTES
        NAME:    Find-OSDriverINFs.ps1
        AUTHOR:    David Segura, david@segura.org
        BLOG:    http://www.osdeploy.com
        CREATED:    02/07/2018
        VERSION:    1.0.7.1
#>
```



