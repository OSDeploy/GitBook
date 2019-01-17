---
description: Requires OSBuilder 19.1.17+
---

# Windows 10 1809 RSAT Capability

{% hint style="info" %}
You need OSBuilder 19.1.17+ for this to function properly
{% endhint %}

To add the Windows 10 1809 RSAT Capability, you must download the Features on Demand ISO from MVLS

{% page-ref page="../functions/osbuild/new-osbuildtask-external-content/features-on-demand.md" %}

## Features On Demand Capabilities

Starting with Windows 10 1809, Features on Demand are installed as a Capability because they contain Satellite resources.  Even though RSAT is part of the Features on Demand ISO, OSBuilder does not include them as a Feature On Demand.  Make sure you read about the changes to Features On Demand at this link

{% embed url="https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/features-on-demand-v2--capabilities" %}

## PowerShell Script

To install the RSAT Capabilities, use the following PowerShell script and save it to your [**OSBuilder PowerShell Scripts**](../functions/osbuild/new-osbuildtask-external-content/powershell-scripts.md) at  "C:\OSBuilder\Content\Scripts\Windows 10 x64 1809 RSAT.ps1"

{% embed url="https://gist.github.com/OSDeploy/8636400485af255d71cb75b4370469e7" %}

## New-OSBuildTask

When creating a [**`New-OSBuildTask`**](../functions/osbuild/new-osbuildtask/), select the PowerShell Script 

For the Features on Demand, make sure you have a proper PowerShell Script selected when prompted

![](../../../.gitbook/assets/2019-01-17_12-20-23.png)

## New-OSBuild

I executing a New-OSBuild, you will see the PowerShell Script in the Task Information as well as during execution of the PowerShell script

![](../../../.gitbook/assets/2019-01-17_12-22-28.png)

## Testing

For a test, I can create an ISO using [**`New-OSBMediaISO`**](../functions/osbmedia/new-osbmediaiso.md) and give it an install in a Virtual Machine.  I made sure to disable any Network connections to ensure that everything was installed Offline.  Looks perfect!

![](../../../.gitbook/assets/2019-01-17_3-27-52.png)

![RSAT](../../../.gitbook/assets/2019-01-17_3-27-21.png)



