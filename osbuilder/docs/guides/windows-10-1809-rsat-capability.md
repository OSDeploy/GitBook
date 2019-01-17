---
description: Requires OSBuilder 19.1.17+
---

# Windows 10 1809 RSAT Capability

To add the Windows 10 1809 RSAT Capability, you must download the Features on Demand ISO

{% page-ref page="../functions/osbuild/new-osbuildtask-external-content/features-on-demand.md" %}





Starting with Windows 10 1809, Features on Demand are installed as a Capability because they contain Satellite resources.  Even though RSAT is part of the Features on Demand ISO, OSBuilder does not include them as they cannot be installed as Packages.  Make sure you read about the changes at this link

{% embed url="https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/features-on-demand-v2--capabilities" %}

To install the RSAT Capabilities, use the following PowerShell script and save it to "C:\OSBuilder\Content\Scripts\Windows 10 x64 1809 RSAT.ps1"

{% embed url="https://gist.github.com/OSDeploy/8636400485af255d71cb75b4370469e7" %}

## New-OSBuildTask

When creating a [**`New-OSBuildTask`**](../functions/osbuild/new-osbuildtask/), you will be prompted to select Features on Demand.  Make sure you do not include the Features that require Satellite Features \(RSAT\) or press Cancel to skip

![](../../../.gitbook/assets/2019-01-17_3-00-11.png)

For the Features on Demand, make sure you have a proper PowerShell Script selected when prompted

![](../../../.gitbook/assets/2019-01-17_3-00-50.png)

## New-OSBuild

I executing a New-OSBuild, you will see the Features on Demand as well as any PowerShell Scripts that are needed for Satellite Features

![](../../../.gitbook/assets/2019-01-17_3-01-45.png)

During execution you should see progress for the Features on Demand and the PowerShell Script

![](../../../.gitbook/assets/2019-01-17_3-15-55.png)

![](../../../.gitbook/assets/2019-01-17_3-14-31.png)

## Testing

For a test, I can create an ISO using [**`New-OSBMediaISO`**](../functions/osbmedia/new-osbmediaiso.md) and give it an install in a Virtual Machine.  I made sure to disable any Network connections to ensure that everything was installed Offline.  Looks perfect!

![](../../../.gitbook/assets/2019-01-17_3-27-52.png)

![Math Input Panel](../../../.gitbook/assets/2019-01-17_3-26-04.png)

![RSAT](../../../.gitbook/assets/2019-01-17_3-27-21.png)



