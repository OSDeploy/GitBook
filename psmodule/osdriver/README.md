# PowerShell Module OSDriver

OSDriver is a PowerShell Module that I have written to help in managing your Drivers.  It is hosted on [PowerShell Gallery](https://www.powershellgallery.com/)

[https://www.powershellgallery.com/packages/OSDriver/1.0.7.1](https://www.powershellgallery.com/packages/OSDriver/1.0.7.1)

---

## Install PowerShell Module OSDriver

Open PowerShell as Administrator and make sure that your Script Execution Policy allows you to install the Module first

```
PS C:\> Install-Module -Name OSDriver -Scope CurrentUser
```

---

## Updating PowerShell Module OSDriver

If you have an older version, to prevent having duplicates show up in PowerShell ISE, remove any old versions first, then simply run an install to get the latest version

```
PS C:\> Uninstall-Module -Name OSDriver
PS C:\> Install-Module -Name OSDriver -Scope CurrentUser
```

---

## Open PowerShell ISE

From PowerShell, open ISE with a simple command

```
PS C:\> ISE
```

---

## View the OSDriver Module

Select the OSDriver Module to see the available functions.

![](/assets/2-8-2018 12-28-58 PM.png)

