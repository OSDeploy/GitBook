# WMI Filters

When targeting computers using Group Policy, WMI Filters may be required so the proper Windows 10 Version can be targeted.  The table below lists the proper WMI Query for each Windows 10 Version

| WMI Filter Name | WMI Query |
| :--- | :--- |
| Windows 10 Workstation | Select \* from Win32\_OperatingSystem where Version like "10.\*" and ProductType="1" |
| Windows 10 1507 Workstation | Select \* from Win32\_OperatingSystem where Version like "10.0.10240" and ProductType="1" |
| Windows 10 1511 Workstation | Select \* from Win32\_OperatingSystem where Version like "10.0.10586" and ProductType="1" |
| Windows 10 1607 Workstation | Select \* from Win32\_OperatingSystem where Version like "10.0.14393" and ProductType="1" |
| Windows 10 1703 Workstation | Select \* from Win32\_OperatingSystem where Version like "10.0.15063" and ProductType="1" |
| Windows 10 1709 Workstation | Select \* from Win32\_OperatingSystem where Version like "10.0.16299" and ProductType="1" |

---

## Architecture

If selecting Architecture is important, it may be necessary to modify the WMI Query

| WMI Filter Name | WMI Query |
| :--- | :--- |
| Windows 10 Workstation x64 | Select \* from Win32\_OperatingSystem where Version like "10.\*" and ProductType="1" and OSArchitecture="64-bit" |
| Windows 10 Workstation x86 | Select \* from Win32\_OperatingSystem where Version like "10.\*" and ProductType="1" and NOT OSArchitecture="64-bit" |

---

## Reference

| Windows 10 Release Information |
| :--- |
| [https://technet.microsoft.com/en-us/windows/release-info.aspx](https://technet.microsoft.com/en-us/windows/release-info.aspx) |





