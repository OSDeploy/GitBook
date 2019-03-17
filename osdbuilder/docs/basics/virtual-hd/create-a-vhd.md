---
description: OSDBuilder 19.3.17+
---

# Create a VHD

{% hint style="warning" %}
**Hyper-V PowerShell Module is required**
{% endhint %}

## Function

{% page-ref page="../../functions/new-osdbuildervhd.md" %}

## New-OSDBuilderVHD

This is a new function as has not been fully developed yet, but there are a few simple parameters.  You can specify the OS Drive Label \(default is OSDisk\) and the VHD Size \(default is 50\).  More parameters will be added later

```text
New-OSDBuilderVHD -OSDriveLabel OSDeploy -VHDSizeGB 30
```

### BIOS MBR VHD or UEFI GPT VHDX

For now, if the OS Major Version is 10 \(Windows 10, Server 2016, Server 2019\) the Partition Style will be UEFI VHDX, otherwise it will be a BIOS VHD

### BIOS MBR VHD Partition Layout

The VHD will be configured as a single MBR Partition

### UEFI GPT VHDX Partition Layout





![](../../../../.gitbook/assets/image%20%2845%29.png)



![](../../../../.gitbook/assets/image%20%28101%29.png)













