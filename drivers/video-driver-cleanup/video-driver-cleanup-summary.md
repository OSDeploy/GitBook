# Video Driver Cleanup Summary

After removal of the Intel Drivers from the Driver Repository we have quite a reduction of around 42%

| Driver Method | Initial Size | Cleanup Size | Final Size | Reduction |
| :--- | :--- | :--- | :--- | :--- |
| Dell Model Packs Win10 | 191.70 GB | 79.7 GB | 112.00 GB | 41.5% |
| Dell Family Packs Win10 | 73.96 GB | 31.44 GB | 42.52 GB | 42.5% |

---

## Dell Model Pack Breakdown

All of the Model Packs have been reduced in size with 97 of 138 now smaller than 1GB in size.

```
Latitude 12 Rugged Extreme (7204) 0.34 GB
Latitude 12 Rugged Tablet 7202    0.37 GB
Latitude 14 Rugged (5404)         0.59 GB
Latitude 14 Rugged Extreme (7404) 0.54 GB
Latitude 3150                     0.37 GB
Latitude 3160                     0.39 GB
Latitude 3180                     0.23 GB
Latitude 3189                     0.29 GB
Latitude 3330                     0.36 GB
Latitude 3340                     0.58 GB
Latitude 3350                     0.37 GB
Latitude 3379                     0.35 GB
Latitude 3380                     0.25 GB
Latitude 3450                     1.11 GB
Latitude 3460                     0.58 GB
Latitude 3470                     0.59 GB
Latitude 3480                     0.63 GB
Latitude 3550                     1.12 GB
Latitude 3560                     0.58 GB
Latitude 3570                     0.60 GB
Latitude 3580                     0.63 GB
Latitude 5175                     0.50 GB
Latitude 5179                     0.51 GB
Latitude 5250                     0.59 GB
Latitude 5280                     0.37 GB
Latitude 5285                     0.47 GB
Latitude 5289                     0.36 GB
Latitude 5414                     0.85 GB
Latitude 5450                     1.00 GB
Latitude 5480                     0.72 GB
Latitude 5550                     1.00 GB
Latitude 5580                     0.73 GB
Latitude 6430U                    0.77 GB
Latitude 7214                     0.38 GB
Latitude 7250                     0.81 GB
Latitude 7275                     0.58 GB
Latitude 7280                     0.44 GB
Latitude 7285                     0.52 GB
Latitude 7350                     0.28 GB
Latitude 7370                     0.51 GB
Latitude 7380                     0.47 GB
Latitude 7389                     0.36 GB
Latitude 7414                     0.82 GB
Latitude 7480                     0.46 GB
Latitude E5250                    0.59 GB
Latitude E5270                    0.40 GB
Latitude E5430-non-vPro           0.70 GB
Latitude E5430-vPro               0.70 GB
Latitude E5440                    0.94 GB
Latitude E5450                    1.00 GB
Latitude E5470                    0.88 GB
Latitude E5530 non-vPro           0.70 GB
Latitude E5530 vPro               0.70 GB
Latitude E5540                    0.98 GB
Latitude E5550                    1.00 GB
Latitude E5570                    0.96 GB
Latitude E6230                    0.29 GB
Latitude E6330                    0.29 GB
Latitude E6430                    0.70 GB
Latitude E6430s                   0.68 GB
Latitude E6440                    1.66 GB
Latitude E6530                    0.69 GB
Latitude E6540                    1.66 GB
Latitude E7240                    0.54 GB
Latitude E7250                    0.81 GB
Latitude E7270                    0.46 GB
Latitude E7440                    0.55 GB
Latitude E7450                    1.22 GB
Latitude E7470                    0.41 GB
Latitude XT3                      0.18 GB
Optiplex 3010                     0.72 GB
Optiplex 3011 AIO                 0.87 GB
Optiplex 3020                     0.93 GB
Optiplex 3020M                    0.44 GB
Optiplex 3030 AIO                 0.99 GB
OptiPlex 3040                     1.07 GB
OptiPlex 3046                     0.64 GB
Optiplex 3050                     0.57 GB
Optiplex 3050 AIO                 0.23 GB
Optiplex 3240 AIO                 0.64 GB
Optiplex 5040                     0.73 GB
Optiplex 5050                     0.57 GB
Optiplex 5055                     0.86 GB
Optiplex 5250 AIO                 0.56 GB
Optiplex 7010                     1.10 GB
Optiplex 7020                     0.94 GB
Optiplex 7040                     0.88 GB
Optiplex 7050                     0.57 GB
Optiplex 7440 AIO                 0.63 GB
Optiplex 7450 AIO                 0.57 GB
Optiplex 9010                     1.29 GB
Optiplex 9010 AIO                 0.18 GB
Optiplex 9020                     1.17 GB
Optiplex 9020 AIO                 1.04 GB
Optiplex 9020M                    0.45 GB
Optiplex 9030 AIO                 1.30 GB
Optiplex XE2                      1.78 GB
Precision 3510                    0.98 GB
Precision 3520                    0.69 GB
Precision 5510                    0.97 GB
Precision 5520                    0.73 GB
Precision 5720 AIO                0.66 GB
Precision 7520                    1.08 GB
Precision 7720                    1.07 GB
Precision M2800                   1.12 GB
Precision M3800                   0.94 GB
Precision M4700                   1.43 GB
Precision M4800                   1.72 GB
Precision M6700                   1.43 GB
Precision M6800                   1.72 GB
Precision Mobile Workstation 7510 1.20 GB
Precision Mobile Workstation 7710 1.20 GB
Precision Precision 5820 Tower    1.29 GB
Precision Precision 7820 Tower    1.30 GB
Precision Precision 7920 Rack     0.65 GB
Precision Precision 7920 Tower    1.30 GB
Precision R5500                   0.42 GB
Precision R7610                   1.56 GB
Precision Rack 7910               1.43 GB
Precision T1650                   1.56 GB
Precision T1700                   1.33 GB
Precision T3600                   1.21 GB
Precision T3610                   1.58 GB
Precision T3620                   0.95 GB
Precision T5600                   1.21 GB
Precision T5610                   1.58 GB
Precision T7600                   1.21 GB
Precision T7610                   1.58 GB
Precision Tower 3420              0.90 GB
Precision Tower 5810              2.37 GB
Precision Tower 7810              2.36 GB
Precision Tower 7910              2.36 GB
Tablet 5130                       0.15 GB
Tablet 5855                       0.15 GB
Venue 10 Pro 5056                 0.14 GB
Venue 11 Pro 7130                 0.24 GB
Venue 11 Pro 7130 vPro            0.24 GB
Venue 11 Pro 7140                 0.22 GB
```

---

## Dell Family Pack Breakdown

It is interesting to note that several all Dell Family Packs are smaller than 3GB in size \(4 were larger than 5GB before we started\)

```
Win10_VenuePro4_A11           0.20 GB
Win10_Latitude3x40_A01        0.28 GB
Win10_VenuePro2_A03           0.39 GB
Win10_VenuePro3_A03           0.44 GB
Win10_LatitudeE9Rugged_A01    0.45 GB
Win10_PrecisionM3800_A00      0.77 GB
Win10_LatitudeE9Tablet_A08    0.82 GB
Win10_PrecisionWS5_A03        0.87 GB

Win10_LatitudeE7_A12          1.08 GB
Win10_OptiPlexD5_A08          1.25 GB
Win10_PrecisionM5_A02         1.41 GB
Win10_LatitudeE8Rugged_A09    1.52 GB
Win10_LatitudeE5_A02          1.60 GB
Win10_OptiPlexD4_A02          1.70 GB
Win10_PrecisionWS7_A14        1.71 GB
Win10_OptiPlexD7_A16          1.79 GB
Win10_LatitudeE8_A18          1.89 GB
Win10_PrecisionWS8_A08        1.92 GB
Win10_LatitudeE6XFR_A04       1.93 GB
Win10_PrecisionWS6_A12        1.97 GB

Win10_LatitudeE6_A10          2.37 GB
Win10_LatitudeE8Tablet_A11    2.50 GB
Win10_OptiPlexD8_A10          2.55 GB
Win10_LatitudeE9_A09          2.64 GB
Win10_OptiPlexD6_A09          2.72 GB
Win10_PrecisionM7_A06         2.79 GB
Win10_PrecisionM6_A17         2.96 GB
```




---

Modified: {{ file.mtime }}