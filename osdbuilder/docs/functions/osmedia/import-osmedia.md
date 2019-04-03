# Import-OSMedia

## Usage

{% page-ref page="../../basics/import-osmedia/" %}

## Comments

```text
<#
.SYNOPSIS
Imports an Operating System into OSDBuilder

.DESCRIPTION
Imports a supported Operating System into the OSDBuilder OSMedia directory

.LINK
https://www.osdeploy.com/osdbuilder/docs/functions/import-osmedia

.PARAMETER OSDInfo
Executes Show-OSDBuilderInfo -FullName $FullName
Displays Media Information after Import

.PARAMETER UpdateOSMedia
Executes Update-OSMedia -Name $Name -Download -Execute
Automatically updates the Imported Operating System

.PARAMETER EditionId
Operating System Edition to import

.EXAMPLE
Import-OSMedia -EditionId Enterprise

.PARAMETER ImageIndex
Operating System Index to Import

.PARAMETER ImageName
Operating System Image Name to Import

.PARAMETER SkipGridView
Used to bypass the ISE GridView Operating System Selection

.EXAMPLE
Import-OSMedia -EditionId Enterprise -SkipGridView

.EXAMPLE
Import-OSMedia -EditionId Enterprise -SkipGridView -UpdateOSMedia
#>
```

## Parameters

```text
[CmdletBinding(DefaultParameterSetName='Basic')]
PARAM (
    [switch]$OSDInfo,
    [switch]$UpdateOSMedia,

    [Parameter(ParameterSetName='Advanced')]
    [ValidateSet('Education','EducationN','Enterprise','EnterpriseN','EnterpriseS','EnterpriseSN','Professional','ProfessionalEducation','ProfessionalEducationN','ProfessionalN','ProfessionalWorkstation','ProfessionalWorkstationN','ServerRdsh','ServerDatacenter','ServerDatacenterACor','ServerRdsh','ServerStandard','ServerStandardACor')]
    [string]$EditionId,
    [Parameter(ParameterSetName='Advanced')]
    [int]$ImageIndex,
    [Parameter(ParameterSetName='Advanced')]
    [ValidateSet('Windows 10 Education','Windows 10 Education N','Windows 10 Enterprise','Windows 10 Enterprise 2016 LTSB','Windows 10 Enterprise for Virtual Desktops','Windows 10 Enterprise LTSC','Windows 10 Enterprise N','Windows 10 Enterprise N LTSC','Windows 10 Pro','Windows 10 Pro Education','Windows 10 Pro Education N','Windows 10 Pro for Workstations','Windows 10 Pro N','Windows 10 Pro N for Workstations','Windows Server 2016 Datacenter','Windows Server 2016 Datacenter (Desktop Experience)','Windows Server 2016 Standard','Windows Server 2016 Standard (Desktop Experience)','Windows Server 2019 Datacenter','Windows Server 2019 Datacenter (Desktop Experience)','Windows Server 2019 Standard','Windows Server 2019 Standard (Desktop Experience)','Windows Server Datacenter','Windows Server Standard')]
    [string]$ImageName,
    [Parameter(ParameterSetName='Advanced')]
    [switch]$SkipGridView
)
```

