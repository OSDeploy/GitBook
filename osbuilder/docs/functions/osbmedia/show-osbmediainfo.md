# Show-OSBMediaINFO

This function is used to display information about any **`OSMedia`**, **`OSBuild`**, or **`PEBuild`**.  If you want to know how this works, read [Knowledge: OSBuilder OS Information](../../articles/osbuilder-os-information.md)

```text
<#
.SYNOPSIS
Shows Operating System information of any OSBuilder Media

.DESCRIPTION
Shows Operating System information of any OSBuilder Media (OSMedia, OSBuilds, PEBuilds)

.LINK
https://www.osdeploy.com/osbuilder/docs/functions/media/show-osbmediainfo

.PARAMETER FullName
Full Path of the OSBuilder Media
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

