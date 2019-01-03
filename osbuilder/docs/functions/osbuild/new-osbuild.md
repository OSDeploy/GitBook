# New-OSBuild

Once you have created a Task using [**`New-OSBuildTask`**](new-osbuildtask/), you can create an OSBuild.

## Function

```text
<#
.SYNOPSIS
Creates a new OSBuild from an OSBuild Task

.DESCRIPTION
Creates a new OSBuild from an OSBuild Task created with New-OSBuildTask

.LINK
https://www.osdeploy.com/osbuilder/docs/functions/osbuild/new-osbuild

.PARAMETER CreateISO
Creates an ISO of the OSBuilder Media

.PARAMETER DownloadUpdates
Automatically download the required updates if they are not present in the Content\Updates directory

.PARAMETER Execute
Execute the Build

.PARAMETER ByTaskName
Task Name to Execute

.PARAMETER DontUseNewestMedia
Use the OSMedia specified in the Task, not the Latest

.PARAMETER PromptBeforeDismount
Adds a 'Press Enter to Continue' prompt before the Install.wim is dismounted

.PARAMETER PromptBeforeDismountWinPE
Adds a 'Press Enter to Continue' prompt before the WinPE Wims are dismounted
#>
function New-OSBuild {
    [CmdletBinding(DefaultParameterSetName='Basic')]
    PARAM (
        [switch]$CreateISO,
        [switch]$DownloadUpdates,
        [switch]$Execute,
        [switch]$ShowMediaInfo,
        
        [Parameter(ParameterSetName='Advanced')]
        [string]$ByTaskName,
        
        [Parameter(ParameterSetName='Advanced')]
        [switch]$DontUseNewestMedia,

        [Parameter(ParameterSetName='Advanced')]
        [switch]$PromptBeforeDismount,

        [Parameter(ParameterSetName='Advanced')]
        [switch]$PromptBeforeDismountWinPE
    )
}
```

## -DownloadUpdates

This parameter will automatically download Microsoft Updates that are needed if you have not previously downloaded them

```text
New-OSBuild -DownloadUpdates
```

**Example:**  `New-OSBuild -DownloadUpdates`

## -Execute

This parameter is required to create the OSBuild

**Example:**  `New-OSBuild -Execute`

## Run PowerShell CommandLine



**Example:**  `New-OSBuild -DownloadUpdates -Execute`

