# Add Drivers

**You can easily add Drivers to an OSBuild.  In this example, I'm going to add three must have drivers**

## Intel Wireless

Start by heading to this link

{% embed url="https://www.intel.com/content/www/us/en/support/articles/000017246/network-and-i-o/wireless-networking.html" %}

From there you will want to select the latest version.  Hit the Download link

![](../../../../.gitbook/assets/image%20%2821%29.png)

Now download the Zip files you need 

![](../../../../.gitbook/assets/image%20%2817%29.png)

Save the files in your &lt;OSBuilderHome&gt;\Content\Drivers

![](../../../../.gitbook/assets/image.png)

Expand the Zip and give the directories a friendly name

![](../../../../.gitbook/assets/image%20%285%29.png)

## Intel Bluetooth

Here is your link for Intel Bluetooth Drivers

{% embed url="https://www.intel.com/content/www/us/en/support/articles/000005773/network-and-i-o/wireless-networking.html" %}

Same deal as before, get the latest

![](../../../../.gitbook/assets/image%20%288%29.png)

Get the Zips that you need

![](../../../../.gitbook/assets/image%20%2830%29.png)

Expand the Zips and give it a friendly name, you know the drill

![](../../../../.gitbook/assets/image%20%2831%29.png)

## Intel Ethernet

Now get the latest Drivers for Intel Ethernet from this link

{% embed url="https://downloadcenter.intel.com/product/36773/Ethernet-Products" %}

Make sure you get the latest

![](../../../../.gitbook/assets/image%20%281%29.png)

Download the Drivers you need.  These should be in EXE format \(self extracting\), but 7-Zip can expand them.  No need to rename these directories, we have some work to do

![](../../../../.gitbook/assets/image%20%282%29.png)

## Intel Wireless Driver Structure

Checking the Intel Wireless Driver Directory, everything is perfect.  THIS is the format that we need the drivers in.  There is no work to do here

![](../../../../.gitbook/assets/image%20%2829%29.png)

## Intel Bluetooth Driver Structure

These Drivers are NOT going to work.  These are EXE\MSI based, so we need to get these expanded.  Execute the MSI file

![](../../../../.gitbook/assets/image%20%2816%29.png)

And complete the installation

![](../../../../.gitbook/assets/image%20%2810%29.png)

Save these two directories back in your Intel Bluetooth Driver directory in OSBuilder

![](../../../../.gitbook/assets/image%20%2823%29.png)

Like so

![](../../../../.gitbook/assets/image%20%2835%29.png)

{% hint style="warning" %}
If you need Windows 10 x86 Intel Bluetooth Drivers, you will need to repeat this process on a system with Windows 10 x86
{% endhint %}

## Intel Ethernet Driver Structure

This is the tricky one, so please keep up.  Give the extracted drivers a friendly name.  Now create empty directories for as many Operating Systems that you support in OSBuilder

![](../../../../.gitbook/assets/image%20%2813%29.png)

Delete these selected files, they are not needed

![](../../../../.gitbook/assets/image%20%2818%29.png)

Drilling down into each remaining directory, you will find a readme.txt which tells you what OS is supported

![](../../../../.gitbook/assets/image%20%2820%29.png)

Go through each of the directories and each of the readme.txt.  Delete the directories you don't care about, and move the ones you do care about into the appropriate Operating System

![](../../../../.gitbook/assets/image%20%2811%29.png)

You may come across a directory without a readme.txt.  Just use some common sense \(NDIS62 . . . Windows 6.2 . . . Windows 7?\)

![](../../../../.gitbook/assets/image%20%284%29.png)

You may even come across a readme.txt that has two Operating Systems that you support, so copy them

![](../../../../.gitbook/assets/image%20%2839%29.png)

Eventually you will run into some WinPE Drivers.  Move them where they need to be \(unzip as needed\)

![](../../../../.gitbook/assets/image%20%2832%29.png)

Here is what your Intel Ethernet Drivers look like if you need everything

![](../../../../.gitbook/assets/image%20%289%29.png)

## WinPE Drivers

Copy these Drivers to your WinPE Drivers

![](../../../../.gitbook/assets/image%20%2824%29.png)

## New-OSBuildTask

Now create a New-OSBuildTask.  You will be prompted to select directories the Directories that you added.  Select the ones that apply to your OS and press OK

![](../../../../.gitbook/assets/image%20%2826%29.png)

Since you copied the Driver directories into WinPE\Drivers, you will be prompted to select Drivers to apply to WinPE.  Select the proper ones \([and yes, you can add Wireless support](https://www.scconfigmgr.com/2018/03/06/build-a-winpe-with-wireless-support/)\)

![](../../../../.gitbook/assets/image%20%2822%29.png)

## New-OSBuild

Now you can execute your Task and the Drivers will be applied automatically, or you can add these as a [Template](../../guides/templates.md) and these will be applied depending on where you save your Template

![](../../../../.gitbook/assets/image%20%287%29.png)

**During the WinPE processing, the Drivers will be added to Windows Setup \(WinSE\), Windows PE \(WinPE\), and in Windows Recovery Environment \(WinRE\) automatically.  So no more not being able to connect to the network when you need to do a Repair**

![](../../../../.gitbook/assets/image%20%2843%29.png)

**During the OS processing, the Drivers that were selected will be automatically added as well**

![](../../../../.gitbook/assets/image%20%2828%29.png)

## Summary

You can add more drivers as needed, and I hope this helps explain how Drivers work in OSBuilder.  Enjoy



