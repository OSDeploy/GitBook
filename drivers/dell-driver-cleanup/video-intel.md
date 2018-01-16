# Video - Intel

If Thunderbolt was the easiest, Intel Video is the largest.  Since the INF for Intel Video can have different names, a search for igfxcpl.cpl in our Repository should help find all the Intel Video Drivers

```
Identifier: igfxcpl.cpl
```

---

## Hardware ID's

There are several generations of Intel Video Cards for Windows 10

```
[15.60] Intel UHD Graphics - 8th Generation (Coffee Lake)
PCI\VEN_8086&DEV_3E90 = Intel UHD Graphics 610
PCI\VEN_8086&DEV_3E91 = Intel UHD Graphics 630
PCI\VEN_8086&DEV_3E92 = Intel UHD Graphics 630
PCI\VEN_8086&DEV_3E93 = Intel UHD Graphics 610

[15.60] Intel HD Graphics - 7th Generation (Kaby Lake)
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

[15.60] Intel HD Graphics - 6th Gen (Skylake)
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

[15.40] Intel HD Graphics - 5th Generation (Broadwell)
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

[15.40] Intel HD Graphics - 4th Generation (Haswell)
PCI\VEN_8086&DEV_0402 Intel HD Graphics
PCI\VEN_8086&DEV_0406 Intel HD Graphics
PCI\VEN_8086&DEV_040A Intel HD Graphics
PCI\VEN_8086&DEV_0412 Intel HD Graphics 4600
PCI\VEN_8086&DEV_0416 Intel HD Graphics 4600
PCI\VEN_8086&DEV_041A Intel HD Graphics P4600/P4700
PCI\VEN_8086&DEV_041E Intel HD Graphics 4400
PCI\VEN_8086&DEV_0A06 Intel HD Graphics
PCI\VEN_8086&DEV_0A0E Intel HD Graphics
PCI\VEN_8086&DEV_0A16 Intel HD Graphics Family
PCI\VEN_8086&DEV_0A1E Intel HD Graphics Family
PCI\VEN_8086&DEV_0A26 Intel HD Graphics 5000
PCI\VEN_8086&DEV_0A2E Intel Iris Graphics 5100
PCI\VEN_8086&DEV_0D22 Intel Iris Pro Graphics 5200
PCI\VEN_8086&DEV_0D26 Intel Iris Pro Graphics 5200

[15.33] Intel HD Graphics - 3rd Generation (Valleyview)
PCI\VEN_8086&DEV_0152 = Intel HD Graphics
PCI\VEN_8086&DEV_0156 = Intel HD Graphics
PCI\VEN_8086&DEV_015A = Intel HD Graphics
PCI\VEN_8086&DEV_0162 = Intel HD Graphics 4000
PCI\VEN_8086&DEV_0166 = Intel HD Graphics 4000
PCI\VEN_8086&DEV_016A = Intel HD Graphics
PCI\VEN_8086&DEV_0F31 = Intel HD Graphics
```

---

## Latest Drivers

Fortunately we only need 3 Drivers to support Windows 10

---

## PowerShell Driver Removal Script

The following PowerShell Script can be used to remove existing Drivers.  Modify the **$Repository** as needed.

```
#Requires -RunAsAdministrator

$Repository = "D:\Drivers\Dell"

$Drivers = "0JPDH*",        #Intel Wireless Display REMOVED 0JPDH
"16R05*",        #Intel Wireless Display REMOVED 16R05
"KG8N5*",        #Intel Wireless Display REMOVED KG8N5
"F1FMC*",        #Intel BYT-CR A00 F1FMC 10.18.10.4252
"8F4CH*",        #Intel HD A03 8F4CH 20.19.15.4320
"M0MM8*",        #Intel HD A02 M0MM8 21.20.16.4526
"NJ9F4*",        #Intel HD A01 NJ9F4 21.20.16.4542
"96JC4*",        #Intel HD A03 96JC4 21.20.16.4574
"VD50P*",        #Intel HD A09 VD50P 21.20.16.4627
"5M3W3*",        #Intel HD A02 5M3W3 21.20.16.4664
"9FFYR*",        #Intel HD A04 9FFYR 21.20.16.4664
"M56HN*",        #Intel HD A10 M56HN 21.20.16.4664
"TDP4X*",        #Intel HD 500 P500 A11 TDP4X 21.20.16.4627
"C2N7T*",        #Intel HD 500 P500 600 P600 A02 C2N7T 21.20.16.4627
"K80JK*",        #Intel HD 500 P500 600 P600 A03 K80JK 21.20.16.4627
"HC82C*",        #Intel HD 500 P500 600 P600 A02 HC82C 21.20.16.4664
"9X1XX*",        #Intel HD 510 530 630 A03 9X1XX 21.20.16.4627
"8K9N3*",        #Intel HD 515 520 530 615 620 630 P530 P630 Iris 540 640 A00 8K9N3 21.20.16.4574
"868JH*",        #Intel HD 2000 2500 3000 4000 Graphics Driver (except Latitude XT3 tablet) A14 868JH 9.17.10.3040
"JRHH9*",        #Intel HD 4000 A02 JRHH9 10.18.10.4276
"MDX68*",        #Intel HD 4000 A02 MDX68 10.18.10.4276
"DCG08*",        #Intel HD 4000 A18 DCG08 10.18.10.4425
"422H7*",        #Intel HD 4000 5000 6000 Iris 500 A06 422H7 21.20.16.4590
"FGGYJ*",        #Intel HD 4000 4200 4400 4600 5000 5100 5200 5300 5500 A17 FGGYJ 10.18.14.4280
"7W9YT*",        #Intel HD 4200 4400 4600 5000 5100 5200 5300 5500 A00 7W9YT 10.18.15.4240
"V387Y*",        #Intel HD 4200 4400 4600 5000 5100 5200 5300 5500 A01 V387Y 10.18.15.4248
"5F9MK*",        #Intel HD 4200 4400 4600 5000 5100 5200 5300 5500 A00 5F9MK 10.18.15.4279
"0WCWN*",        #Intel HD 4200 4400 4600 5000 5100 5200 5300 5500 A02 0WCWN 10.18.15.4281
"Y9JM5*",        #Intel HD 4200 4400 4600 5000 5100 5200 5300 5500 A02 Y9JM5 10.18.15.4281
"1C5FX*",        #Intel HD 4200 4400 4600 5000 5100 5200 5300 5500 A03 1C5FX 20.19.15.4454
"TH44Y*",        #Intel HD 4200 4400 4600 5000 5100 5200 5300 5500 A04 TH44Y 20.19.15.4454
"CVWNX*",        #Intel HD 4200 4400 4600 5000 5100 5200 5300 5500 A03 CVWNX 20.19.15.4483
"YNWYT*",        #Intel HD 4200 4400 4600 5000 5100 5200 5300 5500 A05 YNWYT 20.19.15.4531
"N8YN8*",        #Intel HD 4200 4400 4600 5000 5100 5200 5300 5500 6000 515 520 530 P530 Iris 540 A03 N8YN8 20.19.15.4454
"MKHKR*",        #Intel HD 4200 4400 4600 5000 5100 5200 5300 5500 6000 515 520 530 P530 Iris 540 A04 MKHKR 20.19.15.4483
"G7Y13*",        #Intel HD 4200 4400 4600 5000 5100 5200 5300 5500 6000 515 520 530 P530 Iris 540 A05 G7Y13 20.19.15.4531
"YXJG1*",        #Intel HD 4200 4400 4600 5000 5100 5200 5300 5500 6000 515 520 530 P530 Iris 540 A05 YXJG1 20.19.15.4531
"XPJ04*",        #Intel HD 4200 5300 5500 6000 515 520 530 P530 Iris 540 A04 XPJ04 20.19.15.4531
"7C6X2*",        #Intel HD 4600 A00 7C6X2 10.18.15.4248
"F0MKC*",        #Intel HD 4600 F0MKC A00 10.18.15.4278
"87C62*",        #Intel HD 5000 6000 500 A05 87C62 21.20.16.4664
"FRD5G*",        #Intel HD 5000 6000 500 A06 FRD5G 21.20.16.4678
"0RC06*",        #Intel HD 5300 5500 6000 515 520 530 P530 Iris 540 A01 0RC06 20.19.15.4390
"PRX5T*",        #Intel HD 5300 5500 6000 515 520 530 P530 Iris 540 A03 PRX5T 21.20.16.4627
"76MNH*",        #Intel HD 5300 5500 6000 515 520 530 P530 Iris 540 A00 76MNH 22.20.16.4691
"kit60887*",    #Intel Atom Z3000 Series Chipset A00 36NNM 603.9600.2067.27988
"kit60888*",    #Intel Atom Z3000 Series Chipset A00 8W9WP 603.9600.1948.34944
#"HTMRY*",        #Intel Chipset A02 HTMRY 604.10146.2708.64268
"k114586*"        #Intel Chipset A03 P4R5C 604.10146.2708.64268

Write-Host "***** Calculating Size of $Repository *****"
$SizeStart = "{0:N2} GB" -f ((Get-ChildItem $Repository -Recurse | Measure-Object -Property Length -Sum -ErrorAction Stop).Sum / 1GB)
Write-Host "***** Removing Intel Video Drivers from $Repository *****"
ForEach ($Driver in $Drivers) {
Write-Host "***** Removing Directories Named $Driver *****"
Remove-Item -Path $Repository -Include $Driver -Recurse
}

Write-Host "Manually delete HTMRY\Drivers\Graphics"

Write-Host "***** Calculating Size of $Repository *****"
$SizeFinish = "{0:N2} GB" -f ((Get-ChildItem $Repository -Recurse | Measure-Object -Property Length -Sum -ErrorAction Stop).Sum / 1GB)

Write-Host "Start Repository Size:  " $SizeStart
Write-Host "Finish Repository Size: " $SizeFinish
```

---

## Recovered Drive Space

And result in quite a bit of space recovery

| Repository | Driver Size |
| :--- | :--- |
| Dell Family Win10 x86 | 0.16 GB |
| Dell Model Win10 x86 | 3.73 GB |
|  |  |
| Dell Family Win10 x64 | 28.08 GB |
| Dell Model Win10 x64 | 67.21 GB |
| **Removed Driver Footprint** | **99.18 GB** |

---

## Quick Summary

**Adding 3 Intel Video Drivers of 613 MB will recover almost 100GB of existing Drivers in the Repository**

