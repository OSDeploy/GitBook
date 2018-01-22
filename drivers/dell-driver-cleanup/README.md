# Dell Driver Cleanup

Let's look at the two methods for Dell Drivers.  The Model Driver Packs \(SCConfigMgr Driver Automation Tool\) and the Dell Family Packs \(Dell Family Pack Downloader\)

By switching to the Dell Family Packs, the total Drivers used will be reduced to 73.9 GB.  This is a significant reduction compared to the individual Dell Model Packs.

| Method | Number of Packs | Downloaded Size | Extracted Size |
| ---: | ---: | ---: | ---: |
| Dell Model Packs | 138 | 84.1 GB | 191.70 GB |
| Dell Family Packs | 27 | 36.2 GB | **73.96 GB** |

---

## Dual Architecture

One issue with the way Dell has their Family and Model Packs is that they contain drivers for both 32 and 64 Bit architectures.  The first step that has to be done is to split these into separate Driver Repositories.

After a successful split, we can see how things really shape up.

| Repository | Packs | Extracted Size |
| :--- | :--- | :--- |
| Dell Family Packs Win10 x86 | 2 | 1.19 GB |
| Dell Model Packs Win10 x64 | 64 | 33.42 GB |
|  |  |  |
| **Dell Family Packs Win10 x86** | **27** | **72.73 GB** |
| **Dell Model Packs Win10 x64** | **138** | **158.30 GB** |

A complete breakdown of these Repositories is listed below

---

## Dell Family Packs x86

```
D:\Drivers\Dell\Win10x86\Family
Directory Name                Total Size
----------------------------- ----------
Win10_OptiPlexD4_A02          0.95 GB
Win10_VenuePro2_A03           0.24 GB
```

---

## Dell Family Packs x64

```
D:\Drivers\Dell\Win10x64\Family
Directory Name                Total Size
----------------------------- ----------
Win10_Latitude3x40_A01        1.13 GB
Win10_LatitudeE5_A02          2.26 GB
Win10_LatitudeE6XFR_A04       3.48 GB
Win10_LatitudeE6_A10          3.27 GB
Win10_LatitudeE7_A12          2.37 GB
Win10_LatitudeE8Rugged_A09    3.36 GB
Win10_LatitudeE8Tablet_A11    5.23 GB
Win10_LatitudeE8_A18          5.04 GB
Win10_LatitudeE9Rugged_A01    2.08 GB
Win10_LatitudeE9Tablet_A08    2.37 GB
Win10_LatitudeE9_A09          5.02 GB
Win10_OptiPlexD4_A02          0.76 GB
Win10_OptiPlexD5_A08          1.78 GB
Win10_OptiPlexD6_A09          3.39 GB
Win10_OptiPlexD7_A16          2.56 GB
Win10_OptiPlexD8_A10          3.56 GB
Win10_PrecisionM3800_A00      1.28 GB
Win10_PrecisionM5_A02         1.99 GB
Win10_PrecisionM6_A17         5.80 GB
Win10_PrecisionM7_A06         4.41 GB
Win10_PrecisionWS5_A03        1.44 GB
Win10_PrecisionWS6_A12        1.98 GB
Win10_PrecisionWS7_A14        2.53 GB
Win10_PrecisionWS8_A08        2.79 GB
Win10_VenuePro2_A03           1.15 GB
Win10_VenuePro3_A03           0.99 GB
Win10_VenuePro4_A11           0.74 GB
```

---

## Dell Model Packs x86

```
D:\Drivers\Dell\Win10x86\Model
Directory Name                Total Size
----------------------------- ----------
Latitude 3330                 0.39 GB
Latitude 3340                 0.32 GB
Latitude 3450                 0.53 GB
Latitude 3550                 0.54 GB
Latitude 5250                 0.35 GB
Latitude 5450                 0.52 GB
Latitude 5550                 0.52 GB
Latitude 6430U                0.60 GB
Latitude 7250                 0.44 GB
Latitude E5250                0.35 GB
Latitude E5430-non-vPro       0.60 GB
Latitude E5430-vPro           0.60 GB
Latitude E5440                0.47 GB
Latitude E5450                0.52 GB
Latitude E5530 non-vPro       0.60 GB
Latitude E5530 vPro           0.60 GB
Latitude E5540                0.48 GB
Latitude E5550                0.52 GB
Latitude E6230                0.36 GB
Latitude E6330                0.36 GB
Latitude E6430                0.51 GB
Latitude E6430s               0.51 GB
Latitude E6440                0.92 GB
Latitude E6530                0.52 GB
Latitude E6540                0.92 GB
Latitude E7240                0.31 GB
Latitude E7250                0.44 GB
Latitude E7440                0.32 GB
Latitude E7450                0.61 GB
Latitude XT3                  0.12 GB
Optiplex 3010                 0.31 GB
Optiplex 3011 AIO             0.54 GB
Optiplex 3020                 0.38 GB
Optiplex 3020M                0.28 GB
Optiplex 3030 AIO             0.38 GB
Optiplex 7010                 0.75 GB
Optiplex 7020                 0.39 GB
Optiplex 9010                 0.61 GB
Optiplex 9010 AIO             0.25 GB
Optiplex 9020                 0.39 GB
Optiplex 9020 AIO             0.69 GB
Optiplex 9020M                0.29 GB
Optiplex 9030 AIO             0.88 GB
Optiplex XE2                  0.60 GB
Precision M2800               0.49 GB
Precision M4700               0.85 GB
Precision M4800               0.81 GB
Precision M6700               0.85 GB
Precision M6800               0.81 GB
Precision R5500               0.18 GB
Precision R7610               0.73 GB
Precision Rack 7910           0.26 GB
Precision T1650               0.89 GB
Precision T1700               0.55 GB
Precision T3600               0.49 GB
Precision T3610               0.74 GB
Precision T5600               0.49 GB
Precision T5610               0.74 GB
Precision T7600               0.49 GB
Precision T7610               0.74 GB
Precision Tower 5810          0.51 GB
Precision Tower 7810          0.51 GB
Precision Tower 7910          0.51 GB
Tablet 5130                   0.24 GB
```

---

## Dell Model Packs x64

```
D:\Drivers\Dell\Win10x64\Model
Directory Name                    Total Size
-----------------------------     ----------
Latitude 12 Rugged Extreme (7204) 0.91 GB
Latitude 12 Rugged Tablet 7202    0.95 GB
Latitude 14 Rugged (5404)         1.18 GB
Latitude 14 Rugged Extreme (7404) 1.11 GB
Latitude 3150                     0.74 GB
Latitude 3160                     0.99 GB
Latitude 3180                     0.99 GB
Latitude 3189                     1.05 GB
Latitude 3330                     0.49 GB
Latitude 3340                     0.91 GB
Latitude 3350                     0.97 GB
Latitude 3379                     1.10 GB
Latitude 3380                     1.01 GB
Latitude 3450                     1.23 GB
Latitude 3460                     1.20 GB
Latitude 3470                     1.34 GB
Latitude 3480                     1.39 GB
Latitude 3550                     1.23 GB
Latitude 3560                     1.20 GB
Latitude 3570                     1.35 GB
Latitude 3580                     1.39 GB
Latitude 5175                     1.25 GB
Latitude 5179                     1.26 GB
Latitude 5250                     0.90 GB
Latitude 5280                     1.14 GB
Latitude 5285                     1.24 GB
Latitude 5289                     1.13 GB
Latitude 5414                     1.62 GB
Latitude 5450                     1.13 GB
Latitude 5480                     1.48 GB
Latitude 5550                     1.14 GB
Latitude 5580                     1.50 GB
Latitude 6430U                    0.69 GB
Latitude 7214                     1.15 GB
Latitude 7250                     1.02 GB
Latitude 7275                     1.33 GB
Latitude 7280                     1.21 GB
Latitude 7285                     1.27 GB
Latitude 7350                     0.88 GB
Latitude 7370                     1.28 GB
Latitude 7380                     1.26 GB
Latitude 7389                     1.12 GB
Latitude 7414                     1.59 GB
Latitude 7480                     1.22 GB
Latitude E5250                    0.90 GB
Latitude E5270                    1.16 GB
Latitude E5430-non-vPro           0.63 GB
Latitude E5430-vPro               0.63 GB
Latitude E5440                    1.12 GB
Latitude E5450                    1.13 GB
Latitude E5470                    1.64 GB
Latitude E5530 non-vPro           0.63 GB
Latitude E5530 vPro               0.63 GB
Latitude E5540                    1.11 GB
Latitude E5550                    1.14 GB
Latitude E5570                    1.72 GB
Latitude E6230                    0.46 GB
Latitude E6330                    0.46 GB
Latitude E6430                    0.70 GB
Latitude E6430s                   0.69 GB
Latitude E6440                    1.46 GB
Latitude E6530                    0.69 GB
Latitude E6540                    1.46 GB
Latitude E7240                    0.88 GB
Latitude E7250                    1.02 GB
Latitude E7270                    1.22 GB
Latitude E7440                    0.88 GB
Latitude E7450                    1.26 GB
Latitude E7470                    1.18 GB
Latitude XT3                      0.07 GB
Optiplex 3010                     0.88 GB
Optiplex 3011 AIO                 0.51 GB
Optiplex 3020                     1.04 GB
Optiplex 3020M                    0.80 GB
Optiplex 3030 AIO                 1.24 GB
OptiPlex 3040                     1.82 GB
OptiPlex 3046                     1.40 GB
Optiplex 3050                     1.34 GB
Optiplex 3050 AIO                 0.99 GB
Optiplex 3240 AIO                 1.40 GB
Optiplex 5040                     1.49 GB
Optiplex 5050                     1.34 GB
Optiplex 5055                     1.02 GB
Optiplex 5250 AIO                 1.33 GB
Optiplex 7010                     0.82 GB
Optiplex 7020                     1.08 GB
Optiplex 7040                     1.64 GB
Optiplex 7050                     1.34 GB
Optiplex 7440 AIO                 1.40 GB
Optiplex 7450 AIO                 1.33 GB
Optiplex 9010                     1.15 GB
Optiplex 9010 AIO                 0.40 GB
Optiplex 9020                     1.32 GB
Optiplex 9020 AIO                 1.31 GB
Optiplex 9020M                    0.82 GB
Optiplex 9030 AIO                 1.30 GB
Optiplex XE2                      1.71 GB
Precision 3510                    1.74 GB
Precision 3520                    1.46 GB
Precision 5510                    1.73 GB
Precision 5520                    1.51 GB
Precision 5720 AIO                1.39 GB
Precision 7520                    1.84 GB
Precision 7720                    1.84 GB
Precision M2800                   1.27 GB
Precision M3800                   1.48 GB
Precision M4700                   1.06 GB
Precision M4800                   1.58 GB
Precision M6700                   1.06 GB
Precision M6800                   1.58 GB
Precision Mobile Workstation 7510 1.95 GB
Precision Mobile Workstation 7710 1.95 GB
Precision Precision 5820 Tower    1.29 GB
Precision Precision 7820 Tower    1.31 GB
Precision Precision 7920 Rack     0.65 GB
Precision Precision 7920 Tower    1.31 GB
Precision R5500                   0.24 GB
Precision R7610                   0.84 GB
Precision Rack 7910               1.17 GB
Precision T1650                   1.14 GB
Precision T1700                   1.31 GB
Precision T3600                   0.72 GB
Precision T3610                   0.84 GB
Precision T3620                   1.71 GB
Precision T5600                   0.72 GB
Precision T5610                   0.84 GB
Precision T7600                   0.72 GB
Precision T7610                   0.84 GB
Precision Tower 3420              1.66 GB
Precision Tower 5810              1.87 GB
Precision Tower 7810              1.87 GB
Precision Tower 7910              1.86 GB
Tablet 5130                       0.37 GB
Tablet 5855                       0.69 GB
Venue 10 Pro 5056                 0.69 GB
Venue 11 Pro 7130                 0.83 GB
Venue 11 Pro 7130 vPro            0.83 GB
Venue 11 Pro 7140                 0.86 GB
```



