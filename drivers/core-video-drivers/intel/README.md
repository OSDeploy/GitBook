# Intel Video Drivers

Intel separates their Video Drivers by Generations

| Generation | Win10 x64 | Win10 x86 | Win7 x64 | Win7 x86 |
| :--- | :--- | :--- | :--- | :--- |
| UHD 8th \(Coffee Lake\) | 15.60 |  |  |  |
| HD 7th \(Kaby Lake\) | 15.60 |  |  |  |
| HD 6th \(Skylake\) | 15.60 |  | 15.45 | 15.45 |
| HD 5th \(Broadwell\) | 15.40 | 15.40 | 15.40 | 15.40 |
| HD 4th \(Haswell\) | 15.40 | 15.40 | 15.36 | 15.36 |
| HD 3rd \(Valleyview\) | 15.33 | 15.33 | 15.33 | 15.33 |
| HD 2nd Gen |  |  | 15.28 | 15.28 |
| HD Graphics |  |  | 15.22 | 15.22 |
| GMA 4 Series |  |  | 15.17 | 15.17 |
| GMA |  |  | 15.12 | 15.12 |

In the sections below you will find the Driver Links and the proper WMI Queries for each supported Video Card.  One important thing to note is that for Windows 10 x64, you only need 3 Drivers \(15.47, 15.40, 15.33\) to support your whole environment.

---

## Intel UHD Graphics - 8th Generation \(Coffee Lake\)

```
PCI\VEN_8086&DEV_3184 = Intel UHD Graphics 605
PCI\VEN_8086&DEV_3185 = Intel UHD Graphics 600
PCI\VEN_8086&DEV_3E90 = Intel UHD Graphics 610
PCI\VEN_8086&DEV_3E91 = Intel UHD Graphics 630
PCI\VEN_8086&DEV_3E92 = Intel UHD Graphics 630
PCI\VEN_8086&DEV_3E93 = Intel UHD Graphics 610
```

```
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_3184%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_3185%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_3E90%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_3E91%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_3E92%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_3E93%'
```

---

## Intel HD Graphics - 7th Generation \(Kaby Lake\)

```
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
```

```
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
```

---

## Intel HD Graphics - 6th Gen \(Skylake\)

```
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

```
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
```

---

## Intel HD Graphics - 5th Generation \(Broadwell\)

```
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
```

```
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
```

---

## Intel HD Graphics - 4th Generation \(Haswell\)

```
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

```
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
```

---

## \[15.33\] Intel HD Graphics - 3rd Generation \(Valleyview\)

```
PCI\VEN_8086&DEV_0152 = Intel HD Graphics
PCI\VEN_8086&DEV_0156 = Intel HD Graphics
PCI\VEN_8086&DEV_015A = Intel HD Graphics
PCI\VEN_8086&DEV_0162 = Intel HD Graphics 4000
PCI\VEN_8086&DEV_0166 = Intel HD Graphics 4000
PCI\VEN_8086&DEV_016A = Intel HD Graphics
PCI\VEN_8086&DEV_0F31 = Intel HD Graphics
```

```
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_0152%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_0156%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_015A%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_0162%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_0166%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_016A%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_0F31%'
```

---

## \[15.28\] Intel HD Graphics - 2nd Generation

```
PCI\VEN_8086&DEV_0102 = Intel HD Graphics
PCI\VEN_8086&DEV_0106 = Intel HD Graphics
PCI\VEN_8086&DEV_010A = Intel HD Graphics P3000
PCI\VEN_8086&DEV_0112 = Intel HD Graphics 3000
PCI\VEN_8086&DEV_0116 = Intel HD Graphics 3000
PCI\VEN_8086&DEV_0122 = Intel HD Graphics 3000
PCI\VEN_8086&DEV_0126 = Intel HD Graphics 3000
```

```
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_0102%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_0106%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_010A%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_0112%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_0116%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_0122%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_0126%'
```

---

## \[15.22\] Intel HD Graphics

```
PCI\VEN_8086&DEV_0042 = Intel HD Graphics
PCI\VEN_8086&DEV_0046 = Intel HD Graphics
```

```
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_0042%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_0046%'
```

---

## \[15.17\] Intel Graphics Media Acelerator

```
PCI\VEN_8086&DEV_2A42 = Mobile Intel 4 Series Express Chipset Family
PCI\VEN_8086&DEV_2A43 = Mobile Intel 4 Series Express Chipset Family
PCI\VEN_8086&DEV_2E02 = Intel 4 Series Internal Chipset
PCI\VEN_8086&DEV_2E03 = Intel 4 Series Internal Chipset
PCI\VEN_8086&DEV_2E12 = Intel Q45/Q43 Express Chipset
PCI\VEN_8086&DEV_2E13 = Intel Q45/Q43 Express Chipset
PCI\VEN_8086&DEV_2E22 = Intel G45/G43 Express Chipset
PCI\VEN_8086&DEV_2E23 = Intel G45/G43 Express Chipset
PCI\VEN_8086&DEV_2E32 = Intel G41 Express Chipset
PCI\VEN_8086&DEV_2E33 = Intel G41 Express Chipset
PCI\VEN_8086&DEV_2E42 = Intel B43 Express Chipset
PCI\VEN_8086&DEV_2E43 = Intel B43 Express Chipset
PCI\VEN_8086&DEV_2E92 = Intel B43 Express Chipset
PCI\VEN_8086&DEV_2E93 = Intel B43 Express Chipset
```

```
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_2A42%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_2A43%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_2E02%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_2E03%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_2E12%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_2E13%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_2E22%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_2E23%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_2E32%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_2E33%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_2E42%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_2E43%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_2E92%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_2E93%'
```

---

## \[15.12\] Intel Graphics Media Acelerator

```
PCI\VEN_8086&DEV_2772 = Intel 82945G Express Chipset Family
PCI\VEN_8086&DEV_2776 = Intel 82945G Express Chipset Family
PCI\VEN_8086&DEV_27A2 = Mobile Intel 945 Express Chipset Family
PCI\VEN_8086&DEV_27A6 = Mobile Intel 945 Express Chipset Family
PCI\VEN_8086&DEV_27AE = Mobile Intel 945 Express Chipset Family
PCI\VEN_8086&DEV_2972 = Intel 946GZ Express Chipset Family
PCI\VEN_8086&DEV_2973 = Intel 946GZ Express Chipset Family
PCI\VEN_8086&DEV_2982 = Intel G35 Express Chipset Family
PCI\VEN_8086&DEV_2983 = Intel G35 Express Chipset Family
PCI\VEN_8086&DEV_2992 = Intel Q965/Q963 Express Chipset Family
PCI\VEN_8086&DEV_2993 = Intel Q965/Q963 Express Chipset Family
PCI\VEN_8086&DEV_29A2 = Intel G965 Express Chipset Family
PCI\VEN_8086&DEV_29A3 = Intel G965 Express Chipset Family
PCI\VEN_8086&DEV_29B2 = Intel Q35 Express Chipset Family
PCI\VEN_8086&DEV_29B3 = Intel Q35 Express Chipset Family
PCI\VEN_8086&DEV_29C2 = Intel G33/G31 Express Chipset Family
PCI\VEN_8086&DEV_29C3 = Intel G33/G31 Express Chipset Family
PCI\VEN_8086&DEV_29D2 = Intel Q33 Express Chipset Family
PCI\VEN_8086&DEV_29D3 = Intel Q33 Express Chipset Family
PCI\VEN_8086&DEV_2A02 = Mobile Intel 965 Express Chipset Family
PCI\VEN_8086&DEV_2A03 = Mobile Intel 965 Express Chipset Family
PCI\VEN_8086&DEV_2A12 = Mobile Intel 965 Express Chipset Family
PCI\VEN_8086&DEV_2A13 = Mobile Intel 965 Express Chipset Family
```

```
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_2772%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_2776%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_27A2%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_27A6%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_27AE%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_2982%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_2983%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_2992%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_2993%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_29A2%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_29A3%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_2972%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_2973%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_2A02%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_2A03%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_2A12%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_2A13%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_29C2%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_29C3%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_29B2%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_29B3%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_29D2%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_29D3%'
```




---

Modified: {{ file.mtime }}