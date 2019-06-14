# Installation

## PowerShell Gallery

**OSDBuilder** is a PowerShell Module that is published in the [**PowerShell Gallery**](https://www.powershellgallery.com/)\*\*\*\*

\*\*\*\*[**https://www.powershellgallery.com/packages/OSDBuilder**](https://www.powershellgallery.com/packages/OSDBuilder)\*\*\*\*

{% hint style="danger" %}
**After installing OSDBuilder, you should close all open PowerShell sessions to ensure that the Module is fully loaded**
{% endhint %}

## Clean Install

If you don't have an existing version of **OSDBuilder** installed, you can simply Install and Import OSBuilder with the following **PowerShell** commands

```text
Install-Module -Name OSDBuilder -Force
Import-Module -Name OSDBuilder -Force
```

![](../../../.gitbook/assets/image%20%28208%29.png)

## Upgrade from OSBuilder

**OSDBuilder** is a completely separate PowerShell Module from **OSBuilder**, and it shares the same function names.  These two Modules cannot coexist, and **OSBuilder** should be removed before installing **OSDBuilder**

```text
Uninstall-Module OSBuilder -AllVersions -Force
Install-Module OSDBuilder -Force
Import-Module OSDBuilder -Force
```

![](../../../.gitbook/assets/image%20%2847%29.png)

## Update to Latest Version

If you have an existing version of **OSBuilder**, you can easily do this with the following PowerShell Command

```text
OSDBuilder -Update
```

![](../../../.gitbook/assets/image%20%28351%29.png)

