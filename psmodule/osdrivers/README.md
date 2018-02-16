# PowerShell Module OSDrivers

OSDrivers is a PowerShell Module that I have written to help in managing your Drivers.  It is hosted on [PowerShell Gallery](https://www.powershellgallery.com/)

[https://www.powershellgallery.com/packages/OSDrivers/](https://www.powershellgallery.com/packages/OSDrivers/)

---

## Included Scripts

* Expand-OSDriver.ps1
* Export-OSDrivers.ps1
* Find-OSDriverByType.ps1
* Find-OSDriverINFs.ps1
* Get-OSDriverPNPIDS.ps1 **\(Requires Elevation as this script uses Dism\)**
* Get-PublicOSDrivers.ps1
* New-OSDriverCab.ps1
* Search-OSDriverContent.ps1

---

## Install PowerShell Module OSDrivers

Open PowerShell as Administrator and make sure that your Script Execution Policy allows you to install the Module first

```
PS C:\> Install-Module -Name OSDrivers -Scope CurrentUser
```

---

## Updating PowerShell Module OSDrivers

If you have an older version, to prevent having duplicates show up in PowerShell ISE, remove any old versions first, then simply run an install to get the latest version

```
PS C:\> Uninstall-Module -Name OSDrivers
PS C:\> Install-Module -Name OSDrivers -Scope CurrentUser
```

---

## Install AWS Tools for PowerShell

If you are going to download the OSDrivers from the Public Repository, you will use **Get-PublicOSDrivers**.  This requires AWS Tools for PowerShell

```
PS C:\> Install-Module -Name AWSPowerShell
```

---

## Open PowerShell ISE

OSDrivers works best from PowerShell ISE.  You can launch it from your PowerShell Prompt

```
PS C:\> ISE
```

---

## Viewing Functions

Select OSDrivers in the Modules drop down

![](/assets/2018-02-16_0-21-30.png)

---

