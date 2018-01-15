# Touchpad

## Removed Drivers

```
"WWVKD*",    #Dell Touchpad Synaptics A04 WWVKD 19.0.27.3
"TF7CN*",    #Dell Touchpad Synaptics A00 TF7CN 19.0.9.4
"D2M6V*",    #Dell Touchpad Synaptics A01 D2M6V 19.0.15.2
"1DMP8*",    #Dell Touchpad Alps A01 1DMP8 10.2207.101.209
"9HG8R*",    #Dell Touchpad A00 9HG8R 10.2207.101.108
"HND27*",    #Dell Touchpad A02 HND27 10.2207.101.118
"JFFD2*",    #Dell Multi-Touch Touchpad A03 JFFD2 10.1207.101.110
"M5MK2*",    #Dell Multi-Touch Touchpad A00 M5MK2 10.1207.101.103
"NVCF6*",    #Dell Touchpad A03 NVCF6 10.2207.101.119
"T48PJ*",    #Dell Touchpad A00 T48PJ 10.2207.101.108
"VRPMP*",    #Dell Multi-Touch Touchpad A00 VRPMP 10.1207.101.102
"Y5Y8F*",    #Dell Multi-Touch Touchpad A06 Y5Y8F 10.1207.101.113
"YXX3D*"    #Dell Multi-Touch Touchpad A03 YXX3D 10.1207.101.109
```

---

## PowerShell Driver Removal Script

The following PowerShell Script can be used to remove existing Drivers.  Modify the **$Repository** as needed.

```
#Requires -RunAsAdministrator
#Modify the $Repository as needed

$Repository = "D:\Drivers\Dell"

$Drivers = "WWVKD*",    #Dell Touchpad Synaptics A04 WWVKD 19.0.27.3
"TF7CN*",    #Dell Touchpad Synaptics A00 TF7CN 19.0.9.4
"D2M6V*",    #Dell Touchpad Synaptics A01 D2M6V 19.0.15.2
"1DMP8*",    #Dell Touchpad Alps A01 1DMP8 10.2207.101.209
"9HG8R*",    #Dell Touchpad A00 9HG8R 10.2207.101.108
"HND27*",    #Dell Touchpad A02 HND27 10.2207.101.118
"JFFD2*",    #Dell Multi-Touch Touchpad A03 JFFD2 10.1207.101.110
"M5MK2*",    #Dell Multi-Touch Touchpad A00 M5MK2 10.1207.101.103
"NVCF6*",    #Dell Touchpad A03 NVCF6 10.2207.101.119
"T48PJ*",    #Dell Touchpad A00 T48PJ 10.2207.101.108
"VRPMP*",    #Dell Multi-Touch Touchpad A00 VRPMP 10.1207.101.102
"Y5Y8F*",    #Dell Multi-Touch Touchpad A06 Y5Y8F 10.1207.101.113
"YXX3D*"    #Dell Multi-Touch Touchpad A03 YXX3D 10.1207.101.109

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