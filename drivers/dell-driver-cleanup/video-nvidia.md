# Video - Nvidia

If you downloaded the Intel Video Drivers from Intel.com, you can remove the ones downloaded from the Vendor \(Dell\) to reduce the size of your Driver Repository.

| Driver Method | Removed Drivers |
| :--- | :--- |
| Dell Family Packs | 7.15 GB |
| Dell Model Packs | 10.22 GB |

---

## Removed Drivers

```
"04W6J*", #NVIDIA 21.21.13.7674
"1F9M7*", #NVIDIA 10.18.13.5462
"95C25*", #NVIDIA 21.21.13.7684
"N4MHX*", #NVIDIA GeForce 830M 840M GT 720M NVS 5200M A01 N4MHX 10.18.13.5382
"XCDV4*", #NVIDIA GeForce 920M A01 XCDV4 10.18.13.5382
"258DX*", #NVIDIA Geforce GT640 GTX645 GTX745 A00 258DX 10.18.13.5354
"08PKM*", #NVIDIA Geforce GT720M A00 08PKM 10.18.13.5324
"7MDNT*", #NVIDIA GeForce GTX745 A01 7MDNT 10.18.13.5382
"4KXK6*", #NVIDIA GeForce GT7xx GTX9xx GTX10xx A00 4KXK6 22.21.13.8167
"NV3PY*", #NVIDIA GeForce GT7xx GTX9xx GTX10xx A00 NV3PY 22.21.13.8167
"7MG3T*", #NVIDIA GeForce 930MX 940MX Quadro M620 A01 7MG3T 21.21.13.6988
"K7C9J*", #NVIDIA GeForce 930MX 940MX Quadro M620 A01 K7C9J 21.21.13.6988
"V677X*", #NVIDIA Quadro A00 V677X 22.21.13.8165
"46C1H*", #NVIDIA Quadro 382.59 A00 46C1H 22.21.13.8259
"P4Y4X*", #NVIDIA Quadro 369.39 A00 P4Y4X 21.21.13.6939
"242X0*", #NVIDIA Quadro M1000M M2000M M3000M M4000M M5000M A03 242X0 21.21.13.6972
"9PY90*", #NVIDIA Quadro K1100M A01 9PY90 10.18.13.5354
"27GW3*", #NVIDIA Quadro M1200 A02 27GW3 21.21.13.7674
"CY9PN*", #NVIDIA Quadro M2000 361.91 A00 CY9PN 10.18.13.6191
"CYKKX*", #NVIDIA Quadro M1200 M2200 P3000 P4000 P5000 A02 CYKKX 21.21.13.7898
"3NH5T*", #
"WGDNM*", #
"G40FC*", #
"3D66D*", #
"03W95*", #
"K2H3H*", #
"7G5VK*", #
"N0J5W*", #
"RXNJ4*", #
"214DV*", #
"FNP72*", #
"NRVYD*", #
"33M6J*", #
"H92FX*", #
"WKHHY*", #
"WWV11*", #
"7FYRK*", #
"VKN1R*", #
"JP4T5*", #
"71P4M*" #
```

---

## PowerShell Driver Removal Script

The following PowerShell Script can be used to remove existing Drivers.  Modify the **$Repository** as needed.

```
#Requires -RunAsAdministrator
#Modify the $Repository as needed

$Repository = "D:\Drivers\Dell"

$Drivers = "04W6J*", #NVIDIA 21.21.13.7674
"1F9M7*", #NVIDIA 10.18.13.5462
"95C25*", #NVIDIA 21.21.13.7684
"N4MHX*", #NVIDIA GeForce 830M 840M GT 720M NVS 5200M A01 N4MHX 10.18.13.5382
"XCDV4*", #NVIDIA GeForce 920M A01 XCDV4 10.18.13.5382
"258DX*", #NVIDIA Geforce GT640 GTX645 GTX745 A00 258DX 10.18.13.5354
"08PKM*", #NVIDIA Geforce GT720M A00 08PKM 10.18.13.5324
"7MDNT*", #NVIDIA GeForce GTX745 A01 7MDNT 10.18.13.5382
"4KXK6*", #NVIDIA GeForce GT7xx GTX9xx GTX10xx A00 4KXK6 22.21.13.8167
"NV3PY*", #NVIDIA GeForce GT7xx GTX9xx GTX10xx A00 NV3PY 22.21.13.8167
"7MG3T*", #NVIDIA GeForce 930MX 940MX Quadro M620 A01 7MG3T 21.21.13.6988
"K7C9J*", #NVIDIA GeForce 930MX 940MX Quadro M620 A01 K7C9J 21.21.13.6988
"V677X*", #NVIDIA Quadro A00 V677X 22.21.13.8165
"46C1H*", #NVIDIA Quadro 382.59 A00 46C1H 22.21.13.8259
"P4Y4X*", #NVIDIA Quadro 369.39 A00 P4Y4X 21.21.13.6939
"242X0*", #NVIDIA Quadro M1000M M2000M M3000M M4000M M5000M A03 242X0 21.21.13.6972
"9PY90*", #NVIDIA Quadro K1100M A01 9PY90 10.18.13.5354
"27GW3*", #NVIDIA Quadro M1200 A02 27GW3 21.21.13.7674
"CY9PN*", #NVIDIA Quadro M2000 361.91 A00 CY9PN 10.18.13.6191
"CYKKX*", #NVIDIA Quadro M1200 M2200 P3000 P4000 P5000 A02 CYKKX 21.21.13.7898
"3NH5T*", #
"WGDNM*", #
"G40FC*", #
"3D66D*", #
"03W95*", #
"K2H3H*", #
"7G5VK*", #
"N0J5W*", #
"RXNJ4*", #
"214DV*", #
"FNP72*", #
"NRVYD*", #
"33M6J*", #
"H92FX*", #
"WKHHY*", #
"WWV11*", #
"7FYRK*", #
"VKN1R*", #
"JP4T5*", #
"71P4M*" #

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

