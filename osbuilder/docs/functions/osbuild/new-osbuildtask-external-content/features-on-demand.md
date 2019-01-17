# Features On Demand

To enable Features on Demand, you will need to Download and extract an ISO from MVLS.  Before getting started, make sure you read and understand what are the available Features on Demand

{% embed url="https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/features-on-demand-non-language-fod" %}

In Microsoft Volume Licensing Service Center I need to search for '**Windows 10 Enterprise Features on Demand**'.  For Windows 10 1809 I see that there are two ISO's that were "**Updated Sept '18**".  These ISO's are the ones I need to download.

![](../../../../../.gitbook/assets/2019-01-16_23-01-22.png)

I can now download the ISO's to my OSBuilder\Content\IsoExtract directory

![](../../../../../.gitbook/assets/2019-01-16_23-20-21.png)

## IsoExtract Content

The reason this directory is called IsoExtract is because that is what I need to do to this ISO to use it.  You can either mount the ISO and copy the files \(with the structure intact\) or use something like 7-Zip to extract the ISO

![](../../../../../.gitbook/assets/2019-01-16_23-20-57.png)

When looking in FOD Disc 2, I see that it is only Retail Demo content, so unless I'm Best Buy, there is no need to even use this Disc, so I'll delete it

![](../../../../../.gitbook/assets/2019-01-16_23-28-56.png)

Leaving only FOD Disc 1, which I will give a friendly name, making sure to include the ReleaseId and the Architecture

![](../../../../../.gitbook/assets/2019-01-16_23-29-24.png)

## New-OSBuildTask

When creating a New-OSBuildTask, you will be prompted to select Features on Demand to include in your OSBuild

{% hint style="warning" %}
See bottom for installing the Windows 10 1809 RSAT Capability
{% endhint %}

![](../../../../../.gitbook/assets/2019-01-17_11-38-53.png)

## Language Features

You will also receive a prompt to select Language Features on Demand. You can press Cancel if you do not want to select anything

![](../../../../../.gitbook/assets/2019-01-17_11-42-59.png)

If you never plan on using Language Features, simply delete the associated CAB files

![](../../../../../.gitbook/assets/2019-01-17_11-46-07.png)

## New-OSBuild

When creating a New-OSBuild, the Task Features on Demand will be installed automatically

![](../../../../../.gitbook/assets/2019-01-17_11-47-56.png)

## Results

Easy enough!

![](../../../../../.gitbook/assets/2019-01-17_3-26-04.png)

## Additional Resources

For help installing the Windows 10 RSAT Feature on Demand, refer to the Guide

{% page-ref page="../../../guides/windows-10-1809-rsat-capability.md" %}

