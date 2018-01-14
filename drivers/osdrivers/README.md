# Introduction to OSDrivers

OSDrivers is a method to reduce the size of our Driver Repository by removing Duplicates.

---

## Working Repository

In the previous pages, we determined that for Dell Systems, we would use the Dell Family Packs to reduce the size of our Driver Repository.  Currently Dell has 27 Driver Packs.  They have been downloaded and extracted using the Dell Family Pack Downloader.

We will start by placing the Extracted Drivers in a Working Repository where we will make all our changes.  I'll go ahead and use a logical Directory Structure.

```
D:\OSDeploy\OSDriversDEV\Working\Manufacturer\Dell Win10 x64
```

I'm not a fan of the Dell Naming structure

![](/assets/2017-11-17_12-51-37.png)

So I will adopt something a little more user friendly

![](/assets/2017-11-17_12-56-27.png)

---

Now let's see what is taking up the 73.9GB of space.  It seems that the newer Dell Models use Drivers require about 5GB of Drivers each.

```
Latitude 3x40 A01       1.13 GB
Latitude E5 A02         2.26 GB
Latitude E6 A10         3.27 GB
Latitude E6 XFR A04     3.48 GB
Latitude E7 A12         2.37 GB
Latitude E8 A18         5.04 GB
Latitude E8 Rugged A09  3.36 GB
Latitude E8 Tablet A11  5.23 GB
Latitude E9 A09         5.02 GB
Latitude E9 Rugged A01  2.08 GB
Latitude E9 Tablet A11  2.37 GB
OptiPlex D4 A02         1.70 GB
OptiPlex D5 A08         1.78 GB
OptiPlex D6 A09         3.39 GB
OptiPlex D7 A16         2.56 GB
OptiPlex D8 A10         3.56 GB
Precision M3800 A00     1.28 GB
Precision M5 A02        1.99 GB
Precision M6 A17        5.80 GB
Precision M7 A06        4.41 GB
Precision WS5 A03       1.44 GB
Precision WS6 A12       1.98 GB
Precision WS7 A14       2.54 GB
Precision WS8 A08       2.80 GB
Venue Pro 2 A03         1.39 GB
Venue Pro 3 A03         0.99 GB
Venue Pro 4 A11          756 MB
```

But Dell combines x86 and x64 together in the same Driver Pack, so for the OptiPlex D4 and the Venue Pro 2, we have to split them off.

```
D:\OSDeploy\OSDriversDEV\Working\Manufacturer\Dell Win10 x64
Latitude 3x40 A01       1.13 GB
Latitude E5 A02         2.26 GB
Latitude E6 A10         3.27 GB
Latitude E6 XFR A04     3.48 GB
Latitude E7 A12         2.37 GB
Latitude E8 A18         5.04 GB
Latitude E8 Rugged A09  3.36 GB
Latitude E8 Tablet A11  5.23 GB
Latitude E9 A09         5.02 GB
Latitude E9 Rugged A01  2.08 GB
Latitude E9 Tablet A11  2.37 GB
OptiPlex D4 A02          773 MB
OptiPlex D5 A08         1.78 GB
OptiPlex D6 A09         3.39 GB
OptiPlex D7 A16         2.56 GB
OptiPlex D8 A10         3.56 GB
Precision M3800 A00     1.28 GB
Precision M5 A02        1.99 GB
Precision M6 A17        5.80 GB
Precision M7 A06        4.41 GB
Precision WS5 A03       1.44 GB
Precision WS6 A12       1.98 GB
Precision WS7 A14       2.54 GB
Precision WS8 A08       2.80 GB
Venue Pro 2 A03         1.15 GB
Venue Pro 3 A03         0.99 GB
Venue Pro 4 A11          756 MB

D:\OSDeploy\OSDriversDEV\Working\Manufacturer\Dell Win10 x86
OptiPlex D4 A02          .95 GB
Venue Pro 2 A03          243 MB
```

Now we can start the OSDrivers Optimization Process

