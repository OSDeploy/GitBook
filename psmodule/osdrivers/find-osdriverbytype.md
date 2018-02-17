# Find-OSDriverTypes

This module allows you to select a Driver Type and search in your Driver Repository for instances.  Optionally you can remove the Directory containing the Driver.

![](/assets/2018-02-17_1-46-10.png)

---

## -Path

The Path to your Drivers that you want to

---

## -Type

This allows the selection of a Driver Type to search.

![](/assets/2018-02-17_1-47-09.png)

The following values are used in the Driver Type

* AMD Video = "amdave32.dl\*", "amdkmpfd.inf"
* Intel Bluetooth = "ibt\*.inf"
* Intel Ethernet = "e1\*.inf"
* Intel Thunderbolt = "tbt\*.inf"
* Intel Video = "igfx\*.cpl"
* Intel Wireless = "netw\*.inf"
* Nvidia Video = "nvapi.dl\*"
* Realtek Audio = "hdxadc.inf", "hd\*.inf"

---

## -RemoveDirectories

Selecting this option will delete the Directory that the files were found in

---

## Example

Once executed, you will be presented a list of results.  Simply select the files you want to include and press OK

![](/assets/2018-02-17_1-51-28.png)

The directories will be calculated, with a total estimate of how much space can be recovered if they were to be deleted.

```
709.49 MB D:\Drivers\Extract\Model Dell Win10 x64\Precision 7520\Windows10-A03\7520\Win10\x64\video\HC82C_A00-00\Windows10-x64\ki122063.inf\21.20.16.4664
709.49 MB D:\Drivers\Extract\Model Dell Win10 x64\Precision 7720\Windows10-A03\7720\Win10\x64\video\HC82C_A00-00\Production\Windows10-x64\ki122063.inf\21.20.16.4664
533.94 MB D:\Drivers\Extract\Model Dell Win10 x64\Precision M2800\Windows10-A03\M2800\Win10\x64\video\1C5FX_A00-00\Windows10-x64\4454-64-MB.inf\20.19.15.4454
496.62 MB D:\Drivers\Extract\Model Dell Win10 x64\Precision M3800\Windows10-A01\M3800\win10\x64\video\F0MKC_A00-00\Windows10-x64\KT109811.inf\10.18.15.4278
311.54 MB D:\Drivers\Extract\Model Dell Win10 x64\Precision M4700\Windows10-A02\M4700\win10\x64\video\MDX68_A02-00\drivers\igdlh64.inf
533.94 MB D:\Drivers\Extract\Model Dell Win10 x64\Precision M4800\Windows10-A03\M4800\win10\x64\video\1C5FX_A00-00\4454-64-MB.inf\20.19.15.4454
311.54 MB D:\Drivers\Extract\Model Dell Win10 x64\Precision M6700\Windows10-A02\M6700\win10\x64\video\MDX68_A02-00\drivers\igdlh64.inf
533.94 MB D:\Drivers\Extract\Model Dell Win10 x64\Precision M6800\Windows10-A03\M6800\win10\x64\video\1C5FX_A00-00\4454-64-MB.inf\20.19.15.4454
691.67 MB D:\Drivers\Extract\Model Dell Win10 x64\Precision Mobile Workstation 7510\Windows10-A10\7510\win10\x64\video\8K9N3_A00-00\KT120137.inf\21.20.16.4574
691.67 MB D:\Drivers\Extract\Model Dell Win10 x64\Precision Mobile Workstation 7710\Windows10-A08\7710\win10\x64\video\8K9N3_A00-00\KT120137.inf\21.20.16.4574
311.54 MB D:\Drivers\Extract\Model Dell Win10 x64\Precision T1650\Windows10-A01\T1650\win10\x64\video\MDX68_A00-00\Windows10-x64\igdlh64.inf\10.18.10.4276
533.84 MB D:\Drivers\Extract\Model Dell Win10 x64\Precision T1700\Windows10-A03\T1700\win10\x64\video\TH44Y_A00-00\Win10-x64\ki115784.inf\20.19.15.4454
708.97 MB D:\Drivers\Extract\Model Dell Win10 x64\Precision T3620\Windows10-A09\T3620\win10\x64\video\9X1XX_A00-00\Windows10-x64\ki121375.inf\21.20.16.4627
708.97 MB D:\Drivers\Extract\Model Dell Win10 x64\Precision Tower 3420\Windows10-A09\T3420\win10\x64\video\9X1XX_A00-00\ki121375.inf\21.20.16.4627
308.89 MB D:\Drivers\Extract\Model Dell Win10 x64\Tablet 5130\Windows10-A02\5130\win10\x64\chipset\8W9WP_A00-00\drivers\kit60888.inf
492.84 MB D:\Drivers\Extract\Model Dell Win10 x64\Tablet 5855\Windows10-A08\5855\win10\x64\chipset\P4R5C_A00-00\Drivers\k114586.inf
492.84 MB D:\Drivers\Extract\Model Dell Win10 x64\Venue 10 Pro 5056\Windows10-A08\5056\win10\x64\chipset\P4R5C_A00-00\Drivers\k114586.inf
533.19 MB D:\Drivers\Extract\Model Dell Win10 x64\Venue 11 Pro 7130\Windows10-A03\7130\win10\x64\video\CVWNX_A00-00\Windows10-x64\KT117680 .inf\20.19.15.4483
538.72 MB D:\Drivers\Extract\Model Dell Win10 x64\Venue 11 Pro 7140\Windows10-A05\7140\win10\x64\video\XPJ04_A00-00\KT118917.inf\20.19.15.4531
Repository Size:  157.13 GB
65.58 GB can be recovered
```

**If you are using Dell Model Drivers \(Windows 10 x64\) and have downloaded all of them, your 73.37 GB Driver Repository should contain 27.99 GB of Intel Video Drivers \(38%\).  If you are using Dell Model Drivers \(Windows 10 x64\), then 65.58 GB of your 157.13 GB are Intel Video Drivers \(41.7%\)**



