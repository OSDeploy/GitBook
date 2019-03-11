# Show-OSBMediaINFO

This function is used to display information about any **`OSMedia`**, **`OSBuild`**, or **`PEBuild`**.  If you want to know how this works, read [Knowledge: OSDBuilder OS Information](../../articles/OSDBuilder-os-information.md)

```text
<#
.SYNOPSIS
Shows Operating System information of any OSDBuilder Media

.DESCRIPTION
Shows Operating System information of any OSDBuilder Media (OSMedia, OSBuilds, PEBuilds)

.LINK
https://www.osdeploy.com/OSDBuilder/docs/functions/media/show-osbmediainfo

.PARAMETER FullName
Full Path of the OSDBuilder Media
#>

function Show-OSBMediaInfo {
    [CmdletBinding()]
    PARAM (
		[Parameter(ValueFromPipelineByPropertyName)]
		[string[]]$FullName
    )
}
```

## Usage

{% page-ref page="../../basics/os-information.md" %}

