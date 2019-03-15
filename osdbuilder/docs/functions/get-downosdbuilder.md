# Get-DownOSDBuilder

## Usage

{% page-ref page="../basics/windows-updates/download-updates-manual.md" %}

## Comments

```text
<#
.SYNOPSIS
Downloads Microsoft Updates for use in OSDBuilder

.DESCRIPTION
Downloads Microsoft Updates for use in OSDBuilder

.LINK
https://www.osdeploy.com/osdbuilder/docs/functions/get-downosdbuilder
#>
```

## Parameters

```text
[CmdletBinding(DefaultParameterSetName='OSDUpdate')]
PARAM (
    #===================================================================================================
    #   OSDUpdateSuperseded
    #===================================================================================================
    [Parameter(ParameterSetName='OSDUpdateSuperseded', Mandatory=$True)]
    [ValidateSet ('List','Remove')]
    [string]$Superseded,
    #===================================================================================================
    #   Content
    #===================================================================================================
    [Parameter(ParameterSetName='Content')]
    [ValidateSet(
        'OneDriveSetup Production',
        'OneDriveSetup Enterprise')]
    [string]$ContentDownload,
    #===================================================================================================
    #   OSDUpdate
    #===================================================================================================
    [Parameter(ParameterSetName='OSDUpdate')]
    [ValidateSet(
        'Windows 7',
        #'Windows 8.1',
        'Windows 10',
        'Windows Server 2012 R2',
        'Windows Server 2016',
        'Windows Server 2019')]
    [string]$UpdateOS,
    
    [Parameter(ParameterSetName='OSDUpdate')]
    [switch]$Download,

    [Parameter(ParameterSetName='OSDUpdate')]
    [switch]$GridView,

    [Parameter(ParameterSetName='OSDUpdate')]
    [ValidateSet ('x64','x86')]
    [string]$UpdateArch,

    [Parameter(ParameterSetName='OSDUpdate')]
    [ValidateSet (1903,1809,1803,1709,1703,1607,1511,1507,7601)]
    [string]$UpdateBuild,

    [Parameter(ParameterSetName='OSDUpdate')]
    [ValidateSet(
        'SSU Servicing Stack Update',
        'LCU Latest Cumulative Update',
        'DUSU Setup Dynamic Update',
        'DUCU Component Dynamic Update',
        'Adobe Flash Player',
        'DotNet Framework',
        'Optional')]
    [string]$UpdateGroup,

    [Parameter(ParameterSetName='OSDUpdate')]
    [switch]$WebClient
)
```

