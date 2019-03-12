# Get-OSBuilds

## Usage



## Comments

```text
<#
.SYNOPSIS
Returns all Operating Systems in OSDBuilder\OSBuilds

.DESCRIPTION
Returns all Operating Systems in OSDBuilder\OSBuilds as a PowerShell Custom Object

.LINK
https://www.osdeploy.com/osdbuilder/docs/functions/osbuild/get-osbuilds

.PARAMETER GridView
Displays results in PowerShell ISE GridView with an added PassThru Parameter.  This can also be displayed with the following command
Get-OSBuilds | Out-GridView
#>
```

## Parameters

```text
[CmdletBinding()]
PARAM (
    [switch]$GridView
)
```

