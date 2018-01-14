# Intel Video for Windows 10 x64

For Windows 10 x64, you will need the following Intel Video Drivers

---

## **Version \[15.60\]**

[https://downloadcenter.intel.com/download/27412/Graphics-Intel-Graphics-Driver-for-Windows-15-60-?product=80939](https://downloadcenter.intel.com/download/27412/Graphics-Intel-Graphics-Driver-for-Windows-15-60-?product=80939)

```
[OSDrivers]
Source = Video Intel 15.60.2.4901 Win10 x64.cab
Windows 10 x64 = Yes
NotMake = Microsoft
MasterPNPID =
URL = https://downloadcenter.intel.com/download/27412/Graphics-Intel-Graphics-Driver-for-Windows-15-60-?product=80939

[WQL]
;Intel UHD Graphics - 8th Generation (Coffee Lake)
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_3184%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_3185%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_3E90%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_3E91%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_3E92%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_3E93%'
;Intel HD Graphics - 7th Generation (Kaby Lake)
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_5902%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_5906%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_590B%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_5912%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_5916%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_5917%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_591B%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_591D%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_591E%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_5921%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_5926%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_5927%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_5A84%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_5A85%'
;Intel HD Graphics - 6th Gen (Skylake)
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_1902%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_1906%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_190B%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_1912%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_1916%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_191B%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_191D%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_191E%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_1921%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_1923%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_1926%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_1927%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_192B%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_192D%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_193A%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_193B%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_193D%'

[PNPIDS]
;Intel UHD Graphics - 8th Generation (Coffee Lake)
PCI\VEN_8086&DEV_3184 = Intel UHD Graphics 605
PCI\VEN_8086&DEV_3185 = Intel UHD Graphics 600
PCI\VEN_8086&DEV_3E90 = Intel UHD Graphics 610
PCI\VEN_8086&DEV_3E91 = Intel UHD Graphics 630
PCI\VEN_8086&DEV_3E92 = Intel UHD Graphics 630
PCI\VEN_8086&DEV_3E93 = Intel UHD Graphics 610
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
```

---

## **Version \[15.40\]**

[https://downloadcenter.intel.com/download/27267/Graphics-Intel-Graphics-Driver-for-Windows-15-40-?product=80939](https://downloadcenter.intel.com/download/27267/Graphics-Intel-Graphics-Driver-for-Windows-15-40-?product=80939)

```
[OSDrivers]
Source = Video Intel 15.40.37.4835 x64.cab
Windows 10 x64 = Yes
NotMake = Microsoft
MasterPNPID =
URL = https://downloadcenter.intel.com/download/27267/Graphics-Intel-Graphics-Driver-for-Windows-15-40-?product=80939

[WQL]
;Intel HD Graphics - 5th Generation (Broadwell)
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_1606%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_160E%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_1612%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_1616%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_161A%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_161E%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_1622%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_1626%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_162A%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_162B%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_22B0%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_22B1%'
;Intel HD Graphics - 4th Generation (Haswell)
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_0402%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_0406%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_040A%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_0412%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_0416%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_041A%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_041E%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_0A06%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_0A0E%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_0A16%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_0A1E%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_0A26%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_0A2E%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_0D22%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_0D26%'

[PNPIDS]
;Intel HD Graphics - 5th Generation (Broadwell)
PCI\VEN_8086&DEV_1606 = Intel HD Graphics
PCI\VEN_8086&DEV_160E = Intel HD Graphics
PCI\VEN_8086&DEV_1612 = Intel HD Graphics 5600
PCI\VEN_8086&DEV_1616 = Intel HD Graphics 5500
PCI\VEN_8086&DEV_161A = Intel HD Graphics P5700
PCI\VEN_8086&DEV_161E = Intel HD Graphics 5300
PCI\VEN_8086&DEV_1622 = Intel Iris Pro Graphics 6200
PCI\VEN_8086&DEV_1626 = Intel HD Graphics 6000
PCI\VEN_8086&DEV_162A = Intel Iris Pro Graphics P6300
PCI\VEN_8086&DEV_162B = Intel Iris Graphics 6100
PCI\VEN_8086&DEV_22B0 = Intel HD Graphics
PCI\VEN_8086&DEV_22B1 = Intel HD Graphics
;Intel HD Graphics - 4th Generation (Haswell)
PCI\VEN_8086&DEV_0402 = Intel HD Graphics
PCI\VEN_8086&DEV_0406 = Intel HD Graphics
PCI\VEN_8086&DEV_040A = Intel HD Graphics
PCI\VEN_8086&DEV_0412 = Intel HD Graphics 4600
PCI\VEN_8086&DEV_0416 = Intel HD Graphics 4600
PCI\VEN_8086&DEV_041A = Intel HD Graphics P4600/P4700
PCI\VEN_8086&DEV_041E = Intel HD Graphics 4400
PCI\VEN_8086&DEV_0A06 = Intel HD Graphics
PCI\VEN_8086&DEV_0A0E = Intel HD Graphics
PCI\VEN_8086&DEV_0A16 = Intel HD Graphics Family
PCI\VEN_8086&DEV_0A1E = Intel HD Graphics Family
PCI\VEN_8086&DEV_0A26 = Intel HD Graphics 5000
PCI\VEN_8086&DEV_0A2E = Intel Iris Graphics 5100
PCI\VEN_8086&DEV_0D22 = Intel Iris Pro Graphics 5200
PCI\VEN_8086&DEV_0D26 = Intel Iris Pro Graphics 5200
```

---

## Version \[15.33\]

[https://downloadcenter.intel.com/download/26813/Intel-Graphics-Driver-for-Windows-15-33-?product=80939](https://downloadcenter.intel.com/download/26813/Intel-Graphics-Driver-for-Windows-15-33-?product=80939)

```
[OSDrivers]
Source = Video Intel 15.33.45.4653 x64.cab
Windows 7 x64 = Yes
Windows 10 x64 = Yes
NotMake = Microsoft
MasterPNPID =
URL = https://downloadcenter.intel.com/download/26813/Intel-Graphics-Driver-for-Windows-15-33-?product=80939

[WQL]
;Intel HD Graphics - 3rd Generation (Valleyview)
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_0152%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_0156%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_015A%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_0162%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_0166%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_016A%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_0F31%'

[PNPIDS]
;Intel HD Graphics - 3rd Generation (Valleyview)
PCI\VEN_8086&DEV_0152 = Intel HD Graphics
PCI\VEN_8086&DEV_0156 = Intel HD Graphics
PCI\VEN_8086&DEV_015A = Intel HD Graphics
PCI\VEN_8086&DEV_0162 = Intel HD Graphics 4000
PCI\VEN_8086&DEV_0166 = Intel HD Graphics 4000
PCI\VEN_8086&DEV_016A = Intel HD Graphics
PCI\VEN_8086&DEV_0F31 = Intel HD Graphics
```



