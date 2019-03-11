# Show-OSDBuilderInfo

This function is used to display information about any `OSMedia`, `OSBuild`, or `PEBuild`. If you want to know how this works, read [Knowledge: OSDBuilder OS Information](https://github.com/OSDeploy/GitBook/tree/b3a0aecd45dca9212c45ad9d136ea80419add73b/osdbuilder/docs/articles/OSDBuilder-os-information.md)

```text
<#
.SYNOPSIS
Shows Operating System information of any OSDBuilder Media

.DESCRIPTION
Shows Operating System information of any OSDBuilder Media (OSMedia, OSBuilds, PEBuilds)

.LINK
https://www.osdeploy.com/osdbuilder/docs/functions/show-osdbuilderinfo

.PARAMETER FullName
Full Path of the OSDBuilder Media
#>
```

## Parameters

```text
[CmdletBinding()]
PARAM (
    [Parameter(ValueFromPipelineByPropertyName)]
    [string[]]$FullName
)
```

## Usage

{% page-ref page="../basics/os-information.md" %}

