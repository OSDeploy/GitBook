# Audio

When you take a look at most of the Audio Drivers used for Dell systems, most of them are Realtek.

---

## Removed Drivers

```
"11NJJ*",    #Realtek High-Definition Audio A06 6.0.1.6114
"3PPR8*",    #Realtek High-Definition Audio A06 6.0.1.8169
"3TFC6*",    #Realtek High-Definition Audio 6.0.1.8199
"68WY3*",    #Realtek High-Definition Audio A05 6.0.1.8166
"7M5VV*",    #Realtek High-Definition Audio A06 6.0.1.8105
"822R6*",    #Realtek High-Definition Audio A01 6.0.1.6086
"CC2F0*",    #Realtek High-Definition Audio A00 6.0.1.7982
"CMW4W*",    #Realtek High-Definition Audio A04 6.0.1.8059
"GFD76*",    #Realtek High-Definition Audio 6.0.1.8037
"HN35D*",    #Realtek High-Definition Audio A00 6.0.1.8199
"NN7PN*",    #Realtek High-Definition Audio A05 6.0.1.8059
"P71YY*",    #Realtek High-Definition Audio A07 6.0.1.8142
"331N1*",    #Realtek High Definition Audio A08 6.0.1.6122 and USB
"5P33P*",    #Realtek High-Definition Audio A00 6.0.1.6070 and USB
"D00J4*",    #Realtek High-Definition Audio A03 6.0.1.6102 and USB
"DDG39*",    #Realtek High-Definition Audio A06 6.0.1.6111 and USB
"RT1XX*",    #Realtek High-Definition Audio A07 6.0.1.6117 and USB
"TJJNF*",    #Realtek High-Definition Audio A05 6.0.1.6107 and USB
"47P33*",    #Realtek High-Definition Audio A03 6.0.1.7399 #Model CAB
"VR8Y0*",    #Realtek High-Definition Audio A03 6.0.1.7908
"DFR6K*",    #ALC32xx Series HD Audio Codec A12 6.0.1.6098
"6N60W*",    #Realtek ALC3246 Audio A00 6.0.1.8004
"DXFF2*",    #Realtek ALC3246 Audio A00 6.0.1.8004
"33HNF*",    #Realtek ALC3266 High Definition Audio A07 6.0.1.8142
"4PWN6*",    #Realtek ALC3661 Audio Codec A00 6.0.1.7525
"0PP6T*",    #Realtek USB Audio for Dell Wireless Dock Thunderbolt Dock and Dock A02 6.3.9600.44
"1HNN3*",    #Conexant Audio CX20772 Win10 x64 A00 1HNN3 1.0.59.0
"7MY7Y*",    #Realtek I2S Audio Codec Win10 x64 A02 7MY7Y 6.4.10041.132
"8PPWX*",    #Realtek I2S Audio Codec A04 8PPWX 6.3.9600.116
"33DRK*",    #Realtek High Definition Audio with Intel Smart Sound Technology
"44M2C*",    #Realtek ALC3266 Audio A06 44M2C 6.0.1.8105
"55XDF*",    #Realtek I2S Audio Codec A02 6.3.9600.102
"94YDD*",    #Realtek High-Definition Audio A07 6.0.1.6117
"FH33R*",    #Realtek High Definition Audio FH33R A08 6.0.1.8216
"HMMJJ*",    #Conexant Audio CX20772 Win10 x64 A01 HMMJJ 1.0.66.0
"FJ3VM*",    #Conexant Audio CX20772 Win10 x64 A00 FJ3VM 1.0.65.0
"FPWDX*",    #Realtek High Definition Audio A07 FPWDX 6.0.1.8166
"D7VCY*",    #Realtek High Definition Audio Win10 x64 A08 D7VCY 6.0.1.8224
"FVHVT*",    #Realtek ALC5672 High-Definition Audio A01 FVHVT 10.0.10586.4371
"VV374*",    #Realtek High Definition Audio Win10 x64 A00 VV374 6.0.1.8184
"WR3MX*"    #Conexant Audio CX20772 Win10 x64 A00 WR3MX 1.0.59.0
```

---

## PowerShell Driver Removal Script

The following PowerShell Script can be used to remove existing Drivers.  Modify the **$Repository** as needed.

```
#Requires -RunAsAdministrator
#Modify the $Repository as needed

$Repository = "D:\Drivers\Dell"

$Drivers = "11NJJ*",    #Realtek High-Definition Audio A06 6.0.1.6114
"3PPR8*",    #Realtek High-Definition Audio A06 6.0.1.8169
"3TFC6*",    #Realtek High-Definition Audio 6.0.1.8199
"68WY3*",    #Realtek High-Definition Audio A05 6.0.1.8166
"7M5VV*",    #Realtek High-Definition Audio A06 6.0.1.8105
"822R6*",    #Realtek High-Definition Audio A01 6.0.1.6086
"CC2F0*",    #Realtek High-Definition Audio A00 6.0.1.7982
"CMW4W*",    #Realtek High-Definition Audio A04 6.0.1.8059
"GFD76*",    #Realtek High-Definition Audio 6.0.1.8037
"HN35D*",    #Realtek High-Definition Audio A00 6.0.1.8199
"NN7PN*",    #Realtek High-Definition Audio A05 6.0.1.8059
"P71YY*",    #Realtek High-Definition Audio A07 6.0.1.8142
"331N1*",    #Realtek High Definition Audio A08 6.0.1.6122 and USB
"5P33P*",    #Realtek High-Definition Audio A00 6.0.1.6070 and USB
"D00J4*",    #Realtek High-Definition Audio A03 6.0.1.6102 and USB
"DDG39*",    #Realtek High-Definition Audio A06 6.0.1.6111 and USB
"RT1XX*",    #Realtek High-Definition Audio A07 6.0.1.6117 and USB
"TJJNF*",    #Realtek High-Definition Audio A05 6.0.1.6107 and USB
"47P33*",    #Realtek High-Definition Audio A03 6.0.1.7399 #Model CAB
"VR8Y0*",    #Realtek High-Definition Audio A03 6.0.1.7908
"DFR6K*",    #ALC32xx Series HD Audio Codec A12 6.0.1.6098
"6N60W*",    #Realtek ALC3246 Audio A00 6.0.1.8004
"DXFF2*",    #Realtek ALC3246 Audio A00 6.0.1.8004
"33HNF*",    #Realtek ALC3266 High Definition Audio A07 6.0.1.8142
"4PWN6*",    #Realtek ALC3661 Audio Codec A00 6.0.1.7525
"0PP6T*",    #Realtek USB Audio for Dell Wireless Dock Thunderbolt Dock and Dock A02 6.3.9600.44
"1HNN3*",    #Conexant Audio CX20772 Win10 x64 A00 1HNN3 1.0.59.0
"7MY7Y*",    #Realtek I2S Audio Codec Win10 x64 A02 7MY7Y 6.4.10041.132
"8PPWX*",    #Realtek I2S Audio Codec A04 8PPWX 6.3.9600.116
"33DRK*",    #Realtek High Definition Audio with Intel Smart Sound Technology
"44M2C*",    #Realtek ALC3266 Audio A06 44M2C 6.0.1.8105
"55XDF*",    #Realtek I2S Audio Codec A02 6.3.9600.102
"94YDD*",    #Realtek High-Definition Audio A07 6.0.1.6117
"FH33R*",    #Realtek High Definition Audio FH33R A08 6.0.1.8216
"HMMJJ*",    #Conexant Audio CX20772 Win10 x64 A01 HMMJJ 1.0.66.0
"FJ3VM*",    #Conexant Audio CX20772 Win10 x64 A00 FJ3VM 1.0.65.0
"FPWDX*",    #Realtek High Definition Audio A07 FPWDX 6.0.1.8166
"D7VCY*",    #Realtek High Definition Audio Win10 x64 A08 D7VCY 6.0.1.8224
"FVHVT*",    #Realtek ALC5672 High-Definition Audio A01 FVHVT 10.0.10586.4371
"VV374*",    #Realtek High Definition Audio Win10 x64 A00 VV374 6.0.1.8184
"WR3MX*"    #Conexant Audio CX20772 Win10 x64 A00 WR3MX 1.0.59.0

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