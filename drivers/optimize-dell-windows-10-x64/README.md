# Optimize Dell Windows 10

Let's try to see what we can do for Dell Driver Packs on Windows 10 x64.  If we are using the "Total Control" method for Driver Management, then we have almost 140 Driver Packs at close to 192 GB of space.  This is our starting point.

| Description | Number of Packs | Download Size | Repository Size |
| :--- | :--- | :--- | :--- |
| Dell Model Packs | 138 | 84.10 | 191.70 |

---

## Switch from Dell Model Packs to Dell Family Packs

The best change that you can make is to completely switch over from using individual Model Packs to

| Description | Number of Packs | Download Size | Repository Size | Recovered |
| :--- | :--- | :--- | :--- | :--- |
| Family Pack Switch | 28 | 37.80 GB | 76.87 GB | 114.83 GB |

And here is what our Dell Family Pack Drivers look like when they are expanded

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
Win10_VenuePro3_A03           0.99 GB
Win10_VenuePro4_A11           0.74 GB
```

---

## Remove x86 Drivers

One issue with the way Dell has their Family and Model Packs is that they contain drivers for both 32 and 64 Bit architectures.  If you need to x86 Drivers, then split them off in their own Repository.  If you don't intend on deploying Windows 10 x86, then you just saved 1.23 GB.  I've marked the notable changes in the Driver List.

| Description | Repository | Recovered |
| :--- | :--- | :--- |
| Remove x86 Drivers | 75.64 GB | 1.23 GB |

 

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
Win10_VenuePro2_A03           1.15 GB*
Win10_VenuePro3_A03           0.99 GB
Win10_VenuePro4_A11           0.74 GB
```

---

## Remove Intel Video Drivers

There is no need to have 49 separate instances of Intel Video Drivers in 28 Driver Packs.  Almost 30GB can be recovered by removing them.

Its important to note that Intel only makes 3 Windows 10 x64 Drivers that you can download and place in your Driver Repository.

| Description | Repository | Recovered |
| :--- | :--- | :--- |
| Remove Intel Video Drivers | 46.85 GB | 28.79 GB |

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

Intel again saves the day

|  |  |  |
| :--- | :--- | :--- |
|  | 43.97 GB |  |

---

Remove Intel Bluetooth

|  |  |  |
| :--- | :--- | :--- |
|  | 43.70 |  |

---

Remove Intel Ethernet

|  |  |  |
| :--- | :--- | :--- |
|  |  |  |









