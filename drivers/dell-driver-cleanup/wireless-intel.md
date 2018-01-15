# Wireless - Intel

If you downloaded the Intel Video Drivers from Intel.com, you can remove the ones downloaded from the Vendor \(Dell\) to reduce the size of your Driver Repository.

| Driver Method | Driver Size |
| :--- | :--- |
| Dell Family Packs | 3.11 GB |
| Dell Model Packs | 8.36 GB |

---

## Removed Drivers

```
"FDKT7*",    #Intel WiFi 6205 6250 6300 A01 FDKT7 14.00.20110
"PTWWG*",    #Intel WiFi 6235 A00 PTWWG 15.6.0
"3VP35*",    #Intel WiFi 6235 A00 3VP35 15.6.0
"4FW6K*",    #Intel WiFi 6235 6300 6250 6205 6200 A03 4FW6K 15.10.0.10
"8G7PV*",    #Intel WiFi 6300 A00 8G7PV 15.6.1
"4VK20*",    #Intel WiFi 7260 A04 4VK20
"Y37J5*",    #Intel WiFi 7260 A08 Y37J5
"HD7F4*",    #Intel WiFi 7260 A08 HD7F4 17.0.5.8
"TJ7FX*",    #Intel WiFi 7260 A00 TJ7FX 18.12.0.3
"MHJ5D*",    #Intel WiFi 7260 A19 MHJ5D
"YH1F1*",    #Intel WiFi 7260 3160 A00 YH1F1
"17JWD*",    #Intel WiFi 7265 3165 A05 17JWD
"PR9FN*",    #Intel WiFi 7265 3165 7260 A13 PR9FN 18.11.1.2
"5784M*",    #Intel WiFi 7265 7260 3160 A10 5784M
"VPP0T*",    #Intel WiFi 7265 7260 3160 A11 VPP0T
"CN64P*",    #Intel WiFi 8260 A03 CN64P
"7Y86J*",    #Intel WiFi 8260 7265 7260 3165 A05 7Y86J
"54KPC*",    #Intel WiFi 8260 7265 7260 3165 A17 54KPC
"HK6GP*",    #Intel WiFi 8260 7265 3165 7260 3160 A03 HK6GP
"MVH6C*",    #Intel WiFi 8260 7265 7260 3165 3160 A06 MVH6C
"YN4DG*",    #Intel WiFi 8260 7265 3165 7260 3160 A02 YN4DG 19.1.0.3
"6HT23*",    #Intel WiFi 8265 A03 6HT23
"71XN1*",    #Intel WiFi 8265 A07 71XN1
"6NY21*",    #Intel WiFi 17265 7265 3165 A00 6NY21
"3NWJ4*",    #Intel WiFi 17265 7265 3165 A22 3NWJ4
"2HW9T*",    #Intel WiFi 17265 7265 3165 7260 3160 A11 2HW9T 17.15.0.5
"005JW*",    #Intel WiFi 18260 8260 A22 005JW
"5TR5K*",    #Intel WiFi 18260 17265 8260 7265 3165 A19 5TR5K
"PX32H*",    #Intel WiFi 18260 17265 8260 7265 3165 A19 PX32H 18.40.0.9
"D0F37*",    #Intel WiFi 18260 17265 8260 7265 3165 A20 D0F37
"P13M5*",    #Intel WiFi 18260 17265 8260 7265 3165 A20 P13M5 19.1.0.4
"G1DMT*",    #Intel WiFi 18260 17265 8260 7265 3165 A21 G1DMT
"MRT4R*",    #Intel WiFi 18265 8265 A05 MRT4R
"026FT*",    #Intel WiFi 18265 8265 7265 3165 A02 026FT
"KC34F*",    #Intel WiFi 18265 8265 7265 3165 A03 KC34F
"FXNFM*",    #Intel WiFi 18265 8265 7265 3165 A04 FXNFM
"47Y24*",    #Intel WiFi 18265 8265 8260 7265 3165 A01 47Y24 19.20.1.3
"7KY5F*",    #Intel WiFi 7KY5F DEPRICATED
"NN49G*"    #Intel WiFi NN49G DEPRICATED
```

---

## PowerShell Driver Removal Script

The following PowerShell Script can be used to remove existing Drivers.  Modify the **$Repository** as needed.

```
#Requires -RunAsAdministrator
#Modify the $Repository as needed

$Repository = "D:\Drivers\Dell"

$Drivers = "FDKT7*",    #Intel WiFi 6205 6250 6300 A01 FDKT7 14.00.20110
"PTWWG*",    #Intel WiFi 6235 A00 PTWWG 15.6.0
"3VP35*",    #Intel WiFi 6235 A00 3VP35 15.6.0
"4FW6K*",    #Intel WiFi 6235 6300 6250 6205 6200 A03 4FW6K 15.10.0.10
"8G7PV*",    #Intel WiFi 6300 A00 8G7PV 15.6.1
"4VK20*",    #Intel WiFi 7260 A04 4VK20
"Y37J5*",    #Intel WiFi 7260 A08 Y37J5
"HD7F4*",    #Intel WiFi 7260 A08 HD7F4 17.0.5.8
"TJ7FX*",    #Intel WiFi 7260 A00 TJ7FX 18.12.0.3
"MHJ5D*",    #Intel WiFi 7260 A19 MHJ5D
"YH1F1*",    #Intel WiFi 7260 3160 A00 YH1F1
"17JWD*",    #Intel WiFi 7265 3165 A05 17JWD
"PR9FN*",    #Intel WiFi 7265 3165 7260 A13 PR9FN 18.11.1.2
"5784M*",    #Intel WiFi 7265 7260 3160 A10 5784M
"VPP0T*",    #Intel WiFi 7265 7260 3160 A11 VPP0T
"CN64P*",    #Intel WiFi 8260 A03 CN64P
"7Y86J*",    #Intel WiFi 8260 7265 7260 3165 A05 7Y86J
"54KPC*",    #Intel WiFi 8260 7265 7260 3165 A17 54KPC
"HK6GP*",    #Intel WiFi 8260 7265 3165 7260 3160 A03 HK6GP
"MVH6C*",    #Intel WiFi 8260 7265 7260 3165 3160 A06 MVH6C
"YN4DG*",    #Intel WiFi 8260 7265 3165 7260 3160 A02 YN4DG 19.1.0.3
"6HT23*",    #Intel WiFi 8265 A03 6HT23
"71XN1*",    #Intel WiFi 8265 A07 71XN1
"6NY21*",    #Intel WiFi 17265 7265 3165 A00 6NY21
"3NWJ4*",    #Intel WiFi 17265 7265 3165 A22 3NWJ4
"2HW9T*",    #Intel WiFi 17265 7265 3165 7260 3160 A11 2HW9T 17.15.0.5
"005JW*",    #Intel WiFi 18260 8260 A22 005JW
"5TR5K*",    #Intel WiFi 18260 17265 8260 7265 3165 A19 5TR5K
"PX32H*",    #Intel WiFi 18260 17265 8260 7265 3165 A19 PX32H 18.40.0.9
"D0F37*",    #Intel WiFi 18260 17265 8260 7265 3165 A20 D0F37
"P13M5*",    #Intel WiFi 18260 17265 8260 7265 3165 A20 P13M5 19.1.0.4
"G1DMT*",    #Intel WiFi 18260 17265 8260 7265 3165 A21 G1DMT
"MRT4R*",    #Intel WiFi 18265 8265 A05 MRT4R
"026FT*",    #Intel WiFi 18265 8265 7265 3165 A02 026FT
"KC34F*",    #Intel WiFi 18265 8265 7265 3165 A03 KC34F
"FXNFM*",    #Intel WiFi 18265 8265 7265 3165 A04 FXNFM
"47Y24*",    #Intel WiFi 18265 8265 8260 7265 3165 A01 47Y24 19.20.1.3
"7KY5F*",    #Intel WiFi 7KY5F DEPRICATED
"NN49G*"    #Intel WiFi NN49G DEPRICATED

Write-Host "***** Calculating Size of $Repository *****"
$SizeStart = "{0:N2} GB" -f ((Get-ChildItem $Repository -Recurse | Measure-Object -Property Length -Sum -ErrorAction Stop).Sum / 1GB)
Write-Host "***** Removing Drivers from $Repository *****"
ForEach ($Driver in $Drivers) {
Write-Host "***** Removing Directories Named $Driver *****"
Remove-Item -Path $Repository -Include $Driver -Recurse
}

Write-Host "***** Calculating Size of $Repository *****"
$SizeFinish = "{0:N2} GB" -f ((Get-ChildItem $Repository -Recurse | Measure-Object -Property Length -Sum -ErrorAction Stop).Sum / 1GB)

Write-Host "Start Repository Size: " $SizeStart
Write-Host "Finish Repository Size: " $SizeFinish
```

---

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

Modified: {{ file.mtime }}