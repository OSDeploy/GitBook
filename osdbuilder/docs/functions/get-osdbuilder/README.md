# Get-OSDBuilder

## Comments

```text
<#
.SYNOPSIS
Offline Servicing for Windows 7, Windows 10, Windows Server 2012 R2, Windows Server 2016 and Windows Server 2019

.DESCRIPTION
Offline Servicing for Windows 7, Windows 10, Windows Server 2012 R2, Windows Server 2016 and Windows Server 2019

.LINK
https://www.osdeploy.com/osdbuilder/docs/functions/get-osdbuilder

.PARAMETER CreatePaths
Creates empty directories used by OSDBuilder

.PARAMETER HideDetails
Hides Write-Host output.  Used when called from other functions

.PARAMETER SetPath
Changes the path from the default of C:\OSDBuilder to the path specified

.PARAMETER Update
Updates the OSDBuilder Module

.EXAMPLE
Get-OSDBuilder -SetPath D:\OSDBuilder
Sets the OSDBuilder Main directory to D:\OSDBuilder

.EXAMPLE
Get-OSDBuilder -CreatePaths
Creates empty directories used by OSDBuilder

.EXAMPLE
Get-OSDBuilder -HideDetails
Method for refreshing all OSDBuilder Variables.  Used by other OSDBuilder Functions
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

{% page-ref page="../../basics/get-started.md" %}

