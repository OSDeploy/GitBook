# Installation

## PowerShell Gallery

**OSDBuilder** is published in the [**PowerShell Gallery**](https://www.powershellgallery.com/)\*\*\*\*

\*\*\*\*[**https://www.powershellgallery.com/packages/OSDBuilder**](https://www.powershellgallery.com/packages/OSBuilder)\*\*\*\*

## Upgrade from OSBuilder

OSDBuilder is a completely separate PowerShell Module and it uses most of the same functions as OSBuilder.  These two Modules cannot coexist, and OSBuilder should be removed first

```text
Uninstall-Module OSBuilder -AllVersions -Force
Install-Module OSDBuilder -Force
Import-Module OSDBuilder -Force
```

![](../../../.gitbook/assets/image%20%2810%29.png)

## Clean Install

If you don't have an existing version of OSDBuilder installed, you can simply Install and Import OSBuilder with the following **PowerShell** commands

```text
Install-Module -Name OSDBuilder -Force
Import-Module -Name OSDBuilder -Force
```

![](../../../.gitbook/assets/image%20%2832%29.png)

## Update Existing Version

If you have an existing version of OSBuilder, you will need to Uninstall-Module first with the following **PowerShell** commands

```text
OSDBuilder -Update
```

![](../../../.gitbook/assets/image%20%2855%29.png)

