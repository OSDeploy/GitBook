# Features On Demand

To enable Features on Demand, I will need to Download an ISO from MVLS.  Since I need to add something to OSDBuilder for this to work, this is why it is considered **External Content** as the Features are not included in OSDBuilder

Before getting started, make sure you read and understand what are the available Features on Demand

{% embed url="https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/features-on-demand-non-language-fod" %}

In Microsoft Volume Licensing Service Center I need to search for '**Windows 10 Enterprise Features on Demand**'.  For Windows 10 1809 I see that there are two ISO's that were "**Updated Sept '18**".  These ISO's are the ones I need to download.

![](../../../../../.gitbook/assets/2019-01-16_23-01-22.png)

I can now download the ISO's to my OSDBuilder\Content\IsoExtract directory

![](../../../../../.gitbook/assets/2019-01-16_23-20-21.png)

## IsoExtract Content

The reason this directory is called IsoExtract is because that is what I need to do to this ISO to use it.  You can either mount the ISO and copy the files \(with the structure intact\) or use something like 7-Zip to extract the ISO

![](../../../../../.gitbook/assets/2019-01-16_23-20-57.png)

When looking in FOD Disc 2, I see that it is only Retail Demo content, so unless I'm Best Buy, there is no need to even use this Disc, so I'll delete it

![](../../../../../.gitbook/assets/2019-01-16_23-28-56.png)

Leaving only FOD Disc 1, which I will give a friendly name, making sure to include the ReleaseId and the Architecture

![](../../../../../.gitbook/assets/2019-01-16_23-29-24.png)

## Windows 10 1809

Starting with Windows 10 1809, Features on Demand are installed as a Capability because they contain Satellite resources.  These Features, such as RSAT should not be selected for installation as they will fail.  You should make sure you read about the changes at this link

{% embed url="https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/features-on-demand-v2--capabilities" %}

To install the RSAT Capabilities, use the following PowerShell script and save it to "C:\OSDBuilder\Content\Scripts\Windows 10 x64 1809 RSAT.ps1"

{% embed url="https://gist.github.com/OSDeploy/8636400485af255d71cb75b4370469e7" %}

## New-OSBuildTask

When creating a [**`New-OSBuildTask`**](../new-osbuildtask/), you will be prompted to select Features on Demand.  Make sure you do not include the Features that require Satellite Features \(RSAT\) or press Cancel to skip

![](../../../../../.gitbook/assets/2019-01-17_3-00-11.png)

For the Features on Demand, make sure you have a proper PowerShell Script selected when prompted

![](../../../../../.gitbook/assets/2019-01-17_3-00-50.png)

## New-OSBuild

I executing a New-OSBuild, you will see the Features on Demand as well as any PowerShell Scripts that are needed for Satellite Features

![](../../../../../.gitbook/assets/2019-01-17_3-01-45.png)

During execution you should see progress for the Features on Demand and the PowerShell Script

![](../../../../../.gitbook/assets/2019-01-17_3-15-55.png)

![](../../../../../.gitbook/assets/2019-01-17_3-14-31.png)

## Testing

For a test, I can create an ISO using [**`New-OSBMediaISO`**](../../osbmedia/new-osbmediaiso.md) and give it an install in a Virtual Machine.  I made sure to disable any Network connections to ensure that everything was installed Offline.  Looks perfect!

![](../../../../../.gitbook/assets/2019-01-17_3-27-52.png)

![Math Input Panel](../../../../../.gitbook/assets/2019-01-17_3-26-04.png)

![RSAT](../../../../../.gitbook/assets/2019-01-17_3-27-21.png)

















