# New-OSBuild

## Usage



## Comments

```text
<#
.SYNOPSIS
Creates a new OSBuild from an OSBuild Task

.DESCRIPTION
Creates a new OSBuild from an OSBuild Task created with New-OSBuildTask

.LINK
https://www.osdeploy.com/osdbuilder/docs/functions/new-osbuild

.PARAMETER OSDISO
Creates an ISO of the OSDBuilder Media

.PARAMETER Download
Automatically download the required updates if they are not present in the Content\Updates directory

.PARAMETER Execute
Execute the Build

.PARAMETER ByTaskName
Task Name to Execute

.PARAMETER DontUseNewestMedia
Use the OSMedia specified in the Task, not the Latest

.PARAMETER WaitDismount
Adds a 'Press Enter to Continue' prompt before the Install.wim is dismounted

.PARAMETER WaitDismountWinPE
Adds a 'Press Enter to Continue' prompt before the WinPE Wims are dismounted

.PARAMETER SkipTemplates
Create a new OSBuild without applying Templates

.PARAMETER SkipUpdates
Create a new OSBuild without applying Updates

.PARAMETER Taskless
Create a new OSBuild from OSMedia without a Task
#>
```

## Parameters

```text
[CmdletBinding(DefaultParameterSetName='Basic')]
PARAM (
    [switch]$Download,
    [switch]$Execute,
    [switch]$OSDInfo,
    [switch]$OSDISO,
    #==========================================================
    [Parameter(ParameterSetName='Advanced')]
    [string]$ByTaskName,
    
    [Parameter(ParameterSetName='Advanced')]
    [switch]$DontUseNewestMedia,

    [Parameter(ParameterSetName='Advanced')]
    [switch]$WaitDismount,

    [Parameter(ParameterSetName='Advanced')]
    [switch]$WaitDismountWinPE,
    #==========================================================
    [Parameter(ParameterSetName='Advanced')]
    [Parameter(ParameterSetName='Taskless')]
    [switch]$SkipComponentCleanup,

    [Parameter(ParameterSetName='Advanced')]
    [Parameter(ParameterSetName='Taskless')]
    [switch]$SkipTemplates,

    [Parameter(ParameterSetName='Advanced')]
    [Parameter(ParameterSetName='Taskless')]
    [switch]$SkipUpdates,
    #==========================================================
    [Parameter(ParameterSetName='Taskless', ValueFromPipelineByPropertyName=$True)]
    [string[]]$Name,

    [Parameter(ParameterSetName='Taskless', Mandatory=$True)]
    [switch]$SkipTask
    #==========================================================
)
```

