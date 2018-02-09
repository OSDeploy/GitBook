## PNPID Conditions {#operating-system-conditions}

---

**Intel Video 15.60 on Windows 10 x64 and Excluding Microsoft \(Surface\) Computers**

```
[OSDrivers]
URL = https://downloadcenter.intel.com/download/27412/Graphics-Intel-Graphics-Driver-for-Windows-15-60-?product=80939
Windows 10 x64 = Yes
NotMake = Microsoft

[PNPIDS]
;Intel HD Graphics - 6th Gen (Skylake)
PCI\VEN_8086&DEV_1902 = Intel HD Graphics 510
PCI\VEN_8086&DEV_1906 = Intel HD Graphics 510
PCI\VEN_8086&DEV_190B = Intel HD Graphics 510
PCI\VEN_8086&DEV_1912 = Intel HD Graphics 530
PCI\VEN_8086&DEV_1916 = Intel HD Graphics 520
PCI\VEN_8086&DEV_191B = Intel HD Graphics 530
PCI\VEN_8086&DEV_191D = Intel HD Graphics P530
PCI\VEN_8086&DEV_191E = Intel HD Graphics 515
PCI\VEN_8086&DEV_1921 = Intel HD Graphics 520
PCI\VEN_8086&DEV_1923 = Intel HD Graphics 535
PCI\VEN_8086&DEV_1926 = Intel Iris Graphics 540
PCI\VEN_8086&DEV_1927 = Intel Iris Graphics 550
PCI\VEN_8086&DEV_192B = Intel Iris Graphics 555
PCI\VEN_8086&DEV_192D = Intel Iris Graphics P555
PCI\VEN_8086&DEV_193A = Intel Iris Pro Graphics P580
PCI\VEN_8086&DEV_193B = Intel Iris Pro Graphics 580
PCI\VEN_8086&DEV_193D = Intel Iris Pro Graphics P580
;Intel HD Graphics - 7th Generation (Kaby Lake)
PCI\VEN_8086&DEV_5902 = Intel HD Graphics 610
PCI\VEN_8086&DEV_5906 = Intel HD Graphics 610
PCI\VEN_8086&DEV_590B = Intel HD Graphics 610
PCI\VEN_8086&DEV_5912 = Intel HD Graphics 630
PCI\VEN_8086&DEV_5916 = Intel HD Graphics 620
PCI\VEN_8086&DEV_5917 = Intel UHD Graphics 620
PCI\VEN_8086&DEV_591B = Intel HD Graphics 630
PCI\VEN_8086&DEV_591D = Intel HD Graphics P630
PCI\VEN_8086&DEV_591E = Intel HD Graphics 615
PCI\VEN_8086&DEV_5921 = Intel HD Graphics 620
PCI\VEN_8086&DEV_5926 = Intel Iris Plus Graphics 640
PCI\VEN_8086&DEV_5927 = Intel Iris Plus Graphics 650
PCI\VEN_8086&DEV_5A84 = Intel HD Graphics
PCI\VEN_8086&DEV_5A85 = Intel HD Graphics
;Intel UHD Graphics - 8th Generation (Coffee Lake)
PCI\VEN_8086&DEV_3184 = Intel UHD Graphics 605
PCI\VEN_8086&DEV_3185 = Intel UHD Graphics 600
PCI\VEN_8086&DEV_3E90 = Intel UHD Graphics 610
PCI\VEN_8086&DEV_3E91 = Intel UHD Graphics 630
PCI\VEN_8086&DEV_3E92 = Intel UHD Graphics 630
PCI\VEN_8086&DEV_3E93 = Intel UHD Graphics 610
```

---

**Apply CAB to Windows 10 x64 Operating Systems**

```
[OSDrivers]
Windows 10 x64 = Yes

```

---

**Apply CAB to Windows 7 x86 and Windows 10 x86 Operating Systems**

```
[OSDrivers]
Windows 7 x86 = Yes
Windows 10 x86 = Yes

```

  


