# New-PEBuildTask

## Usage



## Comments

```text
<#
.SYNOPSIS
Creates a JSON Task for use with New-PEBuild

.DESCRIPTION
Creates a JSON Task for use with New-PEBuild

.LINK
https://www.osdeploy.com/osdbuilder/docs/functions/new-pebuildtask

.PARAMETER SourceWim
Wim to use for the PEBuild

.PARAMETER TaskName
Name of the Task to create

.PARAMETER DeploymentShare
MDT DeployRoot Full Path

.PARAMETER AutoExtraFiles
Add Auto ExtraFiles to WinPE

.PARAMETER ScratchSpace
Set the Scratch Space for WinPE
#>
```

## Parameters

```text
[CmdletBinding(DefaultParameterSetName='Recovery')]
PARAM (
    #==========================================================
    [Parameter(Mandatory)]
    [string]$TaskName,
    #==========================================================
    [Parameter(Mandatory,ParameterSetName='MDT')]
    [string]$DeploymentShare,
    #==========================================================
    [Parameter(Mandatory,ParameterSetName='WinPE')]
    [Parameter(Mandatory,ParameterSetName='MDT')]
    [ValidateSet('WinRE','WinPE')]
    [string]$SourceWim,
    #==========================================================
    [switch]$AutoExtraFiles,
    [string]$CustomName,
    [ValidateSet('64','128','256','512')]
    [string]$ScratchSpace = '128'
    #==========================================================
)
```

