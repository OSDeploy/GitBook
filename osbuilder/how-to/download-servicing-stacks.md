# Download Servicing Stacks

To ensure you don't run into any problems when Servicing a Windows Image Offline, you need to ensure that you have the latest Servicing Stacks.

{% hint style="info" %}
Check [Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Home.aspx) for the latest Servicing Stacks
{% endhint %}

You can download them manually and place them in your OSBuilder\Content\UpdateStacks directory. Each update should be placed in a separate directory matching the supported Operating System

## Get-OSBuilder -DownloadUpdates Latest

I publish a list of current Servicing Stacks online that are used by OSBuilder online

{% hint style="info" %}
Servicing Stacks in OSBuilder are checked linked with [GitHub](https://raw.githubusercontent.com/OSDeploy/OSBuilderJSON/master/stacks.json)
{% endhint %}

The Servicing Stacks I update are available so you can download them using Get-OSBuilder -DownloadUpdates Latest

![](../../.gitbook/assets/2018-07-19_22-23-10.png)

## Select Servicing Stacks

Select what you need, or all of them, and press OK.

![](../../.gitbook/assets/2018-07-19_22-25-05.png)

## Get-OSBuilder

You can verify you have Servicing Stacks in OSBuilder by simply running Get-OSBuilder

![](../../.gitbook/assets/2018-07-19_22-27-03.png)

