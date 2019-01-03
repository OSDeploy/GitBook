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

## Requirements

* WIM must be smaller than 4GB.  This is a FAT32 limitation
* USB Drive must be 32GB or smaller.  This is a FAT32 limitation
* Admin Rights are required

![](../../../../.gitbook/assets/2018-10-23_23-53-27.png)

## -USBLabel ABCDEFGHIJKL

The USB Drive Label cannot exceed 11 characters \(FAT32 limitation\). You have been warned.

![](../../../../.gitbook/assets/2018-10-23_23-50-20.png)

## Select OSMedia or OSBuild

Select a single OSMedia or OSBuild to copy to the USB

![](../../../../.gitbook/assets/2018-12-30_22-33-10.png)

## Select USB Drive to FORMAT

Warning, this will replace everything on the USB Drive so be careful

![](../../../../.gitbook/assets/2018-07-25_23-50-07.png)

## Execution

Your USB Drive will be wiped

![](../../../../.gitbook/assets/2018-07-25_23-53-16.png)

And files will be copied. Be patient, especially when it starts copying the Install.wim

![](../../../../.gitbook/assets/2018-07-25_23-54-21.png)

## Complete

Enjoy!

![](../../../../.gitbook/assets/2018-07-25_23-57-34.png)

