# New-OSDBuilderISO

## Usage

{% page-ref page="../basics/media-functions/create-an-iso.md" %}

## Comments

```text
<#
.SYNOPSIS
Creates an ISO of any OSDBuilder Media

.DESCRIPTION
Creates an ISO of any OSDBuilder Media (OSMedia, OSBuilds, PEBuilds)

.LINK
https://www.osdeploy.com/osdbuilder/docs/functions/new-osdbuilderiso

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

