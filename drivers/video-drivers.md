# Video Drivers

By far, Video Drivers will take the most space in your Driver Repository.  Rather than a shotgun approach of having all the Video Drivers that your Computer Manufacturer makes available, why not just deploy the Video Drivers that you need.

---

## What Drivers Do You Need?

SCCM makes things easy by running a Report of Count video cards by type.  Now you know what Drivers you actually need for your Environment.  Save this as an Excel Spreadsheet as a Reference for which Drivers you need to download.

We have already accounted for out Intel Drivers, the remainder of the Drivers in your Environment should be Nvidia or AMD \(ATI\).  These are the Drivers you need to focus on.

![](/assets/2017-10-30_12-18-37.png)

---

The following list is a sample count of Video Cards, excluding Intel, Virtual Machine, and Remote Control \(Agents\)

```
No.    Count    Video Card
1    4    AMD 7200
2    20    AMD ES1000
3    2    AMD FireMV 2400
4    4    AMD FirePro 2270
5    3    AMD FirePro M5100
6    1    AMD FirePro M6100
7    2    AMD FirePro V4800
8    4    AMD FirePro V4900
9    1    AMD FirePro V5900
10    1    AMD FirePro V7900
11    1    AMD FirePro V8700
12    1    AMD FirePro W4100
13    11    AMD FirePro W5000
14    2    AMD FirePro W7000
15    11    AMD Mobility Radeon X300
16    5    AMD Radeon 7000
17    19    AMD Radeon E2400
18    18    AMD Radeon E4690
19    2    AMD Radeon E6460
20    5    AMD Radeon HD 2400 Pro
21    8    AMD Radeon HD 2400 XT
22    1    AMD Radeon HD 2600 Pro
23    1    AMD Radeon HD 2600 XT
24    5    AMD Radeon HD 3400
25    15    AMD Radeon HD 3450
26    1    AMD Radeon HD 3470
27    1    AMD Radeon HD 4600
28    1    AMD Radeon HD 5400
29    13    AMD Radeon HD 5450
30    5    AMD Radeon HD 6350
31    7    AMD Radeon HD 6450
32    1    AMD Radeon HD 6570
33    1    AMD Radeon HD 6900
34    11    AMD Radeon HD 7000
35    1    AMD Radeon HD 7450
36    37    AMD Radeon HD 7470
37    1    AMD Radeon HD 7500
38    3    AMD Radeon HD 7570
39    14    AMD Radeon HD 7700
40    10    AMD Radeon HD 8690M
41    1    AMD Radeon HD 8950
42    5    AMD Radeon R5 240
43    8    AMD Radeon R7 M360
44    1    AMD Radeon R9 M200X
45    3    AMD Radeon X1300/X1550
46    1    AMD Radeon X1300XT/X1600Pro
47    1    AMD Radeon X300/X550/X1050
48    1    AMD Radeon X600
49    3    Matrox G200e
50    2    Matrox G200eH
51    47    Matrox G200eR
52    12    Matrox G200eV
53    10    Matrox G200eW
54    3    Matrox M9138 LP
55    4    Matrox M9140 LP
56    2    Matrox M9188 ATX
57    1    Matrox Millennium P650
58    13    NVIDIA GeForce 210
59    1    NVIDIA GeForce 7300GS
60    1    NVIDIA GeForce 8400GS
61    1    NVIDIA GeForce 840M
62    1    NVIDIA GeForce 8600GT
63    1    NVIDIA GeForce GT 330
64    1    NVIDIA GeForce GT 440
65    9    NVIDIA GeForce GT 610
66    251    NVIDIA GeForce GT 720M
67    1    NVIDIA GeForce GT 740M
68    1    NVIDIA GeForce GTX 570
69    1    NVIDIA GeForce GTX 750
70    47    NVIDIA GRID M60-0Q
71    11    NVIDIA NVS 300
72    9    NVIDIA NVS 310
73    129    NVIDIA NVS 3100M
74    3223    NVIDIA NVS 4200M
75    46    NVIDIA NVS 510
76    6312    NVIDIA NVS 5200M
77    344    NVIDIA Quadro 1000M
78    346    NVIDIA Quadro 2000
79    8    NVIDIA Quadro 2000M
80    49    NVIDIA Quadro 3000M
81    4    NVIDIA Quadro 400
82    551    NVIDIA Quadro 4000
83    7    NVIDIA Quadro 5000
84    19    NVIDIA Quadro 600
85    4    NVIDIA Quadro 6000
86    3    NVIDIA Quadro FX 1400
87    9    NVIDIA Quadro FX 1600M
88    4    NVIDIA Quadro FX 1700
89    3    NVIDIA Quadro FX 1700M
90    11    NVIDIA Quadro FX 1800
91    27    NVIDIA Quadro FX 1800M
92    34    NVIDIA Quadro FX 2800M
93    22    NVIDIA Quadro FX 3450/4000 SDI
94    1    NVIDIA Quadro FX 370 LP
95    2    NVIDIA Quadro FX 3700
96    4    NVIDIA Quadro FX 3800
97    1    NVIDIA Quadro FX 4500
98    1    NVIDIA Quadro FX 4600
99    3    NVIDIA Quadro FX 560M
100    66    NVIDIA Quadro FX 570
101    167    NVIDIA Quadro FX 580
102    2    NVIDIA Quadro FX 770M
103    5    NVIDIA Quadro FX 880M
104    436    NVIDIA Quadro K1000M
105    461    NVIDIA Quadro K1100M
106    71    NVIDIA Quadro K2000
107    54    NVIDIA Quadro K2000M
108    203    NVIDIA Quadro K2100M
109    21    NVIDIA Quadro K2200
110    162    NVIDIA Quadro K3000M
111    218    NVIDIA Quadro K3100M
112    413    NVIDIA Quadro K4000
113    2    NVIDIA Quadro K4000M
114    1    NVIDIA Quadro K4100M
115    6    NVIDIA Quadro K4200
116    23    NVIDIA Quadro K5000
117    21    NVIDIA Quadro K600
118    1    NVIDIA Quadro K6000
119    4    NVIDIA Quadro K620
120    3    NVIDIA Quadro M1000M
121    5    NVIDIA Quadro M2000
122    1002    NVIDIA Quadro M2000M
123    8    NVIDIA Quadro M2200
124    262    NVIDIA Quadro M3000M
125    192    NVIDIA Quadro M4000
126    2    NVIDIA Quadro M5000
127    8    NVIDIA Quadro NVS 160M
128    6    NVIDIA Quadro NVS 290
129    6    NVIDIA Quadro NVS 295
130    28    NVIDIA Quadro NVS 420
131    3    NVIDIA Tesla C1060
132    2    NVIDIA Tesla C2070
133    3    NVIDIA Tesla C2075
134    6    NVIDIA Tesla K20c
```



