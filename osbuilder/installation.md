# Installation and Requirements

OSBuilder is published in the PowerShell Gallery at [https://www.powershellgallery.com/packages/OSBuilder/](https://www.powershellgallery.com/packages/OSBuilder/)  
Make sure you check for updates as needed to support new features and to fix bugs!

Installation of OSBuilder is through a PowerShell command line. Use the following to Uninstall previous versions and to install the latest version.

**PowerShell Uninstall Previous Versions:**

```text
Uninstall-Module -Name OSBuilder -AllVersions -Force
```

**PowerShell Install Latest Version:**

```text
Install-Module -Name OSBuilder -Scope CurrentUser -Force
```

## OSBuilder in PowerShell ISE

OSBuilder needs to be executed in PowerShell ISE \(as Elevated Administrator\) due to GridView constraints.

![OSBuilder 18.9.11.0](../.gitbook/assets/2018-09-11_15-11-53.png)

## Admin Rights

OSBuilder requires Admin Rights in PowerShell as you will be manipulating Windows Images. Make sure you launch PowerShell ISE as Administrator when using OSBuilder

## Supported Operating Systems <a id="supported-operating-systems"></a>

OSBuilder runs perfectly in Windows 10 as your OSBuilder Computer. You can work with Images based on Windows 10 or Windows Server 2016.

I have not tested using OSBuilder running on Windows Server 2016

## Hardware Requirements

Offline Servicing of Windows 10 can take a considerable amount of time, especially on older releases. The process of Mounting a WIM, Applying a Cumulative Update, and performing DISM Image Cleanup will take as little as 30 minutes \(1803 x86\) on a healthy Intel Core i7 computer with a SSD, to almost 2 hours \(1607 x64\) on the same system.

I strongly recommend using a Workstation class system in performing these updates.

Since OSBuilder will mount Windows Images, I strongly recommend that you do not have any running Anti-Virus scanning files ON ACCESS. McAfee will prevent the dismounting of images properly.

{% hint style="info" %}
OSBuilder works best on a stand alone Workgroup computer without an AntiVirus performing On Access Scanning.  Use a Virtual Machine \(with some power\) as an alternate solution
{% endhint %}

## OSMedia

If you used my previous attempt at this called OSMedia, you will need to get rid of it first.

![](../.gitbook/assets/2018-07-10_11-49-36.png)



