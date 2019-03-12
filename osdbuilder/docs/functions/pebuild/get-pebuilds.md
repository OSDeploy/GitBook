# Get-PEBuilds

## Usage



## Comments

```text
<#
.SYNOPSIS
Returns all Operating Systems in OSDBuilder\PEBuilds

.DESCRIPTION
Returns all Operating Systems in OSDBuilder\PEBuilds as a PowerShell Custom Object

.LINK
https://www.osdeploy.com/osdbuilder/docs/functions/pebuild/get-pebuilds

.PARAMETER GridView
Displays results in PowerShell ISE GridView with an added PassThru Parameter.  This can also be displayed with the following command
Get-PEBuilds | Out-GridView
#>
```

## Parameters

```text
[CmdletBinding()]
PARAM (
    [switch]$GridView
)
```

