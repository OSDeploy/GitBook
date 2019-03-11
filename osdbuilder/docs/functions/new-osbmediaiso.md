# New-OSDBuilderISO

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

## Usage

{% page-ref page="../basics/create-external-media/create-an-iso.md" %}

