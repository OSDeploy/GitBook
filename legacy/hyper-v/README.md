# Microsoft Hyper-V

it is important in a development environment to do everything you can in a Virtual Machine.  This will ensure that you don't contaminate your Reference Image with an Anti-Virus, which may get in the way when modifying WIMs.

Since most of what you are going to build when using OSDeploy is in Virtual Machines, it makes sense to use Hyper-V.  There are a few different methods for installing Hyper-V, but odds are you have it installed already.

---

## Enable Hyper-V with PowerShell

The easiest way to enable Hyper-V is to use PowerShell.  Admin Rights are required to complete the install

1. Open Windows PowerShell \(Run as Administrator\)
2. Enable the Optional Feature
3. Restart your Computer

```
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
```

---

## Install Hyper-V in Windows Features

Hyper-V can also be installed through the Control Panel.  Admin Rights are required to complete the install

1. Open Control Panel
2. Open Programs and Features
3. \(Left Menu\) Turn Windows features on or off
4. Check Hyper-V \(and all child Features\)
5. Press OK
6. Restart your Computer

![](/assets/Windows Features.png)

