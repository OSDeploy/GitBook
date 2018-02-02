# Optimize Dell Windows 10

Let's try to see what we can do for Dell Driver Packs on Windows 10 x64.  If we are using the "Total Control" method for Driver Management, then we have almost 140 Driver Packs at close to 192 GB of space.  This is our starting point.

| Total Control | Number of Packs | Download Size | Repository Size |
| :--- | :--- | :--- | :--- |
| Dell Model Packs | 138 | 84.10 | 191.70 |

---

## Switch from Dell Model Packs to Dell Family Packs

The best change that you can make is to completely switch over from using individual Model Packs to

| Action | Number of Packs | Download Size | Recovered Space | New Repository Size |
| :--- | :--- | :--- | :--- | :--- |
| Family Pack Switch | 28 | 37.80 GB | 114.83 GB | 76.87 GB |

And here is what our Dell Family Pack Drivers look like when they are expanded.  Two of them are less than 1 GB in size.

```
Win10_Latitude3x40_A01        1.13 GB
Win10_LatitudeE10_A01         1.86 GB
Win10_LatitudeE5_A02          2.26 GB
Win10_LatitudeE6XFR_A04       3.48 GB
Win10_LatitudeE6_A10          3.27 GB
Win10_LatitudeE7_A12          2.37 GB
Win10_LatitudeE8Rugged_A09    3.36 GB
Win10_LatitudeE8Tablet_A11    5.23 GB
Win10_LatitudeE8_A18          5.04 GB
Win10_LatitudeE9Rugged_A01    2.08 GB
Win10_LatitudeE9Tablet_A08    2.37 GB
Win10_LatitudeE9_A11          5.85 GB
Win10_LatitudeE10_A01         1.86 GB
Win10_OptiPlexD4_A02          1.70 GB
Win10_OptiPlexD5_A08          1.78 GB
Win10_OptiPlexD6_A09          3.39 GB
Win10_OptiPlexD7_A16          2.56 GB
Win10_OptiPlexD8_A11          3.47 GB
Win10_PrecisionM3800_A00      1.28 GB
Win10_PrecisionM5_A02         1.99 GB
Win10_PrecisionM6_A17         5.80 GB
Win10_PrecisionM7_A06         4.41 GB
Win10_PrecisionWS5_A03        1.44 GB
Win10_PrecisionWS6_A13        1.80 GB
Win10_PrecisionWS7_A16        3.01 GB
Win10_PrecisionWS8_A08        2.80 GB
Win10_VenuePro2_A03           1.39 GB
Win10_VenuePro3_A03           0.99 GB*
Win10_VenuePro4_A11           0.74 GB*
```

---

## Remove x86 Drivers

One issue with the way Dell has their Family and Model Packs is that they contain drivers for both 32 and 64 Bit architectures.  If you need to x86 Drivers, then split them off in their own Repository.  If you don't intend on deploying Windows 10 x86, then you just saved 1.23 GB.  I've marked the notable changes in the Driver List.

| Action | Recovered Space | New Repository Size |
| :--- | :--- | :--- |
| Remove x86 Drivers | 1.23 GB | 75.64 GB |

And then there were three

```
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
Win10_LatitudeE9_A11          5.85 GB
Win10_LatitudeE10_A01         1.86 GB
Win10_OptiPlexD4_A02          0.76 GB*
Win10_OptiPlexD5_A08          1.78 GB
Win10_OptiPlexD6_A09          3.39 GB
Win10_OptiPlexD7_A16          2.56 GB
Win10_OptiPlexD8_A11          3.47 GB
Win10_PrecisionM3800_A00      1.28 GB
Win10_PrecisionM5_A02         1.99 GB
Win10_PrecisionM6_A17         5.80 GB
Win10_PrecisionM7_A06         4.41 GB
Win10_PrecisionWS5_A03        1.44 GB
Win10_PrecisionWS6_A13        1.80 GB
Win10_PrecisionWS7_A16        3.01 GB
Win10_PrecisionWS8_A08        2.79 GB
Win10_VenuePro2_A03           1.15 GB
Win10_VenuePro3_A03           0.99 GB*
Win10_VenuePro4_A11           0.74 GB*
```

---

## Remove Intel Video Drivers

There is no need to have 49 separate instances of Intel Video Drivers in 28 Driver Packs.  Almost 30GB can be recovered by removing them.

Its important to note that Intel only makes 3 Windows 10 x64 Drivers that you can download and place in your Driver Repository.

| Action | Recovered Space | New Repository Size |
| :--- | :--- | :--- |
| Remove Intel Video Drivers | 28.79 GB | 46.85 GB |

```
Win10_Latitude3x40_A01\Latitude3x40\win10\x64\chipset\7W9YT
Win10_Latitude3x40_A01\Latitude3x40\win10\x64\video\FGGYJ
Win10_LatitudeE10_A01\LatitudeE10\WIN10\x64\Video\86N56
Win10_LatitudeE5_A02\LatitudeE5\win10\x64\video\1C5FX
Win10_LatitudeE6XFR_A04\LatitudeE6XFR\Win10\x64\video\1C5FX
Win10_LatitudeE6XFR_A04\LatitudeE6XFR\Win10\x64\video\7W9YT
Win10_LatitudeE6XFR_A04\LatitudeE6XFR\Win10\x64\video\V387Y
Win10_LatitudeE6_A10\LatitudeE6\win10\x64\video\7W9YT
Win10_LatitudeE6_A10\LatitudeE6\win10\x64\video\F1FMC
Win10_LatitudeE7_A12\LatitudeE7\WIN10\x64\Video\8F4CH
Win10_LatitudeE7_A12\LatitudeE7\WIN10\x64\Video\YXJG1
Win10_LatitudeE8Rugged_A09\LatitudeE8Rugged\WIN10\x64\Video\0RC06
Win10_LatitudeE8Rugged_A09\LatitudeE8Rugged\WIN10\x64\Video\C2N7T
Win10_LatitudeE8Rugged_A09\LatitudeE8Rugged\WIN10\x64\Video\G7Y13
Win10_LatitudeE8Tablet_A11\LatitudeE8Tablet\WIN10\x64\Video\422H7
Win10_LatitudeE8Tablet_A11\LatitudeE8Tablet\WIN10\x64\Video\96JC4
Win10_LatitudeE8Tablet_A11\LatitudeE8Tablet\WIN10\x64\Video\M0MM8
Win10_LatitudeE8Tablet_A11\LatitudeE8Tablet\WIN10\x64\Video\XPJ04
Win10_LatitudeE8_A18\LatitudeE8\WIN10\x64\Video\8K9N3
Win10_LatitudeE8_A18\LatitudeE8\WIN10\x64\Video\C2N7T
Win10_LatitudeE8_A18\LatitudeE8\WIN10\x64\Video\MKHKR
Win10_LatitudeE8_A18\LatitudeE8\WIN10\x64\Video\N8YN8
Win10_LatitudeE8_A18\LatitudeE8\WIN10\x64\Video\YXJG1
Win10_LatitudeE9Rugged_A01\LatitudeE9Rugged\WIN10\x64\Video\76MNH
Win10_LatitudeE9Rugged_A01\LatitudeE9Rugged\WIN10\x64\Video\PRX5T
Win10_LatitudeE9Tablet_A08\LatitudeE9Tablet\Win10\x64\video\87C62
Win10_LatitudeE9Tablet_A08\LatitudeE9Tablet\Win10\x64\video\FRD5G
Win10_LatitudeE9_A11\LatitudeE9\WIN10\x64\Video\8K9N3
Win10_LatitudeE9_A11\LatitudeE9\WIN10\x64\Video\C2N7T
Win10_LatitudeE9_A11\LatitudeE9\WIN10\x64\Video\K80JK
Win10_LatitudeE10_A01\LatitudeE10\WIN10\x64\Video\86N56
Win10_OptiPlexD5_A08\OptiplexD5\win10\x64\video\TH44Y
Win10_OptiPlexD6_A09\OptiplexD6\Win10\x64\video\YNWYT
Win10_OptiPlexD7_A16\OptiplexD7\WIN10\x64\Video\TDP4X
Win10_OptiPlexD8_A11\OptiplexD8\WIN10\x64\Video\9X1XX
Win10_PrecisionM3800_A00\PrecisionM3800\win10\x64\video\7C6X2
Win10_PrecisionM5_A02\PrecisionM5\Win10\x64\video\7W9YT
Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Video\8K9N3
Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Video\HC82C
Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Video\M56HN
Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Video\YXJG1
Win10_PrecisionM7_A06\PrecisionM7\WIN10\x64\Video\8K9N3
Win10_PrecisionM7_A06\PrecisionM7\WIN10\x64\Video\9FFYR
Win10_PrecisionWS5_A03\PrecisionWS5\win10\x64\video\Y9JM5
Win10_PrecisionWS7_A16\PrecisionWS7\WIN10\x64\Video\9X1XX
Win10_PrecisionWS8_A08\PrecisionWS8\WIN10\x64\Video\5M3W3
Win10_VenuePro2_A03\VenuePro2\Win10\x64\chipset\8W9WP\drivers\kit60888.inf
Win10_VenuePro2_A03\VenuePro2\Win10\x64\video\7W9YT
Win10_VenuePro3_A03\VenuePro3\win10\x64\video\V387Y
Win10_VenuePro4_A11\VenuePro4\win10\x64\chipset\HTMRY\Drivers\Graphics
```

9 Family Packs are now less than 1 GB in size

```
Win10_Latitude3x40_A01        0.33 GB*
Win10_LatitudeE5_A02          1.74 GB
Win10_LatitudeE6XFR_A04       2.00 GB
Win10_LatitudeE6_A10          2.49 GB
Win10_LatitudeE7_A12          1.34 GB
Win10_LatitudeE8Rugged_A09    1.61 GB
Win10_LatitudeE8Tablet_A11    2.65 GB
Win10_LatitudeE8_A18          2.07 GB
Win10_LatitudeE9Rugged_A01    0.54 GB*
Win10_LatitudeE9Tablet_A08    0.97 GB*
Win10_LatitudeE9_A11          3.77 GB
Win10_LatitudeE10_A01         1.02 GB
Win10_OptiPlexD4_A02          0.76 GB*
Win10_OptiPlexD5_A08          1.26 GB
Win10_OptiPlexD6_A09          2.86 GB
Win10_OptiPlexD7_A16          1.86 GB
Win10_OptiPlexD8_A11          2.77 GB
Win10_PrecisionM3800_A00      0.80 GB*
Win10_PrecisionM5_A02         1.51 GB
Win10_PrecisionM6_A17         3.19 GB
Win10_PrecisionM7_A06         3.02 GB
Win10_PrecisionWS5_A03        0.94 GB*
Win10_PrecisionWS6_A13        1.80 GB
Win10_PrecisionWS7_A16        2.31 GB
Win10_PrecisionWS8_A08        2.09 GB
Win10_VenuePro2_A03           0.37 GB*
Win10_VenuePro3_A03           0.52 GB*
Win10_VenuePro4_A11           0.26 GB*
```

---

## Remove Intel Wireless

Intel again saves the day by providing ONE Driver that replaces everything that Dell includes

| Action | Recovered Space | New Repository Size |
| :--- | :--- | :--- |
| Remove Intel Wireless | 2.88 GB | 43.97 GB |

46 drivers can be removed

```
Win10_Latitude3x40_A01\Latitude3x40\win10\x64\network\YH1F1
Win10_LatitudeE5_A02\LatitudeE5\win10\x64\network\MHJ5D
Win10_LatitudeE5_A02\LatitudeE5\win10\x64\network\YH1F1
Win10_LatitudeE6_A10\LatitudeE6\win10\x64\network\5TR5K
Win10_LatitudeE6_A10\LatitudeE6\win10\x64\network\6NY21
Win10_LatitudeE6XFR_A04\LatitudeE6XFR\Win10\x64\network\MHJ5D
Win10_LatitudeE7_A12\LatitudeE7\WIN10\x64\Network\3NWJ4
Win10_LatitudeE7_A12\LatitudeE7\WIN10\x64\Network\5TR5K
Win10_LatitudeE7_A12\LatitudeE7\WIN10\x64\Network\7Y86J
Win10_LatitudeE7_A12\LatitudeE7\WIN10\x64\Network\G1DMT
Win10_LatitudeE8_A18\LatitudeE8\WIN10\x64\Network\005JW
Win10_LatitudeE8_A18\LatitudeE8\WIN10\x64\Network\3NWJ4
Win10_LatitudeE8Rugged_A09\LatitudeE8Rugged\WIN10\x64\Network\005JW
Win10_LatitudeE8Tablet_A11\LatitudeE8Tablet\WIN10\x64\Network\005JW
Win10_LatitudeE8Tablet_A11\LatitudeE8Tablet\WIN10\x64\Network\HK6GP
Win10_LatitudeE9_A11\LatitudeE9\WIN10\x64\Network\17JWD
Win10_LatitudeE9_A11\LatitudeE9\WIN10\x64\Network\FXNFM
Win10_LatitudeE9_A11\LatitudeE9\WIN10\x64\Network\KC34F
Win10_LatitudeE9_A11\LatitudeE9\WIN10\x64\Network\MRT4R
Win10_LatitudeE9Rugged_A01\LatitudeE9Rugged\WIN10\x64\Network\MRT4R
Win10_LatitudeE9Tablet_A08\LatitudeE9Tablet\Win10\x64\network\026FT
Win10_LatitudeE9Tablet_A08\LatitudeE9Tablet\Win10\x64\network\7KY5F
Win10_LatitudeE10_A01\LatitudeE10\WIN10\x64\Network\0JGJF
Win10_OptiPlexD6_A09\OptiplexD6\Win10\x64\network\MHJ5D
Win10_OptiPlexD7_A16\OptiplexD7\WIN10\x64\Network\G1DMT
Win10_OptiPlexD8_A11\OptiplexD8\WIN10\x64\Network\026FT
Win10_OptiPlexD8_A11\OptiplexD8\WIN10\x64\Network\8CWXR
Win10_OptiPlexD8_A11\OptiplexD8\WIN10\x64\Network\FXNFM
Win10_PrecisionM3800_A00\PrecisionM3800\win10\x64\network\4VK20
Win10_PrecisionM5_A02\PrecisionM5\Win10\x64\network\MHJ5D
Win10_PrecisionM5_A02\PrecisionM5\Win10\x64\network\Y37J5
Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Network\005JW
Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Network\G1DMT
Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Network\MVH6C
Win10_PrecisionM7_A06\PrecisionM7\WIN10\x64\Network\6HT23
Win10_PrecisionM7_A06\PrecisionM7\WIN10\x64\Network\71XN1
Win10_PrecisionM7_A06\PrecisionM7\WIN10\x64\Network\FXNFM
Win10_PrecisionWS7_A16\PrecisionWS7\WIN10\x64\Network\FMTKF
Win10_PrecisionWS7_A16\PrecisionWS7\WIN10\x64\Network\G1DMT
Win10_PrecisionWS8_A08\PrecisionWS8\WIN10\x64\Network\005JW
Win10_PrecisionWS8_A08\PrecisionWS8\WIN10\x64\Network\3NWJ4
Win10_VenuePro2_A03\VenuePro2\Win10\x64\network\5784M
Win10_VenuePro2_A03\VenuePro2\Win10\x64\network\Y37J5
Win10_VenuePro3_A03\VenuePro3\win10\x64\network\54KPC
Win10_VenuePro3_A03\VenuePro3\win10\x64\network\VPP0T
Win10_VenuePro4_A11\VenuePro4\win10\x64\network\NN49G
```

Making 10 Family Driver Packs less than 1 GB

```
Win10_Latitude3x40_A01        0.29 GB*
Win10_LatitudeE5_A02          1.61 GB
Win10_LatitudeE6XFR_A04       1.94 GB
Win10_LatitudeE6_A10          2.39 GB
Win10_LatitudeE7_A12          1.09 GB
Win10_LatitudeE8Rugged_A09    1.53 GB
Win10_LatitudeE8Tablet_A11    2.52 GB
Win10_LatitudeE8_A18          1.91 GB
Win10_LatitudeE9Rugged_A01    0.45 GB*
Win10_LatitudeE9Tablet_A08    0.83 GB*
Win10_LatitudeE9_A11          3.48 GB
Win10_LatitudeE10_A01         0.94 GB*
Win10_OptiPlexD4_A02          0.76 GB*
Win10_OptiPlexD5_A08          1.26 GB
Win10_OptiPlexD6_A09          2.79 GB
Win10_OptiPlexD7_A16          1.79 GB
Win10_OptiPlexD8_A11          2.59 GB
Win10_PrecisionM3800_A00      0.77 GB*
Win10_PrecisionM5_A02         1.42 GB
Win10_PrecisionM6_A17         2.98 GB
Win10_PrecisionM7_A06         2.83 GB
Win10_PrecisionWS5_A03        0.94 GB*
Win10_PrecisionWS6_A13        1.80 GB
Win10_PrecisionWS7_A16        2.17 GB
Win10_PrecisionWS8_A08        1.93 GB
Win10_VenuePro2_A03           0.31 GB*
Win10_VenuePro3_A03           0.44 GB*
Win10_VenuePro4_A11           0.21 GB*
```

---

## Remove Intel Bluetooth

Almost 300 MB will be saved by using Intel's download

| Action | Recovered Space | New Repository Size |
| :--- | :--- | :--- |
| Remove Intel Bluetooth | 0.27 GB | 43.70 GB |

41 Drivers can be removed

```
Win10_Latitude3x40_A01\Latitude3x40\win10\x64\network\VHM3T
Win10_LatitudeE5_A02\LatitudeE5\win10\x64\network\N7VN8
Win10_LatitudeE5_A02\LatitudeE5\win10\x64\network\VHM3T
Win10_LatitudeE6_A10\LatitudeE6\win10\x64\network\N7VN8
Win10_LatitudeE6_A10\LatitudeE6\win10\x64\network\YC1X4
Win10_LatitudeE6XFR_A04\LatitudeE6XFR\Win10\x64\network\N7VN8
Win10_LatitudeE6XFR_A04\LatitudeE6XFR\Win10\x64\network\VHM3T
Win10_LatitudeE7_A12\LatitudeE7\WIN10\x64\Network\N7VN8
Win10_LatitudeE8_A18\LatitudeE8\WIN10\x64\Network\6CC6W
Win10_LatitudeE8_A18\LatitudeE8\WIN10\x64\Network\N7VN8
Win10_LatitudeE8Rugged_A09\LatitudeE8Rugged\WIN10\x64\Network\N7VN8
Win10_LatitudeE8Tablet_A11\LatitudeE8Tablet\WIN10\x64\Network\7JR0Y
Win10_LatitudeE8Tablet_A11\LatitudeE8Tablet\WIN10\x64\Network\85C7G
Win10_LatitudeE8Tablet_A11\LatitudeE8Tablet\WIN10\x64\Network\GNMWW
Win10_LatitudeE9_A11\LatitudeE9\WIN10\x64\Network\3CKVY
Win10_LatitudeE9_A11\LatitudeE9\WIN10\x64\Network\D4WRW
Win10_LatitudeE9Rugged_A01\LatitudeE9Rugged\WIN10\x64\Network\D4WRW
Win10_LatitudeE9Tablet_A08\LatitudeE9Tablet\Win10\x64\network\3CKVY
Win10_LatitudeE9Tablet_A08\LatitudeE9Tablet\Win10\x64\network\7JR0Y
Win10_LatitudeE10_A01\LatitudeE10\WIN10\x64\Network\D4WRW
Win10_OptiPlexD6_A09\OptiplexD6\Win10\x64\network\N7VN8
Win10_OptiPlexD7_A16\OptiplexD7\WIN10\x64\Network\DXHC8
Win10_OptiPlexD8_A11\OptiplexD8\WIN10\x64\Network\3CKVY
Win10_OptiPlexD8_A11\OptiplexD8\WIN10\x64\Network\773NP
Win10_OptiPlexD8_A11\OptiplexD8\WIN10\x64\Network\7JR0Y
Win10_OptiPlexD8_A11\OptiplexD8\WIN10\x64\Network\D4WRW
Win10_PrecisionM3800_A00\PrecisionM3800\win10\x64\network\HY3GF
Win10_PrecisionM5_A02\PrecisionM5\Win10\x64\network\N7VN8
Win10_PrecisionM5_A02\PrecisionM5\Win10\x64\network\VHM3T
Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Communications\85C7G
Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Communications\F983X
Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Network\85C7G
Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Network\N7VN8
Win10_PrecisionM7_A06\PrecisionM7\WIN10\x64\Network\3CKVY
Win10_PrecisionM7_A06\PrecisionM7\WIN10\x64\Network\JD2W0
Win10_PrecisionWS7_A16\PrecisionWS7\WIN10\x64\Network\D4WRW
Win10_PrecisionWS8_A08\PrecisionWS8\WIN10\x64\Network\D4WRW
Win10_VenuePro2_A03\VenuePro2\Win10\x64\network\VHM3T
Win10_VenuePro3_A03\VenuePro3\win10\x64\network\YC1X4
Win10_VenuePro4_A11\VenuePro4\win10\x64\network\6CC6W
Win10_VenuePro4_A11\VenuePro4\win10\x64\network\YYD6F
```

```
Win10_Latitude3x40_A01        0.28 GB*
Win10_LatitudeE5_A02          1.60 GB
Win10_LatitudeE6XFR_A04       1.93 GB
Win10_LatitudeE6_A10          2.38 GB
Win10_LatitudeE7_A12          1.08 GB
Win10_LatitudeE8Rugged_A09    1.52 GB
Win10_LatitudeE8Tablet_A11    2.50 GB
Win10_LatitudeE8_A18          1.89 GB
Win10_LatitudeE9Rugged_A01    0.45 GB*
Win10_LatitudeE9Tablet_A08    0.82 GB*
Win10_LatitudeE9_A11          3.47 GB
Win10_LatitudeE10_A01         0.94 GB*
Win10_OptiPlexD4_A02          0.76 GB*
Win10_OptiPlexD5_A08          1.26 GB
Win10_OptiPlexD6_A09          2.79 GB
Win10_OptiPlexD7_A16          1.79 GB
Win10_OptiPlexD8_A11          2.56 GB
Win10_PrecisionM3800_A00      0.77 GB*
Win10_PrecisionM5_A02         1.41 GB
Win10_PrecisionM6_A17         2.95 GB
Win10_PrecisionM7_A06         2.79 GB
Win10_PrecisionWS5_A03        0.94 GB*
Win10_PrecisionWS6_A13        1.80 GB
Win10_PrecisionWS7_A16        2.16 GB
Win10_PrecisionWS8_A08        1.92 GB
Win10_VenuePro2_A03           0.31 GB*
Win10_VenuePro3_A03           0.44 GB*
Win10_VenuePro4_A11           0.20 GB*
```

---

## Remove Intel Ethernet

Not much savings here, but at least every Intel Ethernet Driver is the latest version.  At this point its time to look at some non-Intel Drivers.

| Action | Recovered Space | New Repository Size |
| :--- | :--- | :--- |
| Remove Intel Ethernet | 0.22 GB | 43.48 GB |

32 instances to remove

```
Win10x64\Win10_Latitude3x40_A01\Latitude3x40\win10\x64\network\0J8HP
Win10x64\Win10_LatitudeE5_A02\LatitudeE5\win10\x64\network\0J8HP
Win10x64\Win10_LatitudeE6_A10\LatitudeE6\win10\x64\network\0J8HP
Win10x64\Win10_LatitudeE6XFR_A04\LatitudeE6XFR\Win10\x64\network\0J8HP
Win10x64\Win10_LatitudeE6XFR_A04\LatitudeE6XFR\Win10\x64\network\MXH3C
Win10x64\Win10_LatitudeE6XFR_A04\LatitudeE6XFR\Win10\x64\network\N6RY0
Win10x64\Win10_LatitudeE8_A18\LatitudeE8\WIN10\x64\Network\CY5NJ
Win10x64\Win10_LatitudeE8Rugged_A09\LatitudeE8Rugged\WIN10\x64\Network\4VV8G
Win10x64\Win10_LatitudeE8Rugged_A09\LatitudeE8Rugged\WIN10\x64\Network\D8VDT
Win10x64\Win10_LatitudeE9_A11\LatitudeE9\WIN10\x64\Network\4VV8G
Win10x64\Win10_LatitudeE9_A11\LatitudeE9\WIN10\x64\Network\D8VDT
Win10x64\Win10_LatitudeE10_A01\LatitudeE10\WIN10\x64\Network\D8VDT
Win10x64\Win10_OptiPlexD4_A02\OptiplexD4\Win10\x64\network\N6RY0
Win10x64\Win10_OptiPlexD5_A08\OptiplexD5\win10\x64\network\0J8HP
Win10x64\Win10_OptiPlexD6_A09\OptiplexD6\Win10\x64\network\0J8HP
Win10x64\Win10_OptiPlexD6_A09\OptiplexD6\Win10\x64\network\N6RY0
Win10x64\Win10_OptiPlexD7_A16\OptiplexD7\WIN10\x64\Network\CY5NJ
Win10x64\Win10_OptiPlexD8_A11\OptiplexD8\WIN10\x64\Network\D8VDT
Win10x64\Win10_OptiPlexD8_A11\OptiplexD8\WIN10\x64\Network\WJ8PK
Win10x64\Win10_PrecisionM5_A02\PrecisionM5\Win10\x64\network\0J8HP
Win10x64\Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Network\CY5NJ
Win10x64\Win10_PrecisionM7_A06\PrecisionM7\WIN10\x64\Network\WJ8PK
Win10x64\Win10_PrecisionWS5_A03\PrecisionWS5\win10\x64\network\0J8HP
Win10x64\Win10_PrecisionWS5_A03\PrecisionWS5\win10\x64\network\N6RY0
Win10x64\Win10_PrecisionWS6_A13\PrecisionWS6\WIN10\x64\Network\0J8HP
Win10x64\Win10_PrecisionWS6_A13\PrecisionWS6\WIN10\x64\Network\3PT51
Win10x64\Win10_PrecisionWS7_A16\PrecisionWS7\WIN10\x64\Network\0J8HP
Win10x64\Win10_PrecisionWS7_A16\PrecisionWS7\WIN10\x64\Network\CY5NJ
Win10x64\Win10_PrecisionWS7_A16\PrecisionWS7\WIN10\x64\Network\D8VDT
Win10x64\Win10_PrecisionWS7_A16\PrecisionWS7\WIN10\x64\Network\WJ8PK
Win10x64\Win10_PrecisionWS8_A08\PrecisionWS8\WIN10\x64\Network\3PT51
Win10x64\Win10_PrecisionWS8_A08\PrecisionWS8\WIN10\x64\Network\D8VDT
```

```
Win10_Latitude3x40_A01        0.28 GB*
Win10_LatitudeE5_A02          1.60 GB
Win10_LatitudeE6XFR_A04       1.93 GB
Win10_LatitudeE6_A10          2.37 GB
Win10_LatitudeE7_A12          1.08 GB
Win10_LatitudeE8Rugged_A09    1.52 GB
Win10_LatitudeE8Tablet_A11    2.50 GB
Win10_LatitudeE8_A18          1.89 GB
Win10_LatitudeE9Rugged_A01    0.45 GB*
Win10_LatitudeE9Tablet_A08    0.82 GB*
Win10_LatitudeE9_A11          3.46 GB
Win10_LatitudeE10_A01         0.93 GB*
Win10_OptiPlexD4_A02          0.75 GB*
Win10_OptiPlexD5_A08          1.25 GB
Win10_OptiPlexD6_A09          2.72 GB
Win10_OptiPlexD7_A16          1.79 GB
Win10_OptiPlexD8_A11          2.55 GB
Win10_PrecisionM3800_A00      0.77 GB*
Win10_PrecisionM5_A02         1.41 GB
Win10_PrecisionM6_A17         2.95 GB
Win10_PrecisionM7_A06         2.78 GB
Win10_PrecisionWS5_A03        0.87 GB*
Win10_PrecisionWS6_A13        1.80 GB
Win10_PrecisionWS7_A16        2.15 GB
Win10_PrecisionWS8_A08        1.92 GB
Win10_VenuePro2_A03           0.31 GB*
Win10_VenuePro3_A03           0.44 GB*
Win10_VenuePro4_A11           0.20 GB*
```

---

## Remove Nvidia Video Drivers

Since the Nvidia Video Drivers that are in Dell's Family Driver Packs are not formatted properly, then need to be removed.

| Action | Recovered Space | New Repository Size |
| :--- | :--- | :--- |
| Remove Nvidia Video Drivers |  | 35.53 GB |

We can see in these 27 Drivers what has been weighing down on the large E9 Driver Pack

```
Win10_LatitudeE5_A02\LatitudeE5\win10\x64\video\N4MHX
Win10_LatitudeE6_A10\LatitudeE6\win10\x64\video\N4MHX
Win10_LatitudeE6XFR_A04\LatitudeE6XFR\Win10\x64\video\08PKM
Win10_LatitudeE7_A12\LatitudeE7\WIN10\x64\Video\XCDV4
Win10_LatitudeE8_A18\LatitudeE8\WIN10\x64\Video\XCDV4
Win10_LatitudeE9_A11\LatitudeE9\WIN10\x64\Video\7MG3T
Win10_LatitudeE9_A11\LatitudeE9\WIN10\x64\Video\H58F8
Win10_LatitudeE9_A11\LatitudeE9\WIN10\x64\Video\K1TC4
Win10_LatitudeE9_A11\LatitudeE9\WIN10\x64\Video\K7C9J
Win10_LatitudeE10_A01\LatitudeE10\WIN10\x64\Video\02KPV
Win10_OptiPlexD4_A02\OptiplexD4\Win10\x64\video\258DX
Win10_OptiPlexD5_A08\OptiplexD5\win10\x64\video\258DX
Win10_OptiPlexD7_A16\OptiplexD7\WIN10\x64\Video\7MDNT
Win10_PrecisionM3800_A00\PrecisionM3800\win10\x64\video\9PY90
Win10_PrecisionM5_A02\PrecisionM5\Win10\x64\video\1F9M7
Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Video\242X0
Win10_PrecisionM7_A06\PrecisionM7\WIN10\x64\Video\04W6J
Win10_PrecisionM7_A06\PrecisionM7\WIN10\x64\Video\27GW3
Win10_PrecisionM7_A06\PrecisionM7\WIN10\x64\Video\CYKKX
Win10_PrecisionWS5_A03\PrecisionWS5\win10\x64\video\CY9PN
Win10_PrecisionWS6_A13\PrecisionWS6\WIN10\x64\Video\95C25
Win10_PrecisionWS6_A13\PrecisionWS6\WIN10\x64\Video\N1DWN
Win10_PrecisionWS6_A13\PrecisionWS6\WIN10\x64\Video\NV3PY
Win10_PrecisionWS7_A16\PrecisionWS7\WIN10\x64\Video\N1DWN
Win10_PrecisionWS7_A16\PrecisionWS7\WIN10\x64\Video\NV3PY
Win10_PrecisionWS8_A08\PrecisionWS8\WIN10\x64\Video\46C1H
Win10_PrecisionWS8_A08\PrecisionWS8\WIN10\x64\Video\4KXK6
```

12 Driver Packs are now smaller than 1 GB with all of them under 3 GB

```
Win10_Latitude3x40_A01        0.28 GB*
Win10_LatitudeE5_A02          1.36 GB
Win10_LatitudeE6XFR_A04       1.68 GB
Win10_LatitudeE6_A10          2.13 GB
Win10_LatitudeE7_A12          0.84 GB*
Win10_LatitudeE8Rugged_A09    1.52 GB
Win10_LatitudeE8Tablet_A11    2.50 GB
Win10_LatitudeE8_A18          1.65 GB
Win10_LatitudeE9Rugged_A01    0.45 GB*
Win10_LatitudeE9Tablet_A08    0.82 GB*
Win10_LatitudeE9_A11          2.05 GB
Win10_LatitudeE10_A01         0.61 GB*
Win10_OptiPlexD4_A02          0.51 GB*
Win10_OptiPlexD5_A08          1.01 GB
Win10_OptiPlexD6_A09          2.72 GB
Win10_OptiPlexD7_A16          1.55 GB
Win10_OptiPlexD8_A11          2.55 GB
Win10_PrecisionM3800_A00      0.52 GB*
Win10_PrecisionM5_A02         1.17 GB
Win10_PrecisionM6_A17         2.43 GB
Win10_PrecisionM7_A06         1.97 GB
Win10_PrecisionWS5_A03        0.62 GB*
Win10_PrecisionWS6_A13        0.86 GB*
Win10_PrecisionWS7_A16        1.48 GB
Win10_PrecisionWS8_A08        1.29 GB
Win10_VenuePro2_A03           0.31 GB*
Win10_VenuePro3_A03           0.44 GB*
Win10_VenuePro4_A11           0.20 GB*
```

---

## Remove AMD Video Drivers

Removing these

| Action | Recovered Space | New Repository Size |
| :--- | :--- | :--- |
| Remove AMD Video Drivers |  | 21.08 GB |

38 Drivers can be removed

```
Win10_LatitudeE5_A02\LatitudeE5\win10\x64\video\4XDT8
Win10_LatitudeE5_A02\LatitudeE5\win10\x64\video\CYT1R
Win10_LatitudeE6XFR_A04\LatitudeE6XFR\Win10\x64\video\0N1C9
Win10_LatitudeE6XFR_A04\LatitudeE6XFR\Win10\x64\video\KR4R3
Win10_LatitudeE8Rugged_A09\LatitudeE8Rugged\WIN10\x64\Video\0N1C9
Win10_LatitudeE8Rugged_A09\LatitudeE8Rugged\WIN10\x64\Video\KR4R3
Win10_LatitudeE8_A18\LatitudeE8\WIN10\x64\Video\597GN
Win10_LatitudeE8_A18\LatitudeE8\WIN10\x64\Video\5NN5H
Win10_LatitudeE9_A11\LatitudeE9\WIN10\x64\Video\NRCRR
Win10_OptiPlexD4_A02\OptiplexD4\Win10\x64\video\9WNFM
Win10_OptiPlexD5_A08\OptiplexD5\win10\x64\video\J8K2W
Win10_OptiPlexD5_A08\OptiplexD5\win10\x64\video\Y234T
Win10_OptiPlexD6_A09\OptiplexD6\Win10\x64\video\3NFDY
Win10_OptiPlexD6_A09\OptiplexD6\Win10\x64\video\5VR9K
Win10_OptiPlexD6_A09\OptiplexD6\Win10\x64\video\9WNFM
Win10_OptiPlexD6_A09\OptiplexD6\Win10\x64\video\C5FCH
Win10_OptiPlexD6_A09\OptiplexD6\Win10\x64\video\RNXYX
Win10_OptiPlexD6_A09\OptiplexD6\Win10\x64\video\TXWV6
Win10_OptiPlexD6_A09\OptiplexD6\Win10\x64\video\WJPR8
Win10_OptiPlexD7_A16\OptiplexD7\WIN10\x64\Video\F2GMG
Win10_OptiPlexD7_A16\OptiplexD7\WIN10\x64\Video\J8K2W
Win10_OptiPlexD7_A16\OptiplexD7\WIN10\x64\Video\KWRDJ
Win10_OptiPlexD8_A11\OptiplexD8\WIN10\x64\Video\3MVGD
Win10_OptiPlexD8_A11\OptiplexD8\WIN10\x64\Video\96KH4
Win10_OptiPlexD8_A11\OptiplexD8\WIN10\x64\Video\GKF44
Win10_OptiPlexD8_A11\OptiplexD8\WIN10\x64\Video\VH8GC
Win10_PrecisionM5_A02\PrecisionM5\Win10\x64\video\DC3V0
Win10_PrecisionM5_A02\PrecisionM5\Win10\x64\video\FCXTJ
Win10_PrecisionM5_A02\PrecisionM5\Win10\x64\video\JYXT7
Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Video\0Y1NR
Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Video\2HDKP
Win10_PrecisionM7_A06\PrecisionM7\WIN10\x64\Video\85C66
Win10_PrecisionWS5_A03\PrecisionWS5\win10\x64\video\MHGY8
Win10_PrecisionWS6_A13\PrecisionWS6\WIN10\x64\Video\XDVRC
Win10_PrecisionWS7_A16\PrecisionWS7\WIN10\x64\Video\JVV0Y
Win10_PrecisionWS7_A16\PrecisionWS7\WIN10\x64\Video\XDVRC
Win10_PrecisionWS8_A08\PrecisionWS8\WIN10\x64\Video\8CWJG
Win10_PrecisionWS8_A08\PrecisionWS8\WIN10\x64\Video\KW1W7
```

23 now less than 1 GB

```
Win10_Latitude3x40_A01        0.28 GB*
Win10_LatitudeE5_A02          0.64 GB*
Win10_LatitudeE6XFR_A04       0.70 GB*
Win10_LatitudeE6_A10          2.13 GB
Win10_LatitudeE7_A12          0.84 GB*
Win10_LatitudeE8Rugged_A09    0.53 GB*
Win10_LatitudeE8Tablet_A11    2.50 GB
Win10_LatitudeE8_A18          0.83 GB*
Win10_LatitudeE9Rugged_A01    0.45 GB*
Win10_LatitudeE9Tablet_A08    0.82 GB*
Win10_LatitudeE9_A11          1.71 GB
Win10_LatitudeE10_A01         0.61 GB*
Win10_OptiPlexD4_A02          0.28 GB*
Win10_OptiPlexD5_A08          0.34 GB*
Win10_OptiPlexD6_A09          0.35 GB*
Win10_OptiPlexD7_A16          0.35 GB*
Win10_OptiPlexD8_A11          0.55 GB*
Win10_PrecisionM3800_A00      0.52 GB*
Win10_PrecisionM5_A02         0.46 GB*
Win10_PrecisionM6_A17         1.50 GB
Win10_PrecisionM7_A06         1.70 GB
Win10_PrecisionWS5_A03        0.26 GB*
Win10_PrecisionWS6_A13        0.43 GB*
Win10_PrecisionWS7_A16        0.72 GB*
Win10_PrecisionWS8_A08        0.63 GB*
Win10_VenuePro2_A03           0.31 GB*
Win10_VenuePro3_A03           0.44 GB*
Win10_VenuePro4_A11           0.20 GB*
```

---

## Remove Realtek Audio Drivers

By far this is the easiest decision to make.

| Action | Recovered Space | New Repository Size |
| :--- | :--- | :--- |
| Remove Realtek Audio Drivers |  | 8.17 GB |

Remove 52 instances of these Drivers

```
Win10_Latitude3x40_A01\Latitude3x40\win10\x64\audio\5P33P
Win10_LatitudeE10_A01\LatitudeE10\WIN10\x64\Audio\M3Y66
Win10_LatitudeE5_A02\LatitudeE5\win10\x64\audio\5P33P
Win10_LatitudeE5_A02\LatitudeE5\win10\x64\audio\DFR6K
Win10_LatitudeE6XFR_A04\LatitudeE6XFR\Win10\x64\audio\5P33P
Win10_LatitudeE6XFR_A04\LatitudeE6XFR\Win10\x64\audio\DDG39
Win10_LatitudeE6_A10\LatitudeE6\win10\x64\audio\55XDF
Win10_LatitudeE6_A10\LatitudeE6\win10\x64\audio\822R6
Win10_LatitudeE6_A10\LatitudeE6\win10\x64\audio\D00J4
Win10_LatitudeE6_A10\LatitudeE6\win10\x64\audio\DDG39
Win10_LatitudeE7_A12\LatitudeE7\WIN10\x64\Audio\DDG39
Win10_LatitudeE7_A12\LatitudeE7\WIN10\x64\Audio\RT1XX
Win10_LatitudeE8Rugged_A09\LatitudeE8Rugged\WIN10\x64\Audio\331N1
Win10_LatitudeE8Tablet_A11\LatitudeE8Tablet\WIN10\x64\Audio\11NJJ
Win10_LatitudeE8Tablet_A11\LatitudeE8Tablet\WIN10\x64\Audio\94YDD
Win10_LatitudeE8Tablet_A11\LatitudeE8Tablet\WIN10\x64\Audio\CMW4W
Win10_LatitudeE8Tablet_A11\LatitudeE8Tablet\WIN10\x64\Audio\FPWDX
Win10_LatitudeE8Tablet_A11\LatitudeE8Tablet\WIN10\x64\Audio\TJJNF
Win10_LatitudeE8Tablet_A11\LatitudeE8Tablet\WIN10\x64\Audio\VR8Y0
Win10_LatitudeE8_A18\LatitudeE8\WIN10\x64\Audio\331N1
Win10_LatitudeE9Rugged_A01\LatitudeE9Rugged\WIN10\x64\Audio\HN35D
Win10_LatitudeE9Tablet_A08\LatitudeE9Tablet\Win10\x64\audio\33DRK
Win10_LatitudeE9_A11\LatitudeE9\WIN10\x64\Audio\3PPR8
Win10_LatitudeE9_A11\LatitudeE9\WIN10\x64\Audio\FH33R
Win10_LatitudeE9_A11\LatitudeE9\WIN10\x64\Audio\KK01R
Win10_LatitudeE9_A11\LatitudeE9\WIN10\x64\Audio\P71YY
Win10_OptiPlexD4_A02\OptiplexD4\Win10\x64\audio\5P33P
Win10_OptiPlexD5_A08\OptiplexD5\win10\x64\audio\DDG39
Win10_OptiPlexD6_A09\OptiplexD6\Win10\x64\audio\RT1XX
Win10_OptiPlexD7_A16\OptiplexD7\WIN10\x64\Audio\RT1XX
Win10_OptiPlexD8_A11\OptiplexD8\WIN10\x64\Audio\P71YY
Win10_OptiPlexD8_A11\OptiplexD8\WIN10\x64\Audio\VV374
Win10_PrecisionM3800_A00\PrecisionM3800\win10\x64\audio\4PWN6
Win10_PrecisionM5_A02\PrecisionM5\Win10\x64\audio\822R6
Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Audio\331N1
Win10_PrecisionM6_A17\PrecisionM6\WIN10\x64\Audio\33HNF
Win10_PrecisionM7_A06\PrecisionM7\WIN10\x64\Audio\44M2C
Win10_PrecisionM7_A06\PrecisionM7\WIN10\x64\Audio\6N60W
Win10_PrecisionM7_A06\PrecisionM7\WIN10\x64\Audio\7M5VV
Win10_PrecisionM7_A06\PrecisionM7\WIN10\x64\Audio\CC2F0
Win10_PrecisionM7_A06\PrecisionM7\WIN10\x64\Audio\DXFF2
Win10_PrecisionM7_A06\PrecisionM7\WIN10\x64\Audio\NN7PN
Win10_PrecisionM7_A06\PrecisionM7\WIN10\x64\Audio\P71YY
Win10_PrecisionWS5_A03\PrecisionWS5\win10\x64\audio\5P33P
Win10_PrecisionWS6_A13\PrecisionWS6\WIN10\x64\Audio\DDG39
Win10_PrecisionWS7_A16\PrecisionWS7\WIN10\x64\Audio\331N1
Win10_PrecisionWS8_A08\PrecisionWS8\WIN10\x64\Audio\3TFC6
Win10_PrecisionWS8_A08\PrecisionWS8\WIN10\x64\Audio\68WY3
Win10_VenuePro2_A03\VenuePro2\Win10\x64\audio\47P33
Win10_VenuePro3_A03\VenuePro3\win10\x64\audio\7MY7Y
Win10_VenuePro3_A03\VenuePro3\win10\x64\audio\8PPWX
Win10_VenuePro4_A11\VenuePro4\win10\x64\audio\FVHVT
```

And now 27 of 28 Driver Packs are less than 1 GB

```
Win10_Latitude3x40_A01        0.05 GB*
Win10_LatitudeE5_A02          0.15 GB*
Win10_LatitudeE6XFR_A04       0.19 GB*
Win10_LatitudeE6_A10          1.23 GB
Win10_LatitudeE7_A12          0.28 GB*
Win10_LatitudeE8Rugged_A09    0.25 GB*
Win10_LatitudeE8Tablet_A11    0.65 GB*
Win10_LatitudeE8_A18          0.54 GB*
Win10_LatitudeE9Rugged_A01    0.24 GB*
Win10_LatitudeE9Tablet_A08    0.58 GB*
Win10_LatitudeE9_A11          0.86 GB*
Win10_LatitudeE10_A01         0.35 GB*
Win10_OptiPlexD4_A02          0.05 GB*
Win10_OptiPlexD5_A08          0.06 GB*
Win10_OptiPlexD6_A09          0.07 GB*
Win10_OptiPlexD7_A16          0.07 GB*
Win10_OptiPlexD8_A11          0.10 GB*
Win10_PrecisionM3800_A00      0.15 GB*
Win10_PrecisionM5_A02         0.20 GB*
Win10_PrecisionM6_A17         0.72 GB*
Win10_PrecisionM7_A06         0.31 GB*
Win10_PrecisionWS5_A03        0.03 GB*
Win10_PrecisionWS6_A13        0.16 GB*
Win10_PrecisionWS7_A16        0.19 GB*
Win10_PrecisionWS8_A08        0.22 GB*
Win10_VenuePro2_A03           0.10 GB*
Win10_VenuePro3_A03           0.18 GB*
Win10_VenuePro4_A11           0.19 GB*
```

---

## Extra Cleanup

A closer look at the Latitude E6 CAB shows that things aren't quite efficient

| Action | Recovered Space | New Repository Size |
| :--- | :--- | :--- |
| Extra Cleanup |  | 7.42 GB |

Remove these directories

```
Win10_LatitudeE6_A10\LatitudeE6\win10\x64\Input\WWVKD\Windows10-x86
Win10_LatitudeE6_A10\LatitudeE6\win10\x64\Input\WWVKD\Windows7-x64
Win10_LatitudeE6_A10\LatitudeE6\win10\x64\Input\WWVKD\Windows7-x86
Win10_LatitudeE6_A10\LatitudeE6\win10\x64\Input\WWVKD\Windows8-x64
Win10_LatitudeE6_A10\LatitudeE6\win10\x64\Input\WWVKD\Windows8-x86
Win10_LatitudeE6_A10\LatitudeE6\win10\x64\Input\WWVKD\Windows8_1-x64
Win10_LatitudeE6_A10\LatitudeE6\win10\x64\Input\WWVKD\Windows8_1-x86
Win10_LatitudeE6_A10\LatitudeE6\win10\x64\Input\WWVKD\Windows9-x64
Win10_LatitudeE6_A10\LatitudeE6\win10\x64\Input\WWVKD\Windows9-x86
```

Now that's more like it

```
Win10_Latitude3x40_A01        0.05 GB*
Win10_LatitudeE5_A02          0.15 GB*
Win10_LatitudeE6XFR_A04       0.19 GB*
Win10_LatitudeE6_A10          0.48 GB*
Win10_LatitudeE7_A12          0.28 GB*
Win10_LatitudeE8Rugged_A09    0.25 GB*
Win10_LatitudeE8Tablet_A11    0.65 GB*
Win10_LatitudeE8_A18          0.54 GB*
Win10_LatitudeE9Rugged_A01    0.24 GB*
Win10_LatitudeE9Tablet_A08    0.58 GB*
Win10_LatitudeE9_A11          0.86 GB*
Win10_LatitudeE10_A01         0.35 GB*
Win10_OptiPlexD4_A02          0.05 GB*
Win10_OptiPlexD5_A08          0.06 GB*
Win10_OptiPlexD6_A09          0.07 GB*
Win10_OptiPlexD7_A16          0.07 GB*
Win10_OptiPlexD8_A11          0.10 GB*
Win10_PrecisionM3800_A00      0.15 GB*
Win10_PrecisionM5_A02         0.20 GB*
Win10_PrecisionM6_A17         0.72 GB*
Win10_PrecisionM7_A06         0.31 GB*
Win10_PrecisionWS5_A03        0.03 GB*
Win10_PrecisionWS6_A13        0.16 GB*
Win10_PrecisionWS7_A16        0.19 GB*
Win10_PrecisionWS8_A08        0.22 GB*
Win10_VenuePro2_A03           0.10 GB*
Win10_VenuePro3_A03           0.18 GB*
Win10_VenuePro4_A11           0.19 GB*
```

---

## CAB Compression

Now that we have cleaned out our Drivers, let's compress them into CAB files so we can easily work with them.

