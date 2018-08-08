# MDT Deployment Share

The fastest way to setup, customize, and test OSConfig is by creating an MDT Deployment Share on your computer and testing with Hyper-V.

{% hint style="warning" %}
Remember this is "Development", not "Production". Don't try to use an existing MDT Share
{% endhint %}

## OSConfigDev Deployment Share

Complete the MDT Wizard and create a new Deployment Share called OSConfigDev

![](../../.gitbook/assets/2018-08-07_19-28-32.png)

## Import an Operating System

In my case, I imported Windows 10 Enterprise x64 1803

![](../../.gitbook/assets/2018-08-07_19-32-57.png)

## Edit Deployment Share Properties

No need to create an x86 Boot Image. Everything else should be ok

![](../../.gitbook/assets/2018-08-07_19-35-06.png)

### Update Deployment Share

You will need to update the Deployment Share to create the Boot Image

![](../../.gitbook/assets/2018-08-07_19-37-03.png)

## Edit Share and NTFS Permissions

Make sure you have Full Control in your Share Permissions

![](../../.gitbook/assets/2018-08-07_19-49-38.png)

And NTFS Full control as well. You will be copying files back and forth, so this will save some time

![](../../.gitbook/assets/2018-08-07_19-50-16.png)

