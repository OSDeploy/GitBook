# Thunderbolt

All Intel Thunderbolt Drivers contain a similarly named INF file.  This is what we search for to locate our duplicated Drivers.

```
Identifier: tbt*.inf
```

---

## Latest Drivers

The latest Dell Intel Thunderbolt Driver is Version 16.3.61.275, A03

[http://www.dell.com/support/home/us/en/04/drivers/driversdetails?driverId=7X8Y6](http://www.dell.com/support/home/us/en/04/drivers/driversdetails?driverId=7X8Y6)

This Driver will have to be downloaded and extracted and can be used in MDT or OSD

---

## Hardware ID's

Intel Thunderbolt uses the following Hardware ID's.

```
PCI\VEN_8086&DEV_1566 = "Thunderbolt(TM) Controller - 1566"
PCI\VEN_8086&DEV_1568 = "Thunderbolt(TM) Controller - 1568"
PCI\VEN_8086&DEV_156A = "Thunderbolt(TM) Controller - 156A"
PCI\VEN_8086&DEV_156C = "Thunderbolt(TM) Controller - 156C"
PCI\VEN_8086&DEV_1575 = "Thunderbolt(TM) Controller - 1575"
PCI\VEN_8086&DEV_1577 = "Thunderbolt(TM) Controller - 1577"
PCI\VEN_8086&DEV_157D = "Thunderbolt(TM) Controller - 157D"
PCI\VEN_8086&DEV_15BF = "Thunderbolt(TM) Controller - 15BF"
PCI\VEN_8086&DEV_15D2 = "Thunderbolt(TM) Controller - 15D2"
PCI\VEN_8086&DEV_15D9 = "Thunderbolt(TM) Controller - 15D9"
```

---

## Dell Windows 10 Family Packs

| Windows 7 x86 | Windows 7 x64 | Windows 10 x86 | Windows 10 x64 |
| :--- | :--- | :--- | :--- |
|  |  |  | 1.32 GB |

```
PS C:\Windows\system32> Get-OSDriversEstimate -Path D:\Drivers\Test\Alpha\Win10x64 -Include tbt*.inf
95.93 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE10_A01\LatitudeE10\WIN10\x64\Chipset\39G55\Windows10-x64
76.51 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE8Tablet_A11\LatitudeE8Tablet\WIN10\x64\Chipset\D91CC
80.52 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE8Tablet_A11\LatitudeE8Tablet\WIN10\x64\Chipset\J95RR\Windows10-x64
95.89 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE8_A18\LatitudeE8\WIN10\x64\Chipset\7X8Y6\Windows10-x64
95.89 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE9Tablet_A08\LatitudeE9Tablet\Win10\x64\chipset\7X8Y6\Windows10-x64
80.52 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE9Tablet_A08\LatitudeE9Tablet\Win10\x64\docks\J95RR\Windows10-x64
95.89 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE9_A11\LatitudeE9\WIN10\x64\Chipset\7X8Y6\Windows10-x64
81.47 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE9_A11\LatitudeE9\WIN10\x64\Chipset\J95RR
0.54 MB D:\Drivers\Test\Alpha\Win10x64\Win10_PrecisionM3800_A00\PrecisionM3800\win10\x64\chipset\C0K58\Windows10-x64
81.48 MB D:\Drivers\Test\Alpha\Win10x64\Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Chipset\2VCC1
69.97 MB D:\Drivers\Test\Alpha\Win10x64\Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Chipset\7P7G7
76.51 MB D:\Drivers\Test\Alpha\Win10x64\Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Chipset\D91CC
81.47 MB D:\Drivers\Test\Alpha\Win10x64\Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Chipset\J95RR
80.52 MB D:\Drivers\Test\Alpha\Win10x64\Win10_PrecisionM7_A06\PrecisionM7\WIN10\x64\Chipset\J95RR\Windows10-x64
81.47 MB D:\Drivers\Test\Alpha\Win10x64\Win10_PrecisionWS6_A13\PrecisionWS6\WIN10\x64\Input\99H03
81.47 MB D:\Drivers\Test\Alpha\Win10x64\Win10_PrecisionWS7_A16\PrecisionWS7\WIN10\x64\Input\99H03
96.85 MB D:\Drivers\Test\Alpha\Win10x64\Win10_PrecisionWS8_A08\PrecisionWS8\WIN10\x64\Chipset\7X8Y6
1.32 GB Total Size Used
```

---

## Dell Windows 10 Model Packs

| **Windows 10 x86** | **Windows 10 x64** |
| :--- | :--- |
|  | 2.34 GB |

```
PS C:\Windows\system32> Get-OSDriversEstimate -Path D:\Drivers\Extract\Dell\Win10x64-MODEL -Include tbt*.inf
80.52 MB D:\Drivers\Extract\Dell\Win10x64-MODEL\Latitude 5480\Windows10-A04\5480\Win10\x64\chipset\J95RR_A00-00\Win10x64
95.89 MB D:\Drivers\Extract\Dell\Win10x64-MODEL\Latitude 5580\Windows10-A04\5580\win10\x64\docks\7X8Y6_A00-00\Win10x64
80.52 MB D:\Drivers\Extract\Dell\Win10x64-MODEL\Latitude 7275\Windows10-A08\7275\win10\x64\chipset\J95RR_A00-00\Windows10-x64
80.52 MB D:\Drivers\Extract\Dell\Win10x64-MODEL\Latitude 7280\Windows10-A04\7280\win10\x64\chipset\J95RR_A00-00\Windows10-x64
95.89 MB D:\Drivers\Extract\Dell\Win10x64-MODEL\Latitude 7285\Windows10-A01\7285\Win10\x64\docks\7GKGT_A00-00\Win10x64
95.89 MB D:\Drivers\Extract\Dell\Win10x64-MODEL\Latitude 7370\Windows10-A10\7370\win10\x64\chipset\7X8Y6_A00-00\Windows10-x64
95.89 MB D:\Drivers\Extract\Dell\Win10x64-MODEL\Latitude 7380\Windows10-A01\7380\win10\x64\chipset\7X8Y6_A00-00\Windows10-x64
95.89 MB D:\Drivers\Extract\Dell\Win10x64-MODEL\Latitude 7480\Windows10-A04\7480\win10\x64\chipset\7X8Y6_A00-00\Windows10-x64
80.52 MB D:\Drivers\Extract\Dell\Win10x64-MODEL\Latitude E5570\Windows10-A13\E5570\Win10\x64\chipset\J95RR_A00-00\Windows10-x64
80.52 MB D:\Drivers\Extract\Dell\Win10x64-MODEL\Precision 3510\Windows10-A10\3510\Win10\x64\chipset\J95RR_A00-00\Production\Windows10-x64
80.52 MB D:\Drivers\Extract\Dell\Win10x64-MODEL\Precision 3520\Windows10-A04\3520\win10\x64\docks\J95RR_A00-00\Win10x64
95.89 MB D:\Drivers\Extract\Dell\Win10x64-MODEL\Precision 5510\Windows10-A11\5510\Win10\x64\docks\M6YD4_A00-00\Windows10-x64
95.89 MB D:\Drivers\Extract\Dell\Win10x64-MODEL\Precision 5520\Windows10-A03\5520\win10\x64\chipset\7X8Y6_A00-00\Windows10-x64
80.52 MB D:\Drivers\Extract\Dell\Win10x64-MODEL\Precision 5720 AIO\Windows10-A02\5720 AIO\win10\x64\chipset\2VCC1_A00-00
95.89 MB D:\Drivers\Extract\Dell\Win10x64-MODEL\Precision 7520\Windows10-A03\7520\Win10\x64\chipset\7X8Y6_A00-00\Windows10-x64
95.89 MB D:\Drivers\Extract\Dell\Win10x64-MODEL\Precision 7720\Windows10-A03\7720\Win10\x64\chipset\7X8Y6_A00-00\Win10x64
68.99 MB D:\Drivers\Extract\Dell\Win10x64-MODEL\Precision M3800\Windows10-A01\M3800\win10\x64\chipset\91DT4_A00-00\Windows10-x64
80.52 MB D:\Drivers\Extract\Dell\Win10x64-MODEL\Precision Mobile Workstation 7510\Windows10-A10\7510\win10\x64\chipset\J95RR_A00-00\drivers
80.52 MB D:\Drivers\Extract\Dell\Win10x64-MODEL\Precision Mobile Workstation 7710\Windows10-A08\7710\win10\x64\chipset\J95RR_A00-00\Windows10-x64
95.89 MB D:\Drivers\Extract\Dell\Win10x64-MODEL\Precision Precision 5820 Tower\Windows10-A00\Precision 5820 Tower\win10\x64\chipset\7X8Y6_A00-00\Production\Windows10-x64
95.89 MB D:\Drivers\Extract\Dell\Win10x64-MODEL\Precision Precision 7820 Tower\Windows10-A00\Precision 7820 Tower\win10\x64\input\7X8Y6_A00-00\Windows10-x64
95.89 MB D:\Drivers\Extract\Dell\Win10x64-MODEL\Precision Precision 7920 Tower\Windows10-A00\Precision 7920 Tower\win10\x64\input\7X8Y6_A00-00\Windows10-x64
46.66 MB D:\Drivers\Extract\Dell\Win10x64-MODEL\Precision T1700\Windows10-A03\T1700\win10\x64\input\MYDH5_A00-00\Production\Windows10-x64
80.52 MB D:\Drivers\Extract\Dell\Win10x64-MODEL\Precision T3620\Windows10-A09\T3620\win10\x64\chipset\99H03_A00-00
80.52 MB D:\Drivers\Extract\Dell\Win10x64-MODEL\Precision Tower 3420\Windows10-A09\T3420\win10\x64\chipset\99H03_A00-00
80.52 MB D:\Drivers\Extract\Dell\Win10x64-MODEL\Precision Tower 5810\Windows10-A04\T5810\win10\x64\input\99H03_A00-00\Windows10-x64
80.52 MB D:\Drivers\Extract\Dell\Win10x64-MODEL\Precision Tower 7810\Windows10-A05\T7810\win10\x64\input\99H03_A00-00\Windows10-x64
80.52 MB D:\Drivers\Extract\Dell\Win10x64-MODEL\Precision Tower 7910\Windows10-A05\T7910\win10\x64\input\99H03_A00-00\Windows10-x64
2.34 GB Total Size Used
```

A search in the Driver Repositories locates several instances of Thunderbolt

```
tbt81x.inf    D:\Drivers\Dell\Win10x64\Family\Win10_LatitudeE8_A18\LatitudeE8\WIN10\x64\Chipset\7X8Y6\Windows10-x64
tbt70i.inf    D:\Drivers\Dell\Win10x64\Family\Win10_LatitudeE8Tablet_A11\LatitudeE8Tablet\WIN10\x64\Chipset\D91CC
tbt70x.inf    D:\Drivers\Dell\Win10x64\Family\Win10_LatitudeE8Tablet_A11\LatitudeE8Tablet\WIN10\x64\Chipset\D91CC
tbt81x.inf    D:\Drivers\Dell\Win10x64\Family\Win10_LatitudeE8Tablet_A11\LatitudeE8Tablet\WIN10\x64\Chipset\D91CC
tbt81x.inf    D:\Drivers\Dell\Win10x64\Family\Win10_LatitudeE8Tablet_A11\LatitudeE8Tablet\WIN10\x64\Chipset\J95RR\Windows10-x64
tbt81x.inf    D:\Drivers\Dell\Win10x64\Family\Win10_LatitudeE9_A09\LatitudeE9\WIN10\x64\Chipset\7X8Y6\Windows10-x64
tbt70i.inf    D:\Drivers\Dell\Win10x64\Family\Win10_LatitudeE9_A09\LatitudeE9\WIN10\x64\Chipset\J95RR
tbt70x.inf    D:\Drivers\Dell\Win10x64\Family\Win10_LatitudeE9_A09\LatitudeE9\WIN10\x64\Chipset\J95RR
tbt81x.inf    D:\Drivers\Dell\Win10x64\Family\Win10_LatitudeE9_A09\LatitudeE9\WIN10\x64\Chipset\J95RR
tbt81x.inf    D:\Drivers\Dell\Win10x64\Family\Win10_LatitudeE9Tablet_A08\LatitudeE9Tablet\Win10\x64\chipset\7X8Y6\Windows10-x64
tbt81x.inf    D:\Drivers\Dell\Win10x64\Family\Win10_LatitudeE9Tablet_A08\LatitudeE9Tablet\Win10\x64\docks\J95RR\Windows10-x64
tbt81x.inf    D:\Drivers\Dell\Win10x64\Family\Win10_PrecisionM3800_A00\PrecisionM3800\win10\x64\chipset\C0K58\Windows10-x64
tbt70i.inf    D:\Drivers\Dell\Win10x64\Family\Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Chipset\2VCC1
tbt70x.inf    D:\Drivers\Dell\Win10x64\Family\Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Chipset\2VCC1
tbt81x.inf    D:\Drivers\Dell\Win10x64\Family\Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Chipset\2VCC1
tbt70i.inf    D:\Drivers\Dell\Win10x64\Family\Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Chipset\7P7G7
tbt70x.inf    D:\Drivers\Dell\Win10x64\Family\Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Chipset\7P7G7
tbt81x.inf    D:\Drivers\Dell\Win10x64\Family\Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Chipset\7P7G7
tbt70i.inf    D:\Drivers\Dell\Win10x64\Family\Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Chipset\D91CC
tbt70x.inf    D:\Drivers\Dell\Win10x64\Family\Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Chipset\D91CC
tbt81x.inf    D:\Drivers\Dell\Win10x64\Family\Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Chipset\D91CC
tbt70i.inf    D:\Drivers\Dell\Win10x64\Family\Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Chipset\J95RR
tbt70x.inf    D:\Drivers\Dell\Win10x64\Family\Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Chipset\J95RR
tbt81x.inf    D:\Drivers\Dell\Win10x64\Family\Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Chipset\J95RR
tbt81x.inf    D:\Drivers\Dell\Win10x64\Family\Win10_PrecisionM7_A06\PrecisionM7\WIN10\x64\Chipset\J95RR\Windows10-x64
tbt81x.inf    D:\Drivers\Dell\Win10x64\Family\Win10_PrecisionWS6_A12\PrecisionWS6\WIN10\x64\Input\MYDH5\drivers
tbt70i.inf    D:\Drivers\Dell\Win10x64\Family\Win10_PrecisionWS8_A08\PrecisionWS8\WIN10\x64\Chipset\7X8Y6
tbt70x.inf    D:\Drivers\Dell\Win10x64\Family\Win10_PrecisionWS8_A08\PrecisionWS8\WIN10\x64\Chipset\7X8Y6
tbt81x.inf    D:\Drivers\Dell\Win10x64\Family\Win10_PrecisionWS8_A08\PrecisionWS8\WIN10\x64\Chipset\7X8Y6
tbt81x.inf    D:\Drivers\Dell\Win10x64\Model\Latitude 5480\Windows10-A04\5480\Win10\x64\chipset\J95RR_A00-00\Win10x64
tbt81x.inf    D:\Drivers\Dell\Win10x64\Model\Latitude 5580\Windows10-A04\5580\win10\x64\docks\7X8Y6_A00-00\Win10x64
tbt81x.inf    D:\Drivers\Dell\Win10x64\Model\Latitude 7275\Windows10-A08\7275\win10\x64\chipset\J95RR_A00-00\Windows10-x64
tbt81x.inf    D:\Drivers\Dell\Win10x64\Model\Latitude 7280\Windows10-A04\7280\win10\x64\chipset\J95RR_A00-00\Windows10-x64
tbt81x.inf    D:\Drivers\Dell\Win10x64\Model\Latitude 7285\Windows10-A01\7285\Win10\x64\docks\7GKGT_A00-00\Win10x64
tbt81x.inf    D:\Drivers\Dell\Win10x64\Model\Latitude 7370\Windows10-A10\7370\win10\x64\chipset\7X8Y6_A00-00\Windows10-x64
tbt81x.inf    D:\Drivers\Dell\Win10x64\Model\Latitude 7380\Windows10-A01\7380\win10\x64\chipset\7X8Y6_A00-00\Windows10-x64
tbt81x.inf    D:\Drivers\Dell\Win10x64\Model\Latitude 7480\Windows10-A04\7480\win10\x64\chipset\7X8Y6_A00-00\Windows10-x64
tbt81x.inf    D:\Drivers\Dell\Win10x64\Model\Latitude E5570\Windows10-A13\E5570\Win10\x64\chipset\J95RR_A00-00\Windows10-x64
tbt81x.inf    D:\Drivers\Dell\Win10x64\Model\Precision 3510\Windows10-A10\3510\Win10\x64\chipset\J95RR_A00-00\Production\Windows10-x64
tbt81x.inf    D:\Drivers\Dell\Win10x64\Model\Precision 3520\Windows10-A04\3520\win10\x64\docks\J95RR_A00-00\Win10x64
tbt81x.inf    D:\Drivers\Dell\Win10x64\Model\Precision 5510\Windows10-A11\5510\Win10\x64\docks\M6YD4_A00-00\Windows10-x64
tbt81x.inf    D:\Drivers\Dell\Win10x64\Model\Precision 5520\Windows10-A03\5520\win10\x64\chipset\7X8Y6_A00-00\Windows10-x64
tbt81x.inf    D:\Drivers\Dell\Win10x64\Model\Precision 5720 AIO\Windows10-A02\5720 AIO\win10\x64\chipset\2VCC1_A00-00
tbt81x.inf    D:\Drivers\Dell\Win10x64\Model\Precision 7520\Windows10-A03\7520\Win10\x64\chipset\7X8Y6_A00-00\Windows10-x64
tbt81x.inf    D:\Drivers\Dell\Win10x64\Model\Precision 7720\Windows10-A03\7720\Win10\x64\chipset\7X8Y6_A00-00\Win10x64
tbt81x.inf    D:\Drivers\Dell\Win10x64\Model\Precision M3800\Windows10-A01\M3800\win10\x64\chipset\91DT4_A00-00\Windows10-x64
tbt81x.inf    D:\Drivers\Dell\Win10x64\Model\Precision Mobile Workstation 7510\Windows10-A10\7510\win10\x64\chipset\J95RR_A00-00\drivers
tbt81x.inf    D:\Drivers\Dell\Win10x64\Model\Precision Mobile Workstation 7710\Windows10-A08\7710\win10\x64\chipset\J95RR_A00-00\Windows10-x64
tbt81x.inf    D:\Drivers\Dell\Win10x64\Model\Precision Precision 5820 Tower\Windows10-A00\Precision 5820 Tower\win10\x64\chipset\7X8Y6_A00-00\Production\Windows10-x64
tbt81x.inf    D:\Drivers\Dell\Win10x64\Model\Precision Precision 7820 Tower\Windows10-A00\Precision 7820 Tower\win10\x64\input\7X8Y6_A00-00\Windows10-x64
tbt81x.inf    D:\Drivers\Dell\Win10x64\Model\Precision Precision 7920 Tower\Windows10-A00\Precision 7920 Tower\win10\x64\input\7X8Y6_A00-00\Windows10-x64
tbt81x.inf    D:\Drivers\Dell\Win10x64\Model\Precision T1700\Windows10-A03\T1700\win10\x64\input\MYDH5_A00-00\Production\Windows10-x64
tbt81x.inf    D:\Drivers\Dell\Win10x64\Model\Precision T3620\Windows10-A09\T3620\win10\x64\chipset\99H03_A00-00
tbt81x.inf    D:\Drivers\Dell\Win10x64\Model\Precision Tower 3420\Windows10-A09\T3420\win10\x64\chipset\99H03_A00-00
tbt81x.inf    D:\Drivers\Dell\Win10x64\Model\Precision Tower 5810\Windows10-A04\T5810\win10\x64\input\99H03_A00-00\Windows10-x64
tbt81x.inf    D:\Drivers\Dell\Win10x64\Model\Precision Tower 7810\Windows10-A05\T7810\win10\x64\input\99H03_A00-00\Windows10-x64
tbt81x.inf    D:\Drivers\Dell\Win10x64\Model\Precision Tower 7910\Windows10-A05\T7910\win10\x64\input\99H03_A00-00\Windows10-x64
tbt70i.inf    D:\Drivers\Dell\Win10x86\Model\Precision T1700\Windows10-A03\T1700\win10\x86\input\MYDH5_A00-00\win10x86\drivers
tbt70i.inf    D:\Drivers\Dell\Win10x86\Model\Precision Tower 5810\Windows10-A04\T5810\win10\x86\input\MYDH5_A00-00\drivers
tbt70i.inf    D:\Drivers\Dell\Win10x86\Model\Precision Tower 7810\Windows10-A05\T7810\win10\x86\input\MYDH5_A00-00\drivers
tbt70i.inf    D:\Drivers\Dell\Win10x86\Model\Precision Tower 7910\Windows10-A05\T7910\win10\x86\input\MYDH5_A00-00\drivers
```

---

## 

## Recovered Drive Space

And result in quite a bit of space recovery

| Repository | Driver Size |
| :--- | :--- |
| Dell Family Win10 x86 | 0.00 GB |
| Dell Model Win10 x86 | 0.18 GB |
|  |  |
| Dell Family Win10 x64 | 1.11 GB |
| Dell Model Win10 x64 | 2.33 GB |
| **Removed Driver Footprint** | **3.63 GB** |

---

## Quick Summary

**A 100 MB Driver has replaced 3.63 GB of existing Drivers in the Repository**

---



