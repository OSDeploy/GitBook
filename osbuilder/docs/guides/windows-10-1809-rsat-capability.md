# Windows 10 1809 RSAT Capability

{% hint style="info" %}
You need OSBuilder 19.1.17+ for this to function properly
{% endhint %}

## Download Windows 10 Features On Demand Disk 1

To add the Windows 10 1809 RSAT Capability, you need to first download the Features on Demand ISO from MVLS

![](../../../.gitbook/assets/2019-01-18_2-55-39.png)

## IsoExtract Content

Save the ISO to your OSBuilder\Content\IsoExtract directory.  In summary, extract the ISO Content \(7-Zip\) and rename the directory to **Windows 10 1809 FOD x64** \(or Windows 10 1809 FOD x86\)

![](../../../.gitbook/assets/2019-01-23_0-27-47.png)

## Features On Demand Capabilities

Starting with Windows 10 1809, some Features on Demand are installed as a Windows Capability because they contain Satellite resources.  Even though RSAT is part of the Features on Demand ISO, they must be installed using **`Add-WindowsCapability`**.  OSBuilder does not include RSAT as a Feature On Demand when selecting Features On Demand for an OSBuild Task because of the **Satellite Dependencies**.  Make sure you read about the changes to Features On Demand at this link to understand the changes

{% embed url="https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/features-on-demand-v2--capabilities" %}

## PowerShell Script

The RSAT Windows Capabilities must be installed using a separate PowerShell Script that is added to OSBuilder.  Use the following PowerShell script and save it to your [**OSBuilder PowerShell Scripts**](../functions/osbuild/new-osbuildtask-external-content/powershell-scripts/) at  "C:\OSBuilder\Content\Scripts\Windows 10 x64 1809 Add-CapabilityRSAT.ps1"  I have included RSAT x86 as well as the other Features on Demand for x64 and x86, although I do not recommend installing those in  an Enterprise Image.

{% file src="../../../.gitbook/assets/windows-10-x64-1809-add-capabilityfod \(1\).ps1" %}

{% file src="../../../.gitbook/assets/windows-10-x64-1809-add-capabilityrsat.ps1" %}

{% file src="../../../.gitbook/assets/windows-10-x86-1809-add-capabilityfod.ps1" %}

{% file src="../../../.gitbook/assets/windows-10-x86-1809-add-capabilityrsat \(1\).ps1" %}

{% embed url="https://gist.github.com/OSDeploy/8636400485af255d71cb75b4370469e7" %}

## New-OSBuildTask

When creating a [**`New-OSBuildTask`**](../functions/osbuild/new-osbuildtask/), select the RSAT PowerShell Script

![](../../../.gitbook/assets/2019-01-17_12-20-23.png)

## New-OSBuild

When executing a New-OSBuild, you will see the PowerShell Script in the Task Information as well as during execution of the PowerShell script

![](../../../.gitbook/assets/2019-01-17_12-22-28.png)

![](../../../.gitbook/assets/2019-01-17_13-10-51.png)

## Testing

For a test, I can create an ISO using [**`New-OSBMediaISO`**](../functions/osbmedia/new-osbmediaiso.md) and when complete, I will install it on a Virtual Machine.  For proper testing, make sure to disable any Network connections to ensure that everything is installed Offline.  Looks perfect!

![](../../../.gitbook/assets/2019-01-17_3-27-52.png)

![RSAT](../../../.gitbook/assets/2019-01-17_3-27-21.png)



