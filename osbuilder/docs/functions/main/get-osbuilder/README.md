# Get-OSBuilder

## Comment Based Help

```text
<#
.SYNOPSIS
Offline Servicing for Windows 10, Windows Server 2016 and Windows Server 2019

.DESCRIPTION
OSBuilder is used to Update and Configure Windows 10, Windows Server 2016, and Windows Server 2019 using Offline Servicing

.LINK
https://www.osdeploy.com/osbuilder/docs/functions/main/get-osbuilder

.PARAMETER CreatePaths
Creates empty directories used by OSBuilder

.PARAMETER HideDetails
Hides Write-Host output.  Used when called from other functions

.PARAMETER SetPath
Changes the path from the default of C:\OSBuilder to the path specified

.PARAMETER Update
Updates the OSBuilder Module

.EXAMPLE
Get-OSBuilder -SetPath D:\OSBuilder
Sets the OSBuilder Main directory to D:\OSBuilder

.EXAMPLE
Get-OSBuilder -CreatePaths
Creates empty directories used by OSBuilder

.EXAMPLE
Get-OSBuilder -HideDetails
Method for refreshing all OSBuilder Variables.  Used by other OSBuilder Functions
#>
```

## Parameters

```text
[CmdletBinding()]
PARAM (
    [switch]$CreatePaths,
    [switch]$HideDetails,
    [string]$SetPath,
    [switch]$Update
)
```

## Usage

{% page-ref page="../../../../../osdbuilder/docs/basics/get-started.md" %}



