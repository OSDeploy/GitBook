# Get-OSMedia

## Usage



## Comments

```text
<#
.SYNOPSIS
Returns all Operating Systems in OSDBuilder\OSMedia

.DESCRIPTION
Returns all Operating Systems in OSDBuilder\OSMedia as a PowerShell Custom Object

.LINK
https://www.osdeploy.com/osdbuilder/docs/functions/osmedia/get-osmedia

.PARAMETER GridView
Displays results in PowerShell ISE GridView with an added PassThru Parameter.  This can also be displayed with the following command
Get-OSMedia | Out-GridView
#>
```

## Parameters

```text
[CmdletBinding()]
PARAM (
    [switch]$GridView
)
```

