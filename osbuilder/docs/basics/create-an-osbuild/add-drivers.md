# Add Drivers

You can easily add Drivers to an OSBuild.  In this example, I'm going to add two must have drivers

## Intel Wireless

Start by heading to this link

{% embed url="https://www.intel.com/content/www/us/en/support/articles/000017246/network-and-i-o/wireless-networking.html" %}

From there you will want to select the latest version.  Hit the Download link

![](../../../../.gitbook/assets/image%20%2815%29.png)

Now download the Zip files you need 

![](../../../../.gitbook/assets/image%20%2813%29.png)

Save the files in your &lt;OSBuilderHome&gt;\Content\Drivers

![](../../../../.gitbook/assets/image.png)

Expand the Zip and give the directories a friendly name

![](../../../../.gitbook/assets/image%20%284%29.png)

## Intel Bluetooth

Here is your link for Intel Bluetooth Drivers

{% embed url="https://www.intel.com/content/www/us/en/support/articles/000005773/network-and-i-o/wireless-networking.html" %}

Same deal as before, get the latest

![](../../../../.gitbook/assets/image%20%286%29.png)

Get the Zips that you need

![](../../../../.gitbook/assets/image%20%2820%29.png)

Expand the Zips and give it a friendly name, you know the drill

![](../../../../.gitbook/assets/image%20%2821%29.png)

## Intel Ethernet

Now get the latest Drivers for Intel Ethernet from this link

{% embed url="https://downloadcenter.intel.com/product/36773/Ethernet-Products" %}

Make sure you get the latest

![](../../../../.gitbook/assets/image%20%281%29.png)

Download the Drivers you need.  These should be in EXE format \(self extracting\), but 7-Zip can expand them.  No need to rename these directories, we have some work to do

![](../../../../.gitbook/assets/image%20%282%29.png)

## Intel Wireless Driver Structure

Checking the Intel Wireless Driver Directory, everything is perfect.  THIS is the format that we need the drivers in.  There is no work to do here

![](../../../../.gitbook/assets/image%20%2819%29.png)

## Intel Bluetooth Driver Structure

These Drivers are NOT going to work.  These are EXE\MSI based, so we need to get these expanded.  Execute the MSI file

![](../../../../.gitbook/assets/image%20%2812%29.png)

And complete the installation

![](../../../../.gitbook/assets/image%20%287%29.png)

Save these two directories back in your Intel Bluetooth Driver directory in OSBuilder

![](../../../../.gitbook/assets/image%20%2816%29.png)

Like so

![](../../../../.gitbook/assets/image%20%2824%29.png)

{% hint style="warning" %}
If you need Windows 10 x86 Intel Bluetooth Drivers, you will need to repeat this process on a system with Windows 10 x86
{% endhint %}

## Intel Ethernet Driver Structure

This is the tricky one, so please keep up.  Give the extracted drivers a friendly name and copy the directory for as many Operating Systems as you support

![](../../../../.gitbook/assets/image%20%289%29.png)





















