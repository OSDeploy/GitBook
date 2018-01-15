# Video - AMD

If you downloaded the Intel Video Drivers from Intel.com, you can remove the ones downloaded from the Vendor \(Dell\) to reduce the size of your Driver Repository.

| Driver Method | Removed Drivers |
| :--- | :--- |
| Dell Family Packs | 15.17 GB |
| Dell Model Packs | 23.07 GB |

---

## Removed Drivers

```
"85C66*",
"8CWJG*",
"96KH4*",
"F2GMG*",
"J8K2W*",
"JVV0Y*",
"KW1W7*",
"MHGY8*",
"RNXYX*",
"TXWV6*",
"XDVRC*",
"CYT1R*",
"9WNFM*",
"JPJH1*",
"Y234T*",
"5VR9K*",
"MJF64*",
"XDVRC*",
"T4WGT*",
"GKF44*",
"VH8GC*",
"DC3V0*",
"JYXT7*",
"0Y1NR*",
"4XDT8*",
"0N1C9*",
"KR4R3*",
"597GN*",
"5NN5H*",
"NRCRR*",
"C5FCH*",
"3NFDY*",
"WJPR8*",
"FCXTJ*",
"2HDKP*",
"KWRDJ*",
"3MVGD*",
"0TKMD*",
"6KFJV*",
"8CF2V*",
"8CF8G*",
"G5JNR*",
"HK8X7*",
"V98D9*",
"VC9R7*",
"YXNKR*",
"C5FPW*",
"4TMX8*",
"312W4*",
"X8HT1*"
```

---

## PowerShell Driver Removal Script

The following PowerShell Script can be used to remove existing Drivers.  Modify the **$Repository** as needed.

```
#Requires -RunAsAdministrator
#Modify the $Repository as needed

$Repository = "D:\Drivers\Dell"

$Drivers = "85C66*",
"8CWJG*",
"96KH4*",
"F2GMG*",
"J8K2W*",
"JVV0Y*",
"KW1W7*",
"MHGY8*",
"RNXYX*",
"TXWV6*",
"XDVRC*",
"CYT1R*",
"9WNFM*",
"JPJH1*",
"Y234T*",
"5VR9K*",
"MJF64*",
"XDVRC*",
"T4WGT*",
"GKF44*",
"VH8GC*",
"DC3V0*",
"JYXT7*",
"0Y1NR*",
"4XDT8*",
"0N1C9*",
"KR4R3*",
"597GN*",
"5NN5H*",
"NRCRR*",
"C5FCH*",
"3NFDY*",
"WJPR8*",
"FCXTJ*",
"2HDKP*",
"KWRDJ*",
"3MVGD*",
"0TKMD*",
"6KFJV*",
"8CF2V*",
"8CF8G*",
"G5JNR*",
"HK8X7*",
"V98D9*",
"VC9R7*",
"YXNKR*",
"C5FPW*",
"4TMX8*",
"312W4*",
"X8HT1*"

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