# Multi-Language Media

## Purpose

There are probably a handful of people that can properly create Windows Multi-Language Media, its not as simple as injecting Language Packs.  The purpose of this guide is to fully detail how this is done properly

## New OSDBuilder Instance

OSDBuilder allows you to create multiple instances, and working with multiple languages is a good enough reason to do so.  Start by executing OSDBuilder without any parameters.  In this example, my current instance is DEMO

![](../../.gitbook/assets/image%20%28165%29.png)

I can create a new instance \(or change my current instance\) by using the **SetPath** parameter. 

![](../../.gitbook/assets/image%20%2832%29.png)

 The directories will be created automatically when needed, so don't worry if they don't exist.  If you want to force the creation, simply use the following command

```text
Get-OSDBuilder -CreatePaths
```

![](../../.gitbook/assets/image%20%28164%29.png)

## Download Windows Media

If you already have your ISO's, you can skip this step, otherwise you can use the following command to download VL Media

```text
Get-DownOSDBuilder -MediaESD Download
```

![](../../.gitbook/assets/image%20%28148%29.png)

Keep in mind that this may take a considerable amount of time as the files must be downloaded and extracted

![](../../.gitbook/assets/image%20%2827%29.png)

## Primary Language

You will want to define a primary Language for your Media, typically this will be the Language that is used most often.  For a United States based company, this will probably be en-US.  An International company will probably choose en-GB.  For the remainder of this Guide, I will be selecting en-GB as the Primary Language

## Media Merge

Merging the Media is important as it adds Language Resources for Windows Setup.  This means it is used when booting to the Media.  Keep in mind when performing Upgrades, you are using Windows Setup, so this applies as well.

Microsoft details that you need to copy the contents of the Sources directory

![](../../.gitbook/assets/image%20%28157%29.png)

{% embed url="https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/add-multilingual-support-to-windows-setup\#step-3-add-localized-windows-setup-resources-to-the-windows-distribution" %}

But this does not include the Language resources for Boot and Logging, so I find it important to copy everything except the WIMS

![](../../.gitbook/assets/image%20%2842%29.png)





















