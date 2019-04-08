---
description: OSDBuilder 19.3.17+
---

# Create a VHD

{% hint style="warning" %}
**Hyper-V PowerShell Module is required**
{% endhint %}

{% hint style="danger" %}
**Seriously, a running AntiVirus will probably result in some errors**
{% endhint %}

## Related Function

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

| Partition | Size |
| :--- | :--- |
| System | 200MB |
| MSR | 128MB |
| OS | Remainder |
| Recovery | 984MB |

### Execution

If the **`FullName`** \(Full Path\) parameter is not specified, you will be prompted to select an **OSMedia** or **OSBuild**

![](../../../../.gitbook/assets/image%20%2896%29.png)

The Partitions will be created and the Install.wim will be applied to the OS

![](../../../../.gitbook/assets/image%20%28224%29.png)

The entire process should take a few minutes to complete

![](../../../../.gitbook/assets/image%20%28102%29.png)

And the VHD or VHDX will be saved in a VHD subdirectory of your selected OSMedia or OSBuild

![](../../../../.gitbook/assets/image%20%28212%29.png)

## Testing

You should be able to use the VHD in Hyper-V with minimal effort

![](../../../../.gitbook/assets/image%20%2814%29.png)

![](../../../../.gitbook/assets/image%20%28183%29.png)

## Thanks

Many thanks to [**Mikael Nystrom**](https://twitter.com/mikael_nystrom) as much of the code came from his post from 2013 which is still on point

{% embed url="https://deploymentbunny.com/2013/12/19/powershell-is-king-convert-wim-to-vhdvhdx-with-support-for-gen-1-and-gen-2-biosuefi-and-then-some/" %}



