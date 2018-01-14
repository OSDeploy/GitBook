# Network - Intel

If you downloaded the Intel Video Drivers from Intel.com, you can remove the ones downloaded from the Vendor \(Dell\) to reduce the size of your Driver Repository.

| Driver Method | Driver Size |
| :--- | :--- |
| Dell Family Packs | 0.22 GB |
| Dell Model Packs | 0.41 GB |

---

## Removed Drivers

```
"0J8HP*",    #Intel I2xx 825xx Gigabit Ethernet Network Controllers A00 0J8HP
"1C3C2*",    #Intel 10 Gigabit X540 Adapters A00 1C3C2
"2WRW9*",    #Intel Device Manager Diagnostics (DMIX) Utility A00 2WRW9
"3PT51*",    #Intel NIC Family Version 18.0.0s for Windows 64-bit Operating Systems A00 3PT51
"4VV8G*",    #Intel Device Manager Diagnostics Utility (DMIX) A03 4VV8G
"8MVGV*",    #Intel 10 Gigabit X540 Adapter A00 8MVGV
"CY5NJ*",    #Intel I2xx 825xx Gigabit Ethernet Network Controllers CY5NJ A01
"D8VDT*",    #Intel I2xx 825xx Gigabit Ethernet Network Controller A03 D8VDT
"MXH3C*",    #Intel I2xx 825xx 101001000 Ethernet Network A09 MXH3C
"N6RY0*",    #Intel I2xx 825xx 101001000 Ethernet Network A00 N6RY0
"T3X0K*",    #Intel 10 Gigabit X5x0 Adapter A00 T3X0K
"WJ8PK*",    #Intel I2xx 825xx Gigabit Ethernet Network Controller A00 WJ8PK
"NNGMH*",    #Intel 825xx 10/100/1000 Ethernet Controller Driver A08 NNGMH 18.1.0.0
"615P2*",
"FDP8R*"
```

---

## PowerShell Driver Removal Script

The following PowerShell Script can be used to remove existing Drivers.  Modify the **$Repository** as needed.

```
#Requires -RunAsAdministrator
#Modify the $Repository as needed

$Repository = "D:\Drivers\Dell"

$Drivers = "0J8HP*", #Intel I2xx 825xx Gigabit Ethernet Network Controllers A00 0J8HP
"1C3C2*", #Intel 10 Gigabit X540 Adapters A00 1C3C2
"2WRW9*", #Intel Device Manager Diagnostics (DMIX) Utility A00 2WRW9
"3PT51*", #Intel NIC Family Version 18.0.0s for Windows 64-bit Operating Systems A00 3PT51
"4VV8G*", #Intel Device Manager Diagnostics Utility (DMIX) A03 4VV8G
"8MVGV*", #Intel 10 Gigabit X540 Adapter A00 8MVGV
"CY5NJ*", #Intel I2xx 825xx Gigabit Ethernet Network Controllers CY5NJ A01
"D8VDT*", #Intel I2xx 825xx Gigabit Ethernet Network Controller A03 D8VDT
"MXH3C*", #Intel I2xx 825xx 101001000 Ethernet Network A09 MXH3C
"N6RY0*", #Intel I2xx 825xx 101001000 Ethernet Network A00 N6RY0
"T3X0K*", #Intel 10 Gigabit X5x0 Adapter A00 T3X0K
"WJ8PK*", #Intel I2xx 825xx Gigabit Ethernet Network Controller A00 WJ8PK
"NNGMH*", #Intel 825xx 10/100/1000 Ethernet Controller Driver A08 NNGMH 18.1.0.0
"615P2*",
"FDP8R*"

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

