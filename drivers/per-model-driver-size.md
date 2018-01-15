# Dell Model Pack Breakdown

Since the SCConfigMgr Driver Automation downloads and extracts to the same Directory structure, I need to SPLIT the CAB/ZIP files from the Extracted Drivers.

I can easily do this with a Robocopy command with a MOVE switch and Excluding Directories named "Driver Cab"

```
robocopy SOURCE DESTINATION *.* /mir /xd "Driver Cab" /XX /move /ndl
```

Once the split is complete, I can see the total size of the Dell Windows 10 Model Driver Packs \(not XPS or Embedded\)

| Method | Number of Packs | Downloaded Size | Extracted Size |
| ---: | ---: | ---: | ---: |
| Dell Model Packs | 138 | 84.1GB | 191.0GB |

---

## Dell Model Breakdown

Here is a complete breakdown of the Dell Drivers by Model

> ```
> Latitude 12 Rugged Extreme (7204) 0.91 GB
> Latitude 12 Rugged Tablet 7202    0.95 GB
> Latitude 14 Rugged (5404)         1.18 GB
> Latitude 14 Rugged Extreme (7404) 1.11 GB
> Latitude 3150                     0.74 GB
> Latitude 3160                     0.99 GB
> Latitude 3180                     0.99 GB
> Latitude 3189                     1.05 GB
> Latitude 3330                     0.88 GB
> Latitude 3340                     1.23 GB
> Latitude 3350                     0.97 GB
> Latitude 3379                     1.10 GB
> Latitude 3380                     1.01 GB
> Latitude 3450                     1.76 GB
> Latitude 3460                     1.20 GB
> Latitude 3470                     1.34 GB
> Latitude 3480                     1.39 GB
> Latitude 3550                     1.77 GB
> Latitude 3560                     1.20 GB
> Latitude 3570                     1.35 GB
> Latitude 3580                     1.39 GB
> Latitude 5175                     1.25 GB
> Latitude 5179                     1.26 GB
> Latitude 5250                     1.25 GB
> Latitude 5280                     1.14 GB
> Latitude 5285                     1.24 GB
> Latitude 5289                     1.13 GB
> Latitude 5414                     1.62 GB
> Latitude 5450                     1.65 GB
> Latitude 5480                     1.48 GB
> Latitude 5550                     1.65 GB
> Latitude 5580                     1.50 GB
> Latitude 6430U                    1.29 GB
> Latitude 7214                     1.15 GB
> Latitude 7250                     1.46 GB
> Latitude 7275                     1.33 GB
> Latitude 7280                     1.21 GB
> Latitude 7285                     1.27 GB
> Latitude 7350                     0.88 GB
> Latitude 7370                     1.28 GB
> Latitude 7380                     1.26 GB
> Latitude 7389                     1.12 GB
> Latitude 7414                     1.59 GB
> Latitude 7480                     1.22 GB
> Latitude E5250                    1.25 GB
> Latitude E5270                    1.16 GB
> Latitude E5430-non-vPro           1.23 GB
> Latitude E5430-vPro               1.23 GB
> Latitude E5440                    1.60 GB
> Latitude E5450                    1.65 GB
> Latitude E5470                    1.64 GB
> Latitude E5530 non-vPro           1.23 GB
> Latitude E5530 vPro               1.23 GB
> Latitude E5540                    1.59 GB
> Latitude E5550                    1.65 GB
> Latitude E5570                    1.72 GB
> Latitude E6230                    0.81 GB
> Latitude E6330                    0.81 GB
> Latitude E6430                    1.21 GB
> Latitude E6430s                   1.20 GB
> Latitude E6440                    2.37 GB
> Latitude E6530                    1.22 GB
> Latitude E6540                    2.38 GB
> Latitude E7240                    1.19 GB
> Latitude E7250                    1.46 GB
> Latitude E7270                    1.22 GB
> Latitude E7440                    1.20 GB
> Latitude E7450                    1.87 GB
> Latitude E7470                    1.18 GB
> Latitude XT3                      0.19 GB
> Optiplex 3010                     1.19 GB
> Optiplex 3011 AIO                 1.05 GB
> Optiplex 3020                     1.43 GB
> Optiplex 3020M                    1.08 GB
> Optiplex 3030 AIO                 1.62 GB
> OptiPlex 3040                     1.82 GB
> OptiPlex 3046                     1.40 GB
> Optiplex 3050                     1.34 GB
> Optiplex 3050 AIO                 0.99 GB
> Optiplex 3240 AIO                 1.40 GB
> Optiplex 5040                     1.49 GB
> Optiplex 5050                     1.34 GB
> Optiplex 5055                     1.02 GB
> Optiplex 5250 AIO                 1.33 GB
> Optiplex 7010                     1.57 GB
> Optiplex 7020                     1.47 GB
> Optiplex 7040                     1.64 GB
> Optiplex 7050                     1.34 GB
> Optiplex 7440 AIO                 1.40 GB
> Optiplex 7450 AIO                 1.33 GB
> Optiplex 9010                     1.76 GB
> Optiplex 9010 AIO                 0.66 GB
> Optiplex 9020                     1.70 GB
> Optiplex 9020 AIO                 2.00 GB
> Optiplex 9020M                    1.10 GB
> Optiplex 9030 AIO                 2.17 GB
> Optiplex XE2                      2.31 GB
> Precision 3510                    1.74 GB
> Precision 3520                    1.46 GB
> Precision 5510                    1.73 GB
> Precision 5520                    1.51 GB
> Precision 5720 AIO                1.39 GB
> Precision 7520                    1.84 GB
> Precision 7720                    1.84 GB
> Precision M2800                   1.76 GB
> Precision M3800                   1.48 GB
> Precision M4700                   1.90 GB
> Precision M4800                   2.39 GB
> Precision M6700                   1.90 GB
> Precision M6800                   2.39 GB
> Precision Mobile Workstation 7510 1.95 GB
> Precision Mobile Workstation 7710 1.95 GB
> Precision Precision 5820 Tower    1.29 GB
> Precision Precision 7820 Tower    1.31 GB
> Precision Precision 7920 Rack     0.65 GB
> Precision Precision 7920 Tower    1.31 GB
> Precision R5500                   0.42 GB
> Precision R7610                   1.57 GB
> Precision Rack 7910               1.43 GB
> Precision T1650                   2.03 GB
> Precision T1700                   1.86 GB
> Precision T3600                   1.21 GB
> Precision T3610                   1.58 GB
> Precision T3620                   1.71 GB
> Precision T5600                   1.21 GB
> Precision T5610                   1.58 GB
> Precision T7600                   1.21 GB
> Precision T7610                   1.58 GB
> Precision Tower 3420              1.66 GB
> Precision Tower 5810              2.38 GB
> Precision Tower 7810              2.37 GB
> Precision Tower 7910              2.37 GB
> Tablet 5130                       0.61 GB
> Tablet 5855                       0.69 GB
> Venue 10 Pro 5056                 0.69 GB
> Venue 11 Pro 7130                 0.83 GB
> Venue 11 Pro 7130 vPro            0.83 GB
> Venue 11 Pro 7140                 0.86 GB
> ```




---

Modified: {{ file.mtime }}