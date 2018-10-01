# Installation

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

## Supported Operating Systems {#supported-operating-systems}

OSBuilder runs perfectly in Windows 10 as your OSBuilder Computer. You can work with Images based on Windows 10 or Windows Server 2016.

I have not tested using OSBuilder running on Windows Server 2016

