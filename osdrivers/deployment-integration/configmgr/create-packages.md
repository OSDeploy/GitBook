# Create Packages

Move your Package Content into your ConfigMgr Packages Share like the configuration below

![](/assets/2-14-2018 2-22-32 PM.png)

---

## Program Type

Create a Standard Program

![](/assets/2-14-2018 2-22-49 PM.png)

---

## Standard Program

Standard Programs do no run in WinPE, so specify in the Name that this is \(Non-WinPE\)

For the Command Line, you need to ensure that the OS and Architecture are specified.  Since it is possible to run this in an Upgrade Task Sequence, if you are upgrading from Windows 7, it would not install Windows 10 Drivers without this specification.  Make sure it is set to run "Whether or not a user is logged on"

```
cscript OSDrivers.vbs /OS:"Windows 10" /Arch:x64
```

![](/assets/2-14-2018 2-25-58 PM.png)

---

## Summary

Confirm the Settings

![](/assets/2-14-2018 2-26-39 PMb.png)

---

## Completion

Looking good!

![](/assets/2-14-2018 2-27-08 PM.png)

---

## Additional Packages

Repeat the same steps for your remaining Packages.

![](/assets/2-14-2018 2-31-20 PMc.png)

---



