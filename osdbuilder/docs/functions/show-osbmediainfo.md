# Show-OSDBuilderInfo

## Usage

{% page-ref page="../basics/media-functions/os-information.md" %}

## Comments

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

