# New-PEBuild

## Usage



## Comments

```text
<#
.SYNOPSIS
Creates a new PEBuild from an PEBuild Task

.DESCRIPTION
Creates a new PEBuild from an PEBuild Task created with New-PEBuildTask

.LINK
https://www.osdeploy.com/osdbuilder/docs/functions/new-pebuild

.PARAMETER Execute
Creates the PEBuild

.PARAMETER OSDISO
Creates an ISO
New-OSDBuilderISO -FullName $FullName

.PARAMETER WaitMount
Adds a 'Press Enter to Continue' prompt after WinPE is mounted

.PARAMETER WaitDismount
Adds a 'Press Enter to Continue' prompt before WinPE is dismounted
#>
```

## Parameters

```text
PARAM (
    #==========================================================
    [switch]$Execute,
    [switch]$OSDISO,
    #==========================================================
    [Parameter(ParameterSetName='Advanced')]
    [switch]$WaitDismount,
    [Parameter(ParameterSetName='Advanced')]
    [switch]$WaitMount
    #==========================================================
)
```

