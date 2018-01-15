# Bluetooth

## Removed Drivers

```
"3CKVY*",    #Intel 8265 8260 7265 7260 3165 18265 18260 17265 Bluetooth A14 3CKVY
"6CC6W*",    #Intel 8260 7265 3165 7260 Bluetooth A04 6CC6W
"773NP*",    #Intel 8265 8260 7265 7260 3165 18265 18260 17265 Bluetooth A12 773NP
"7JR0Y*",    #Intel 8265 8260 18265 18260 Bluetooth A15 7JR0Y
"85C7G*",    #Intel 8260 7265 3165 7260 3160 Bluetooth A02 85C7G
"D4WRW*",    #Intel 8265 8260 7265 3165 Bluetooth A17 D4WRW
"DXHC8*",    #Intel 18260 17265 8260 7265 7260 3165 Bluetooth A12 DXHC8
"GNMWW*",    #Intel 8260 7265 3165 7260 3160 Bluetooth A04 GNMWW
"JD2W0*",    #Intel 8265 Bluetooth A05 JD2W0
"HY3GF*",    #Intel Dual Band WiFi AC7260 Bluetooth Application A00 HY3GF
"N7VN8*",    #Intel 8260 7265 3165 7260 Bluetooth A11 N7VN8
"VHM3T*",    #Intel 7260 3160 Bluetooth Application A00 VHM3T
"YC1X4*",    #Intel 7265 3165 Bluetooth Application A00 YC1X4
"YYD6F*"    #Intel 8260 Bluetooth Application A01 YYD6F
```

---

## PowerShell Driver Removal Script

The following PowerShell Script can be used to remove existing Drivers.  Modify the **$Repository** as needed.

```
#Requires -RunAsAdministrator
#Modify the $Repository as needed

$Repository = "D:\Drivers\Dell"

$Drivers = "3CKVY*",    #Intel 8265 8260 7265 7260 3165 18265 18260 17265 Bluetooth A14 3CKVY
"6CC6W*",    #Intel 8260 7265 3165 7260 Bluetooth A04 6CC6W
"773NP*",    #Intel 8265 8260 7265 7260 3165 18265 18260 17265 Bluetooth A12 773NP
"7JR0Y*",    #Intel 8265 8260 18265 18260 Bluetooth A15 7JR0Y
"85C7G*",    #Intel 8260 7265 3165 7260 3160 Bluetooth A02 85C7G
"D4WRW*",    #Intel 8265 8260 7265 3165 Bluetooth A17 D4WRW
"DXHC8*",    #Intel 18260 17265 8260 7265 7260 3165 Bluetooth A12 DXHC8
"GNMWW*",    #Intel 8260 7265 3165 7260 3160 Bluetooth A04 GNMWW
"JD2W0*",    #Intel 8265 Bluetooth A05 JD2W0
"HY3GF*",    #Intel Dual Band WiFi AC7260 Bluetooth Application A00 HY3GF
"N7VN8*",    #Intel 8260 7265 3165 7260 Bluetooth A11 N7VN8
"VHM3T*",    #Intel 7260 3160 Bluetooth Application A00 VHM3T
"YC1X4*",    #Intel 7265 3165 Bluetooth Application A00 YC1X4
"YYD6F*"    #Intel 8260 Bluetooth Application A01 YYD6F

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