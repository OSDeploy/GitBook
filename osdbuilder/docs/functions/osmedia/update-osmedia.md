# Update-OSMedia

## Usage



## Comments

```text
<#
.SYNOPSIS
Applies Adobe, Component, Cumulative, Servicing Stack, and Setup Updates to Windows 7, Windows 10, Windows Server 2016, and Windows Server 2019 using Offline Servicing

.DESCRIPTION
Updates are gathered from the OSDBuilder Update Catalogs

.LINK
https://www.osdeploy.com/osdbuilder/docs/functions/update-osmedia

.PARAMETER Name
Enter the name of the existing OSMedia to update

.EXAMPLE
Update-OSMedia -Name 'Win10 Ent x64 1803 17134.345'

.PARAMETER Download
Automatically download the required updates if they are not present in the Content\Updates directory

.EXAMPLE
Update-OSMedia -Name 'Win10 Ent x64 1803 17134.345' -Download

.PARAMETER Execute
Execute the Update

.EXAMPLE
Update-OSMedia -Name 'Win10 Ent x64 1803 17134.345' -Download -Execute

.PARAMETER OSDISO
Creates an ISO of the Updated Media.  Requires ADK oscdimg.exe

.EXAMPLE
Update-OSMedia -Name 'Win10 Ent x64 1803 17134.345' -Download -Execute -ISO

.PARAMETER WaitDismount
Adds a 'Press Enter to Continue' prompt before the Install.wim is dismounted

.PARAMETER WaitDismountWinPE
Adds a 'Press Enter to Continue' prompt before WinPE is dismounted

.PARAMETER SkipUpdates
Execute an OSMedia Update without Updates.  Useful for Testing
#>
```

## Parameters

```text
[CmdletBinding(DefaultParameterSetName='Basic')]
PARAM (
    #==========================================================
    [Parameter(ValueFromPipelineByPropertyName)]
    [string[]]$Name,
    #==========================================================
    [Parameter(ParameterSetName='Basic')]
    [Parameter(ParameterSetName='Advanced')]
    [switch]$Download,

    [Parameter(ParameterSetName='Basic')]
    [Parameter(ParameterSetName='Advanced')]
    [switch]$Execute,

    [Parameter(ParameterSetName='Basic')]
    [Parameter(ParameterSetName='Advanced')]
    [switch]$OSDInfo,
    
    [Parameter(ParameterSetName='Basic')]
    [Parameter(ParameterSetName='Advanced')]
    [switch]$OSDISO,
    #==========================================================
    [Parameter(ParameterSetName='Advanced')]
    [switch]$SkipComponentCleanup,
    [Parameter(ParameterSetName='Advanced')]
    [switch]$SkipUpdates,
    [Parameter(ParameterSetName='Advanced')]
    [switch]$WaitDismount,
    [Parameter(ParameterSetName='Advanced')]
    [switch]$WaitDismountWinPE
    #==========================================================
)
```

