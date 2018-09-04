# OSDeploy PowerShell Module

The OSDeploy PowerShell Module is published on PowerShell Gallery

{% embed data="{\"url\":\"https://www.powershellgallery.com/packages/OSDeploy\",\"type\":\"link\",\"title\":\"OSDeploy\",\"description\":\"Allows the servicing of a Windows Image offline\",\"icon\":{\"type\":\"icon\",\"url\":\"https://www.powershellgallery.com/Public/favicon.ico\",\"aspectRatio\":0},\"thumbnail\":{\"type\":\"thumbnail\",\"url\":\"https://powershellgallery.com/Content/Images/PackageDefaultIcon.png\",\"width\":128,\"height\":128,\"aspectRatio\":1}}" %}

## Installation

**PowerShell Uninstall Previous Versions:**

```text
Uninstall-Module -Name OSDeploy -AllVersions -Force
```

**PowerShell Install Latest Version:**

```text
Install-Module -Name OSDeploy -Scope CurrentUser -Force
```

## OSConfig Functions

* **New-CAB** - Input the path of a Directory
  * Creates a CAB file of the Directory
  * Used for creating a CAB for Provisioning Packages
* **Show-RegistryXML** - Input the path to a Directory containing RegistryXML files
  * Displays the Registry Modifications contained in the RegistryXML files

## Release Information

### 18.9.4 \(September 4, 2018\)

* New-CAB will create a CAB file from a Directory for use in Provisioning Packages
* Show-RegistryXML will display registry entries contained in RegistryXML files



