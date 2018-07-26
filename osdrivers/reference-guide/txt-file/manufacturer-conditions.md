# Manufacturer Conditions

**Apply CAB to All Operating Systems on Dell Computers**

```text
[OSDrivers]
Operating Systems = All
Make = Dell
```

**Apply CAB to Windows 10 x64 and NOT on Microsoft Computers**

```text
[OSDrivers]
Windows 10 x64 = Yes
NotMake = Microsoft
```

**Apply CAB to Windows 7 x64 and Windows 10 x64 Operating Systems on Dell and Lenovo Computers and NOT on Microsoft Computers**

```text
[OSDrivers]
Windows 7 x64 = Yes
Windows 10 x64 = Yes
Make = Dell,Lenovo
NotMake = Microsoft
```

