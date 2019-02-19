# OSDSoftware Home

## PowerShell Module

**OSDSoftware** is a PowerShell Module that is used to download some common software used in OS Deployments.  The following software in included.  More will be added as needed in the future

* Google Chrome Enterprise x64
* Microsoft ADK 1803
* Microsoft ADK 1809
* Microsoft ADK 1809 WinPE Addon
* Microsoft MDT 8456 x86
* Microsoft MDT 8456 x64
* Microsoft VS code User x64
* Microsoft VS code System x64

## Installation

Installation of the module through PowerShell is with the following commands

```text
Install-Module OSDSoftware
Import-Module OSDSoftware -Force
```

## Upgrading to a New Release

OSDSoftware includes a function that will Uninstall previous versions and Install the latest version.  Simply use the following command

```text
Update-OSDSoftware
```

