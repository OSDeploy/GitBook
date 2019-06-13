# Microsoft Office 2016 Updates

## CollectUpdates.vbs

You are probably used to using Microsoft's **CollectUpdate.vbs** for keeping your Office Updates directory current but this requires the following steps:

1. **Create Test Computer**
2. **Install Office**
3. **Update Office \(WSUS, SCCM, Windows Update\)**
4. **Gather Updates using CollectUpdates.vbs**

{% embed url="https://docs.microsoft.com/en-us/previous-versions/office/office-2013-resource-kit/cc178995\(v=office.15\)\#testing-and-verifying-the-windows-installer-msp-files" %}

If you are in an environment that supports multiple Versions and Architectures of Microsoft Office, you will need to repeat this process for each Office Version/Architecture

## Get-OSDUpdateDownloads

This function will download Microsoft Office Updates.  Read about the function at this link

{% page-ref page="../functions/get-osdupdatedownloads.md" %}

## Get-OSDUpdateDownloads Usage

Let's get some parameters out of the way first

* **CatalogOffice**
  * Select the Microsoft Office version you are working with.  In this case I have selected Office 2016 64-Bit
* **OfficeProfile**
  * This is also known as a Selection Profile.  The default is configured for en-US, but you can start with this Selection and change later
* **RepositoryRootPath**
  * The updates are in CAB format and must be expanded to MSP files, so consider this a Repository.  This directory should NOT be part of your package, but saving files in here will speed up re-downloading Updates in the future
* **OfficeSetupUpdatesPath**
  * This is the Updates Directory in your Microsoft Office installation.  MSP files placed in this directory \(root\) will be applied during your Microsoft Office installation
  * You should empty this directory first

And that's it.  All the MSP files you need will be downloaded and exported into your Office Setup Updates directory for easy deployment

![](../../../.gitbook/assets/2019-02-24_0-00-00.png)



