# New-OSDBuilderUSB

## Usage

{% page-ref page="../basics/media-functions/create-a-usb.md" %}

## Comments

```text
<#
.SYNOPSIS
Creates a bootable USB of any OSDBuilder Media

.DESCRIPTION
Creates a bootable USB of any OSDBuilder Media (OSMedia, OSBuilds, PEBuilds)

.LINK
https://www.osdeploy.com/osdbuilder/docs/functions/new-osdbuilderusb

.PARAMETER FullName
Full Path of the OSDBuilder Media

.PARAMETER USBLabel
Label for the USB Drive
#>
```

## Parameters

```text
[Parameter(ValueFromPipelineByPropertyName)]
[string]$FullName,

[ValidateLength(1,11)]
[string]$USBLabel
```

