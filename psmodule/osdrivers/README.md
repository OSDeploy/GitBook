# PowerShell Module OSDrivers

OSDrivers is a PowerShell Module that I have written to help in managing your Drivers.  It is hosted on [PowerShell Gallery](https://www.powershellgallery.com/)

[https://www.powershellgallery.com/packages/OSDrivers/](https://www.powershellgallery.com/packages/OSDrivers/)

**OSDrivers requires AWS PowerShell Tools to be installed to run Get-OSDrivers.  Copy-OSDrivers does not have any dependencies.**

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

## Open PowerShell ISE

From PowerShell, open ISE with a simple command

```
PS C:\> ISE
```

---

## View the OSDriver Module

Select the OSDrivers Module.  The two functions are Get-OSDrivers and Copy-OSDrivers.  We will use both of these later.

![](/assets/2018-02-08_14-36-23.png)

