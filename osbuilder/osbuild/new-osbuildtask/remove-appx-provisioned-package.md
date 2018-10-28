---
description: Updated 18.10.28
---

# Remove Appx Provisioned Package

When creating an OSBuild for Windows 10, your have the option to remove Provisioned Appx Packages

## -RemoveAppxProvisionedPackage

Using this parameter with [**`New-OSBuildTask`**](./), you will be prompted to select Appx Packages to Remove from your OSBuild.  Simply multi-select the Appx Packages you want to Remove and press OK

![](../../../.gitbook/assets/2018-10-28_1-43-00.png)

And the selected Appx Packages will be added to the OSBuild Task.  When executing [**`New-OSBuild`**](../new-osbuild.md), these Appx Packages will be uninstalled.

![](../../../.gitbook/assets/2018-10-28_1-48-39.png)



