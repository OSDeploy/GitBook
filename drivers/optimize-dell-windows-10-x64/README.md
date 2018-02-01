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

---

## Remove x86 Drivers

One issue with the way Dell has their Family and Model Packs is that they contain drivers for both 32 and 64 Bit architectures.  If you need to x86 Drivers, then split them off in their own Repository.  If you don't need them, delete them.  Assuming we have deleted, here is where we stand.

| Description | Repository | Recovered |
| :--- | :--- | :--- |
| Remove x86 Drivers | 75.64 GB | 1.23 GB |

---

Remove Intel Video Drivers



