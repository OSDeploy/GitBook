# Windows Multi-Language Media

## Purpose

There are probably a handful of people that can properly create Windows Multi-Language Media, its not as simple as injecting Language Packs.  The purpose of this guide is to fully detail how this is done properly

## New OSDBuilder Instance

OSDBuilder allows you to create multiple instances, and working with multiple languages is a good enough reason to do so.  Start by executing OSDBuilder without any parameters.  In this example, my current instance is DEMO

![](../../.gitbook/assets/image%20%28162%29.png)

I can create a new instance \(or change my current instance\) by using the **SetPath** parameter. 

![](../../.gitbook/assets/image%20%2831%29.png)

 The directories will be created automatically when needed, so don't worry if they don't exist.  If you want to force the creation, simply use the following command

```text
Get-OSDBuilder -CreatePaths
```

![](../../.gitbook/assets/image%20%28161%29.png)

## Download Windows Media

If you already have your ISO's, you can skip this step, otherwise you can use the following command to download VL Media

```text
Get-DownOSDBuilder -MediaESD Download
```

![](../../.gitbook/assets/image%20%28146%29.png)

{% page-ref page="windows-multi-language-media.md" %}

















