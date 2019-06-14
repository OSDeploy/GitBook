# Intel Ethernet

## Driver Download Source

**Use the following link to get the latest Intel Ethernet Drivers**

{% embed url="https://downloadcenter.intel.com/product/36773/Ethernet-Products" caption="" %}

Make sure you get the latest

![](../../../.gitbook/assets/image%20%2814%29.png)

## Driver Download

Download the Drivers you need. These should be in EXE format \(self extracting\), but 7-Zip can expand them. No need to rename these directories, we have some work to do

![](../../../.gitbook/assets/image%20%2815%29.png)

## Driver Structure

This is the tricky one, so please keep up. Give the extracted drivers a friendly name. Now create empty directories for as many Operating Systems that you support in OSBuilder

![](../../../.gitbook/assets/image%20%28115%29.png)

Delete these selected files, they are not needed

![](../../../.gitbook/assets/image%20%28159%29.png)

Drilling down into each remaining directory, you will find a readme.txt which tells you what OS is supported

![](../../../.gitbook/assets/image%20%28173%29.png)

Go through each of the directories and each of the readme.txt. Delete the directories you don't care about, and move the ones you do care about into the appropriate Operating System

![](../../../.gitbook/assets/image%20%28107%29.png)

You may come across a directory without a readme.txt. Just use some common sense \(NDIS62 . . . Windows 6.2 . . . Windows 7?\)

![](../../../.gitbook/assets/image%20%2830%29.png)

You may even come across a readme.txt that has two Operating Systems that you support, so copy them

![](../../../.gitbook/assets/image%20%28321%29.png)

Eventually you will run into some WinPE Drivers. Move them where they need to be \(unzip as needed\)

![](../../../.gitbook/assets/image%20%28292%29.png)

Here is what your Intel Ethernet Drivers look like if you need all Operating Systems

![](../../../.gitbook/assets/image%20%2879%29.png)

