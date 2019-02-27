# New-OSBMediaUSB

## Function

```text
<#
.SYNOPSIS
Creates a bootable USB of any OSBuilder Media

.DESCRIPTION
Creates a bootable USB of any OSBuilder Media (OSMedia, OSBuilds, PEBuilds)

.LINK
https://www.osdeploy.com/osbuilder/docs/functions/media/new-osbmediausb

.PARAMETER FullName
Full Path of the OSBuilder Media

.PARAMETER USBLabel
Label for the USB Drive
#>
```

```text
[Parameter(ValueFromPipelineByPropertyName)]
[string]$FullName,

[ValidateLength(1,11)]
[string]$USBLabel
```

## Usage

{% page-ref page="../../basics/create-external-media/create-a-usb.md" %}

