# Microsoft Office 2016 Updates

## CollectUpdates.vbs

You are probably used to using Microsoft's **CollectUpdate.vbs** for keeping your Office Updates directory current but this requires the following steps:

1. **Create Test Computer**
2. **Install Office**
3. **Update Office \(WSUS, SCCM, Windows Update\)**
4. **Gather Updates using CollectUpdates.vbs**

{% embed url="https://docs.microsoft.com/en-us/previous-versions/office/office-2013-resource-kit/cc178995\(v=office.15\)\#testing-and-verifying-the-windows-installer-msp-files" %}

If you are in an environment that supports multiple Versions and Architectures of Microsoft Office, you will need to repeat this process for each Office Version/Architecture

## Update-OSDoffice

Thie **Update-OSDoffice** PowerShell script should make things significantly easier for you.  Here's how it works.

## Update-OSDoffice Parameters

Let's get some parameters out of the way first

* **OfficeVersion**
  * Select the Microsoft Office version you are working with.  In this case I have selected Office 2016 64-Bit
* **Selection**
  * This is also known as a Selection Profile.  The default is configured for en-US, but you can start with this Selection and change later
* **DownloadPath**
  * The updates are in CAB format and must be expanded to MSP files, so consider this a Repository.  This directory should NOT be part of your package, but saving files in here will speed up re-downloading Updates in the future
* **OfficeUpdatesPath**
  * This is the Updates Directory in your Microsoft Office installation.  MSP files placed in this directory \(root\) will be applied during your Microsoft Office installation

![](../../../.gitbook/assets/2019-02-19_1-20-53.png)

## Office Updates Path

Make sure this directory is cleared of any existing MSP files

![](../../../.gitbook/assets/2019-02-19_1-26-53.png)

## Update-OSDoffice Execution

Once you have everything ready, you can execute in PowerShell

```text
Update-OSDoffice -OfficeVersion "Office 2016 64-Bit" -Selection Default -DownloadPath "C:\Software\Office Updates" -OfficeUpdatesPath "C:\Software\Office 2016 64-Bit\updates"
```

Available updates will be displayed.  Simply select the updates to include \(select all\) and press OK

![](../../../.gitbook/assets/2019-02-19_1-29-26.png)

{% hint style="info" %}
**The following download, extract, and info stuff is really just for nerds and has been added to look cool**
{% endhint %}

![](../../../.gitbook/assets/2019-02-19_1-31-29.png)

![](../../../.gitbook/assets/2019-02-19_1-31-50.png)

## Results

The Office Updates directory will be populated with all the current Office MSP files.  You are now ready to deploy an updated Office 2016 package

![](../../../.gitbook/assets/2019-02-19_1-34-14.png)

## DownloadPath

Feel free to share this directory with all your Microsoft Office versions.  It's kinda cool

![](../../../.gitbook/assets/2019-02-19_1-38-53.png)

## -Selection Languages

To be honest, I have no clue about all of this.  My apologies, but they are in here if you want to check it out

![](../../../.gitbook/assets/2019-02-19_1-36-41.png)



