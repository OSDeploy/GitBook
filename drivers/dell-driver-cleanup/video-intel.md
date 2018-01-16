# Video - Intel

Intel Video is the largest.  Since the INF for Intel Video can have different names, a search for igfx\*.cpl in our Repository should help find all the Intel Video Drivers

```
Identifier: igfx*.cpl
```

---

## Dell Family Driver Packs

| Windows 7 x86 | Windows 7 x64 | Windows 10 x86 | Windows 10 x64 | **Total** |
| :--- | :--- | :--- | :--- | :--- |
|  |  | 0.16GB | 28.51 GB |  |

```
PS C:\Windows\system32> Edit-OSDriversCleaner -Path D:\Drivers\Test\Alpha\Win10x86 -Include igfx*.cpl
***** Calculating Size of D:\Drivers\Test\Alpha\Win10x86 *****
160.61 MB D:\Drivers\Test\Alpha\Win10x86\Win10_VenuePro2_A03\VenuePro2\Win10\x86\chipset\36NNM\drivers\kit60887.inf
Repository Size:  1.23 GB
0.16 GB can be recovered

PS C:\Windows\system32> Edit-OSDriversCleaner -Path D:\Drivers\Test\Alpha\Win10x64 -Include igfx*.cpl
***** Calculating Size of D:\Drivers\Test\Alpha\Win10x64 *****
479.87 MB D:\Drivers\Test\Alpha\Win10x64\Win10_Latitude3x40_A01\Latitude3x40\win10\x64\chipset\7W9YT\Windows10-x64\4240-64.inf\10.18.15.4240
334.44 MB D:\Drivers\Test\Alpha\Win10x64\Win10_Latitude3x40_A01\Latitude3x40\win10\x64\video\FGGYJ\Windows10-x64\64-4280.inf\10.18.14.4280
850.79 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE10_A01\LatitudeE10\WIN10\x64\Video\86N56\Windows10-x64\ki124455.inf\22.20.16.4799
533.94 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE5_A02\LatitudeE5\win10\x64\video\1C5FX\Windows10-x64\4454-64-MB.inf
533.94 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE6XFR_A04\LatitudeE6XFR\Win10\x64\video\1C5FX\4454-64-MB.inf\20.19.15.4454
479.87 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE6XFR_A04\LatitudeE6XFR\Win10\x64\video\7W9YT\Windows10-x64\4240-64.inf\10.18.15.4240
480.39 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE6XFR_A04\LatitudeE6XFR\Win10\x64\video\V387Y\64-108417.inf\10.18.15.4248
479.87 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE6_A10\LatitudeE6\win10\x64\video\7W9YT\Windows10-x64\4240-64.inf\10.18.15.4240
309.56 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE6_A10\LatitudeE6\win10\x64\video\F1FMC\Graphics
506.14 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE7_A12\LatitudeE7\WIN10\x64\Video\8F4CH\kt112346.inf\20.19.15.4320
538.87 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE7_A12\LatitudeE7\WIN10\x64\Video\YXJG1\Corrected_4531_NB_64b.inf\20.19.15.4531
520.41 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE8Rugged_A09\LatitudeE8Rugged\WIN10\x64\Video\0RC06\MB-4390-64.inf\20.19.15.4390
709.08 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE8Rugged_A09\LatitudeE8Rugged\WIN10\x64\Video\C2N7T\Windows10-x64\ki121294.inf\21.20.16.4627
538.87 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE8Rugged_A09\LatitudeE8Rugged\WIN10\x64\Video\G7Y13\Windows10-x64\Corrected_4531_NB_64b.inf\20.19.15.4531
698.46 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE8Tablet_A11\LatitudeE8Tablet\WIN10\x64\Video\422H7\Windows10-x64\ki120884.inf\21.20.16.4590
691.59 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE8Tablet_A11\LatitudeE8Tablet\WIN10\x64\Video\96JC4\K120130.inf\21.20.16.4574
677.78 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE8Tablet_A11\LatitudeE8Tablet\WIN10\x64\Video\M0MM8\k118616.inf\21.20.16.4526
538.72 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE8Tablet_A11\LatitudeE8Tablet\WIN10\x64\Video\XPJ04\KT118917.inf\20.19.15.4531
691.67 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE8_A18\LatitudeE8\WIN10\x64\Video\8K9N3\Windows10-x64\KT120137.inf\21.20.16.4574
709.08 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE8_A18\LatitudeE8\WIN10\x64\Video\C2N7T\ki121294.inf\21.20.16.4627
533.31 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE8_A18\LatitudeE8\WIN10\x64\Video\MKHKR\Corrected_NB-4483-64b.inf\20.19.15.4483
533.94 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE8_A18\LatitudeE8\WIN10\x64\Video\N8YN8\4454-64-MB.inf\20.19.15.4454
538.87 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE8_A18\LatitudeE8\WIN10\x64\Video\YXJG1\Corrected_4531_NB_64b.inf\20.19.15.4531
859.53 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE9Rugged_A01\LatitudeE9Rugged\WIN10\x64\Video\76MNH\ki122851.inf\22.20.16.4691
708.95 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE9Rugged_A01\LatitudeE9Rugged\WIN10\x64\Video\PRX5T\ki121263.inf\21.20.16.4627
709.35 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE9Tablet_A08\LatitudeE9Tablet\Win10\x64\video\87C62\Windows10-x64\ki121783.inf\21.20.16.4664
709.55 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE9Tablet_A08\LatitudeE9Tablet\Win10\x64\video\FRD5G\Windows10-x64\ki122457.inf\21.20.16.4678
691.67 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE9_A11\LatitudeE9\WIN10\x64\Video\8K9N3\Graphics
709.08 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE9_A11\LatitudeE9\WIN10\x64\Video\C2N7T\Windows10-x64\ki121294.inf\21.20.16.4627
708.93 MB D:\Drivers\Test\Alpha\Win10x64\Win10_LatitudeE9_A11\LatitudeE9\WIN10\x64\Video\K80JK\Windows10-x64\ki123606.inf\21.20.16.4627
533.84 MB D:\Drivers\Test\Alpha\Win10x64\Win10_OptiPlexD5_A08\OptiplexD5\win10\x64\video\TH44Y\Windows10-x64\ki115784.inf\20.19.15.4454
538.73 MB D:\Drivers\Test\Alpha\Win10x64\Win10_OptiPlexD6_A09\OptiplexD6\Win10\x64\video\YNWYT\Windows10-x64\ki119206.inf\20.19.15.4531
708.97 MB D:\Drivers\Test\Alpha\Win10x64\Win10_OptiPlexD7_A16\OptiplexD7\WIN10\x64\Video\TDP4X\ki121375.inf\21.20.16.4627
708.97 MB D:\Drivers\Test\Alpha\Win10x64\Win10_OptiPlexD8_A11\OptiplexD8\WIN10\x64\Video\9X1XX\ki121375.inf\21.20.16.4627
480.34 MB D:\Drivers\Test\Alpha\Win10x64\Win10_PrecisionM3800_A00\PrecisionM3800\win10\x64\video\7C6X2\Windows10-x64\igdlh64.inf\10.18.15.4248
479.87 MB D:\Drivers\Test\Alpha\Win10x64\Win10_PrecisionM5_A02\PrecisionM5\Win10\x64\video\7W9YT\Windows10-x64\4240-64.inf\10.18.15.4240
691.67 MB D:\Drivers\Test\Alpha\Win10x64\Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Video\8K9N3\Graphics
709.49 MB D:\Drivers\Test\Alpha\Win10x64\Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Video\HC82C\Windows10-x64\ki122063.inf\21.20.16.4664
709.35 MB D:\Drivers\Test\Alpha\Win10x64\Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Video\M56HN\Windows10-x64\ki122461.inf\21.20.16.4664
538.87 MB D:\Drivers\Test\Alpha\Win10x64\Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Video\YXJG1\Windows10-x64\Corrected_4531_NB_64b.inf\20.19.15.4531
691.67 MB D:\Drivers\Test\Alpha\Win10x64\Win10_PrecisionM7_A06\PrecisionM7\WIN10\x64\Video\8K9N3\Windows10-x64\KT120137.inf\21.20.16.4574
709.33 MB D:\Drivers\Test\Alpha\Win10x64\Win10_PrecisionM7_A06\PrecisionM7\WIN10\x64\Video\9FFYR\Windows10-x64\ki122581.inf\21.20.16.4664
503.34 MB D:\Drivers\Test\Alpha\Win10x64\Win10_PrecisionWS5_A03\PrecisionWS5\win10\x64\video\Y9JM5\Windows10-x64\DT-64-4281.inf\10.18.15.4281
708.97 MB D:\Drivers\Test\Alpha\Win10x64\Win10_PrecisionWS7_A16\PrecisionWS7\WIN10\x64\Video\9X1XX\ki121375.inf\21.20.16.4627
709.35 MB D:\Drivers\Test\Alpha\Win10x64\Win10_PrecisionWS8_A08\PrecisionWS8\WIN10\x64\Video\5M3W3\ki122049.inf\21.20.16.4664
308.89 MB D:\Drivers\Test\Alpha\Win10x64\Win10_VenuePro2_A03\VenuePro2\Win10\x64\chipset\8W9WP\drivers\kit60888.inf
479.87 MB D:\Drivers\Test\Alpha\Win10x64\Win10_VenuePro2_A03\VenuePro2\Win10\x64\video\7W9YT\Windows10-x64\4240-64.inf\10.18.15.4240
480.39 MB D:\Drivers\Test\Alpha\Win10x64\Win10_VenuePro3_A03\VenuePro3\win10\x64\video\V387Y\Graphics
492.84 MB D:\Drivers\Test\Alpha\Win10x64\Win10_VenuePro4_A11\VenuePro4\win10\x64\chipset\HTMRY\Drivers\Graphics
Repository Size:  74.31 GB
28.51 GB can be recovered
```

---

## Dell Windows 10 Model Packs

| **Windows 10 x86** | **Windows 10 x64** | **Total** |
| :--- | :--- | :--- |
| 3.69 GB | 66.55 GB | **70.24 GB** |

```
PS C:\Windows\system32> Edit-OSDriversCleaner -Path D:\Drivers\Test\Alpha\Win10x64-MODEL -Include igfx*.cpl
***** Calculating Size of D:\Drivers\Test\Alpha\Win10x64-MODEL *****
533.94 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 12 Rugged Extreme (7204)\Windows10-A04\7204\Win10\x64\video\1C5FX_A00-00\Windows10-x64\4454-64-MB.inf\20.19.15.4454
538.87 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 12 Rugged Tablet 7202\Windows10-A04\7202\Win10\x64\video\G7Y13_A00-00\Corrected_4531_NB_64b.inf\20.19.15.4531
533.94 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 14 Rugged (5404)\Windows10-A04\5404\Win10\x64\video\1C5FX_A00-00\Windows10-x64\4454-64-MB.inf\20.19.15.4454
533.94 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 14 Rugged Extreme (7404)\Windows10-A04\7404\Win10\x64\video\1C5FX_A00-00\Windows10-x64\4454-64-MB.inf\20.19.15.4454
309.56 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 3150\Windows10-A04\3150\win10\x64\video\F1FMC_A00-00\drivers\kt108474.inf
538.87 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 3160\Windows10-A05\3160\win10\x64\video\YXJG1_A00-00\Windows10-x64\Corrected_4531_NB_64b.inf\20.19.15.4531
709.08 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 3180\Windows10-A03\3180\Win10\x64\video\C2N7T_A00-00\Windows10-x64\ki121294.inf\21.20.16.4627
709.08 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 3189\Windows10-A03\3189\win10\x64\video\C2N7T_A00-00\W1064\ki121294.inf\21.20.16.4627
311.23 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 3330\Windows10-A03\3330\win10\x64\video\DCG08_A00-00\Windows10-x64\Kt116274.inf\10.18.10.4425
533.94 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 3340\Windows10-A04\3340\win10\x64\video\1C5FX_A00-00\Windows10-x64\4454-64-MB.inf\20.19.15.4454
538.87 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 3350\Windows10-A08\3350\win10\x64\video\G7Y13_A00-00\Corrected_4531_NB_64b.inf\20.19.15.4531
691.59 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 3379\Windows10-A03\3379\Win10\x64\Video\96JC4_A00-00\Windows10-x64\K120130.inf\21.20.16.4574
709.08 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 3380\Windows10-A04\3380\win10\x64\video\C2N7T_A00-00\W1064\ki121294.inf\21.20.16.4627
538.87 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 3450\Windows10-A05\3450\Win10\x64\video\YXJG1_A00-00\Windows10-x64\Corrected_4531_NB_64b.inf\20.19.15.4531
538.87 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 3460\Windows10-A08\3460\win10\x64\video\YXJG1_A00-00\Corrected_4531_NB_64b.inf\20.19.15.4531
709.08 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 3470\Windows10-A08\3470\Win10\x64\video\C2N7T_A00-00\Windows10-x64\ki121294.inf\21.20.16.4627
709.08 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 3480\Windows10-A03\3480\Win10\x64\video\C2N7T_A00-00\W10-x64\ki121294.inf\21.20.16.4627
538.87 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 3550\Windows10-A05\3550\Win10\x64\video\YXJG1_A00-00\Corrected_4531_NB_64b.inf\20.19.15.4531
538.87 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 3560\Windows10-A08\3560\win10\x64\video\YXJG1_A00-00\Corrected_4531_NB_64b.inf\20.19.15.4531
709.08 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 3570\Windows10-A08\3570\Win10\x64\video\C2N7T_A00-00\Windows10-x64\ki121294.inf\21.20.16.4627
709.08 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 3580\Windows10-A03\3580\Win10\x64\video\C2N7T_A00-00\Win10x64\ki121294.inf\21.20.16.4627
698.46 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 5175\Windows10-A06\5175\win10\x64\video\422H7_A00-00\Windows10-x64\ki120884.inf\21.20.16.4590
698.46 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 5179\Windows10-A06\5179\win10\x64\video\422H7_A00-00\Windows10-x64\ki120884.inf\21.20.16.4590
538.87 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 5250\Windows10-A06\E5250_5250\win10\x64\video\YXJG1_A00-00\Windows10-x64\Corrected_4531_NB_64b.inf\20.19.15.4531
709.08 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 5280\Windows10-A04\5280\Win10\x64\video\C2N7T_A00-00\ki121294.inf\21.20.16.4627
709.35 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 5285\Windows10-A03\5285\win10\x64\video\87C62_A00-00\Windows10-x64\ki121783.inf\21.20.16.4664
709.08 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 5289\Windows10-A02\5289\win10\x64\video\C2N7T_A00-00\Windows10-x64\ki121294.inf\21.20.16.4627
709.08 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 5414\Windows10-A05\5414\Win10\x64\video\C2N7T_A00-00\Win10x64\ki121294.inf\21.20.16.4627
533.94 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 5450\Windows10-A06\E5450_5450\win10\x64\video\1C5FX_A00-00\Windows10-x64\4454-64-MB.inf\20.19.15.4454
709.08 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 5480\Windows10-A04\5480\Win10\x64\video\C2N7T_A00-00\ki121294.inf\21.20.16.4627
538.87 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 5550\Windows10-A06\E5550_5550\win10\x64\video\YXJG1_A00-00\Corrected_4531_NB_64b.inf\20.19.15.4531
709.08 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 5580\Windows10-A04\5580\win10\x64\video\C2N7T_A00-00\ki121294.inf\21.20.16.4627
311.54 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 6430U\Windows10-A01\6430U\win10\x64\video\MDX68_A00-00\Windows10-x64\igdlh64.inf\10.18.10.4276
709.08 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 7214\Windows10-A04\7214\Win10\x64\video\C2N7T_A00-00\Windows10-x64\ki121294.inf\21.20.16.4627
538.87 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 7250\Windows10-A05\E7250_7250\win10\x64\video\YXJG1_A00-00\Windows10-x64\Corrected_4531_NB_64b.inf\20.19.15.4531
698.46 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 7275\Windows10-A08\7275\win10\x64\video\422H7_A00-00\Windows10-x64\ki120884.inf\21.20.16.4590
709.08 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 7280\Windows10-A04\7280\win10\x64\video\C2N7T_A00-00\Windows10-x64\ki121294.inf\21.20.16.4627
708.95 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 7285\Windows10-A01\7285\Win10\x64\video\PRX5T_A00-00\Win10x64\ki121263.inf\21.20.16.4627
538.72 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 7350\Windows10-A05\7350\Win10\x64\video\XPJ04_A00-00\KT118917.inf\20.19.15.4531
709.08 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 7370\Windows10-A10\7370\win10\x64\video\C2N7T_A00-00\Windows10-x64\ki121294.inf\21.20.16.4627
709.08 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 7380\Windows10-A01\7380\win10\x64\video\C2N7T_A00-00\ki121294.inf\21.20.16.4627
709.08 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 7389\Windows10-A01\7389\win10\x64\video\C2N7T_A00-00\Windows10-x64\ki121294.inf\21.20.16.4627
709.08 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 7414\Windows10-A05\7414\Win10\x64\video\C2N7T_A00-00\Windows10-x64\ki121294.inf\21.20.16.4627
709.08 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude 7480\Windows10-A04\7480\win10\x64\video\C2N7T_A00-00\Windows7-x64\ki121294.inf\21.20.16.4627
538.87 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude E5250\Windows10-A06\E5250_5250\win10\x64\video\YXJG1_A00-00\Windows10-x64\Corrected_4531_NB_64b.inf\20.19.15.4531
709.08 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude E5270\Windows10-A07\E5270\Win10\x64\video\C2N7T_A00-00\Production\Windows10-x64\ki121294.inf\21.20.16.4627
311.54 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude E5430-non-vPro\Windows10-A01\E5430\win10\x64\video\MDX68_A00-00\Windows10-x64\igdlh64.inf\10.18.10.4276
311.54 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude E5430-vPro\Windows10-A01\E5430\win10\x64\video\MDX68_A00-00\Windows10-x64\igdlh64.inf\10.18.10.4276
533.94 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude E5440\Windows10-A03\E5440\win10\x64\video\1C5FX_A03-00\Windows10-x64\4454-64-MB.inf
533.94 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude E5450\Windows10-A06\E5450_5450\win10\x64\video\1C5FX_A00-00\Windows10-x64\4454-64-MB.inf\20.19.15.4454
709.08 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude E5470\Windows10-A09\E5470\Win10\x64\video\C2N7T_A00-00\Production\Windows10-x64\ki121294.inf\21.20.16.4627
311.54 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude E5530 non-vPro\Windows10-A01\E5530\win10\x64\video\MDX68_A00-00\Windows10-x64\igdlh64.inf\10.18.10.4276
311.54 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude E5530 vPro\Windows10-A01\E5530\win10\x64\video\MDX68_A00-00\Windows10-x64\igdlh64.inf\10.18.10.4276
503.42 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude E5540\Windows10-A02\E5540\Win10\x64\video\0WCWN_A00-00\Windows10-x64\MB-64-4281.inf
538.87 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude E5550\Windows10-A06\E5550_5550\win10\x64\video\YXJG1_A00-00\Corrected_4531_NB_64b.inf\20.19.15.4531
709.08 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude E5570\Windows10-A13\E5570\Win10\x64\video\C2N7T_A00-00\ki121294.inf\21.20.16.4627
311.54 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude E6230\Windows10-A01\E6230\win10\x64\video\MDX68_A00-00\Windows10-x64\igdlh64.inf\10.18.10.4276
311.54 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude E6330\Windows10-A01\E6330\win10\x64\video\MDX68_A00-00\Windows10-x64\igdlh64.inf\10.18.10.4276
311.54 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude E6430\Windows10-A01\E6430\win10\x64\video\MDX68_A00-00\Production\Windows10-x64\igdlh64.inf\10.18.10.4276
311.54 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude E6430s\Windows10-A01\E6430s\win10\x64\video\MDX68_A00-00\Production\Windows10-x64\igdlh64.inf\10.18.10.4276
533.94 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude E6440\Windows10-A03\E6440\win10\x64\video\1C5FX_A00-00\win10x64\4454-64-MB.inf\20.19.15.4454
311.54 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude E6530\Windows10-A01\E6530\win10\x64\video\MDX68_A00-00\Windows10-x64\igdlh64.inf\10.18.10.4276
533.94 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude E6540\Windows10-A03\E6540\win10\x64\video\1C5FX_A00-00\win10x64\4454-64-MB.inf\20.19.15.4454
533.94 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude E7240\Windows10-A03\E7240\Win10\x64\video\1C5FX_A03-00\4454-64-MB.inf\20.19.15.4454
538.87 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude E7250\Windows10-A05\E7250_7250\win10\x64\video\YXJG1_A00-00\Windows10-x64\Corrected_4531_NB_64b.inf\20.19.15.4531
709.08 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude E7270\Windows10-A07\E7270\win10\x64\video\C2N7T_A00-00\Windows10-x64\ki121294.inf\21.20.16.4627
533.94 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude E7440\Windows10-A03\E7440\Win10\x64\video\1C5FX_A03-00\4454-64-MB.inf\20.19.15.4454
538.87 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude E7450\Windows10-A05\E7450\win10\x64\video\YXJG1_A00-00\win10x64\Corrected_4531_NB_64b.inf\20.19.15.4531
709.08 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Latitude E7470\Windows10-A07\E7470\win10\x64\video\C2N7T_A00-00\Windows10-x64\ki121294.inf\21.20.16.4627
311.54 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Optiplex 3010\Windows10-A01\3010\Win10\x64\video\MDX68_A00-00\Windows10-x64\igdlh64.inf\10.18.10.4276
503.34 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Optiplex 3020\Windows10-A02\3020\win10\x64\video\Y9JM5_A02-00\DT-64-4281.inf
533.84 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Optiplex 3020M\Windows10-A03\3020M\Win10\x64\video\TH44Y_A00-00\win10x64\ki115784.inf\20.19.15.4454
533.84 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Optiplex 3030 AIO\Windows10-A03\3030 AIO\win10\x64\video\TH44Y_A00-00\drivers\ki115784.inf
708.97 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\OptiPlex 3040\Windows10-A09\3040\win10\x64\video\TDP4X_A00-00\Win10x64\ki121375.inf\21.20.16.4627
708.97 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\OptiPlex 3046\Windows10-A05\3046\win10\x64\video\TDP4X_A00-00\production\Windows10-x64\ki121375.inf\21.20.16.4627
708.97 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Optiplex 3050\Windows10-A04\3050\Win10\x64\video\9X1XX_A00-00\Windows10-x64\ki121375.inf\21.20.16.4627
708.97 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Optiplex 3050 AIO\Windows10-A04\3050 AIO\win10\x64\video\9X1XX_A00-00\Win10x64\ki121375.inf\21.20.16.4627
708.97 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Optiplex 3240 AIO\Windows10-A07\3240 AIO\win10\x64\video\TDP4X_A00-00\ki121375.inf\21.20.16.4627
708.97 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Optiplex 5040\Windows10-A09\5040\Win10\x64\video\TDP4X_A00-00\Windows10-x64\ki121375.inf\21.20.16.4627
708.97 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Optiplex 5050\Windows10-A04\5050\win10\x64\video\9X1XX_A00-00\ki121375.inf\21.20.16.4627
708.97 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Optiplex 5250 AIO\Windows10-A04\5250 AIO\Win10\x64\video\9X1XX_A00-00\Win10x64\ki121375.inf\21.20.16.4627
311.54 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Optiplex 7010\Windows10-A01\7010\win10\x64\video\MDX68_A00-00\Windows10-x64\igdlh64.inf\10.18.10.4276
533.84 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Optiplex 7020\Windows10-A03\7020\win10\x64\video\TH44Y_A00-00\Win10x64\ki115784.inf\20.19.15.4454
708.97 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Optiplex 7040\Windows10-A09\7040\Win10\x64\video\TDP4X_A00-00\Production\Windows10-x64\ki121375.inf\21.20.16.4627
708.97 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Optiplex 7050\Windows10-A04\7050\win10\x64\video\9X1XX_A00-00\Windows10-x64\ki121375.inf\21.20.16.4627
708.97 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Optiplex 7440 AIO\Windows10-A09\7440 AIO\win10\x64\video\TDP4X_A00-00\ki121375.inf\21.20.16.4627
708.97 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Optiplex 7450 AIO\Windows10-A04\7450 AIO\win10\x64\video\9X1XX_A00-00\ki121375.inf\21.20.16.4627
311.54 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Optiplex 9010\Windows10-A02\9010\win10\x64\video\MDX68_A00-00\Windows10-x64\igdlh64.inf\10.18.10.4276
311.54 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Optiplex 9010 AIO\Windows10-A01\9010 AIO\Win10\x64\video\MDX68_A00-00\Windows10-x64\igdlh64.inf\10.18.10.4276
533.84 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Optiplex 9020\Windows10-A04\9020\win10\x64\video\TH44Y_A00-00\ki115784.inf\20.19.15.4454
533.84 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Optiplex 9020 AIO\Windows10-A03\9020 AIO\win10\x64\video\TH44Y_A00-00\Windows10-x64\ki115784.inf\20.19.15.4454
533.84 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Optiplex 9020M\Windows10-A03\9020M\Win10\x64\video\TH44Y_A00-00\ki115784.inf\20.19.15.4454
533.84 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Optiplex 9030 AIO\Windows10-A03\9030\win10\x64\video\TH44Y_A00-00\Windows10-x64\ki115784.inf
533.84 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Optiplex XE2\Windows10-A03\XE2\win10\x64\video\TH44Y_A00-00\Windows10-x64\ki115784.inf\20.19.15.4454
709.08 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Precision 3510\Windows10-A10\3510\Win10\x64\video\C2N7T_A00-00\Windows10-x64\ki121294.inf\21.20.16.4627
709.08 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Precision 3520\Windows10-A04\3520\win10\x64\video\C2N7T_A00-00\ki121294.inf\21.20.16.4627
708.94 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Precision 5510\Windows10-A11\5510\Win10\x64\video\VD50P_A00-00\Win10x64\ki121320.inf\21.20.16.4627
709.33 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Precision 5520\Windows10-A03\5520\win10\x64\video\9FFYR_A00-00\ki122581.inf\21.20.16.4664
680.40 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Precision 5720 AIO\Windows10-A02\5720 AIO\win10\x64\video\NJ9F4_A00-00\ki119515.inf\21.20.16.4542
709.49 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Precision 7520\Windows10-A03\7520\Win10\x64\video\HC82C_A00-00\Windows10-x64\ki122063.inf\21.20.16.4664
709.49 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Precision 7720\Windows10-A03\7720\Win10\x64\video\HC82C_A00-00\Production\Windows10-x64\ki122063.inf\21.20.16.4664
533.94 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Precision M2800\Windows10-A03\M2800\Win10\x64\video\1C5FX_A00-00\Windows10-x64\4454-64-MB.inf\20.19.15.4454
496.62 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Precision M3800\Windows10-A01\M3800\win10\x64\video\F0MKC_A00-00\Windows10-x64\KT109811.inf\10.18.15.4278
311.54 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Precision M4700\Windows10-A02\M4700\win10\x64\video\MDX68_A02-00\drivers\igdlh64.inf
533.94 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Precision M4800\Windows10-A03\M4800\win10\x64\video\1C5FX_A00-00\4454-64-MB.inf\20.19.15.4454
311.54 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Precision M6700\Windows10-A02\M6700\win10\x64\video\MDX68_A02-00\drivers\igdlh64.inf
533.94 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Precision M6800\Windows10-A03\M6800\win10\x64\video\1C5FX_A00-00\4454-64-MB.inf\20.19.15.4454
691.67 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Precision Mobile Workstation 7510\Windows10-A10\7510\win10\x64\video\8K9N3_A00-00\KT120137.inf\21.20.16.4574
691.67 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Precision Mobile Workstation 7710\Windows10-A08\7710\win10\x64\video\8K9N3_A00-00\KT120137.inf\21.20.16.4574
311.54 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Precision T1650\Windows10-A01\T1650\win10\x64\video\MDX68_A00-00\Windows10-x64\igdlh64.inf\10.18.10.4276
533.84 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Precision T1700\Windows10-A03\T1700\win10\x64\video\TH44Y_A00-00\Win10-x64\ki115784.inf\20.19.15.4454
708.97 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Precision T3620\Windows10-A09\T3620\win10\x64\video\9X1XX_A00-00\Windows10-x64\ki121375.inf\21.20.16.4627
708.97 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Precision Tower 3420\Windows10-A09\T3420\win10\x64\video\9X1XX_A00-00\ki121375.inf\21.20.16.4627
308.89 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Tablet 5130\Windows10-A02\5130\win10\x64\chipset\8W9WP_A00-00\drivers\kit60888.inf
492.84 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Tablet 5855\Windows10-A08\5855\win10\x64\chipset\P4R5C_A00-00\Drivers\k114586.inf
492.84 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Venue 10 Pro 5056\Windows10-A08\5056\win10\x64\chipset\P4R5C_A00-00\Drivers\k114586.inf
533.19 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Venue 11 Pro 7130\Windows10-A03\7130\win10\x64\video\CVWNX_A00-00\Windows10-x64\KT117680 .inf\20.19.15.4483
533.19 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Venue 11 Pro 7130 vPro\Windows10-A03\7130\win10\x64\video\CVWNX_A00-00\Windows10-x64\KT117680 .inf\20.19.15.4483
538.72 MB D:\Drivers\Test\Alpha\Win10x64-MODEL\Venue 11 Pro 7140\Windows10-A05\7140\win10\x64\video\XPJ04_A00-00\KT118917.inf\20.19.15.4531
Repository Size:  155.97 GB
66.55 GB can be recovered
```



