# Intel Wireless

{% hint style="warning" %}
**This guide was written for OSBuilder, but the same principals apply to OSDBuilder**
{% endhint %}

**You can easily add Drivers to an OSBuild.  In this example, I'm going to add Intel Wireless as an example.  If you want to work with Intel Bluetooth or Intel Ethernet, use the following links**

{% page-ref page="intel-bluetooth.md" %}

{% page-ref page="intel-ethernet.md" %}

## Intel Wireless Download Source

Start by heading to this link

{% embed url="https://www.intel.com/content/www/us/en/support/articles/000017246/network-and-i-o/wireless-networking.html" %}

From there you will want to select the latest version.  Hit the Download link

![](../../../../../.gitbook/assets/image%20%28118%29.png)

Now download the Zip files you need 

![](../../../../../.gitbook/assets/image%20%28103%29.png)

Save the files in your &lt;OSDBuilderHome&gt;\Content\Drivers

![](../../../../../.gitbook/assets/image%20%285%29.png)

Expand the Zip and give the directories a friendly name

![](../../../../../.gitbook/assets/image%20%2820%29.png)

## Intel Wireless Driver Structure

Checking the Intel Wireless Driver Directory, everything is perfect.  THIS is the format that we need the drivers in.  There is no work to do here

![](../../../../../.gitbook/assets/image%20%28173%29.png)

## WinPE Drivers

Copy these Drivers to your WinPE Drivers

![](../../../../../.gitbook/assets/image%20%28149%29.png)

## New-OSBuildTask

Now create a New-OSBuildTask.  You will be prompted to select directories the Directories that you added.  Select the ones that apply to your OS and press OK

![](../../../../../.gitbook/assets/image%20%28156%29.png)

Since you copied the Driver directories into WinPE\Drivers, you will be prompted to select Drivers to apply to WinPE.  Select the proper ones \([and yes, you can add Wireless support](https://www.scconfigmgr.com/2018/03/06/build-a-winpe-with-wireless-support/)\)

![](../../../../../.gitbook/assets/image%20%28127%29.png)

## New-OSBuild

Now you can execute your Task and the Drivers will be applied automatically, or you can add these as a [Template](../../../../../osbuilder/docs/guides/templates.md) and these will be applied depending on where you save your Template

![](../../../../../.gitbook/assets/image%20%2845%29.png)

**During the WinPE processing, the Drivers will be added to Windows Setup \(WinSE\), Windows PE \(WinPE\), and in Windows Recovery Environment \(WinRE\) automatically.  So no more not being able to connect to the network when you need to do a Repair**

![](../../../../../.gitbook/assets/image%20%28241%29.png)

**During the OS processing, the Drivers that were selected will be automatically added as well**

![](../../../../../.gitbook/assets/image%20%28167%29.png)

## Summary

You can add more drivers as needed, and I hope this helps explain how Drivers work in OSBuilder.  Enjoy



