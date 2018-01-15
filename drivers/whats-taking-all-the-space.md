# What's Taking All The Space?

This is the question that we need to answer to reduce our Drivers a bit further.  When looking into each of the Extracted Dell Drivers, we can see that they are grouped by Category.

![](/assets/2017-10-28_15-49-36.png)

---

## Category Breakdown

A quick check into our Family Pack Repository shows that Video is taking up the most space, so this is a good place to start to reduce the size.

| Category | Size | DeDuped | Final |
| :--- | :--- | :--- | :--- |
| Audio | 12.5GB | 9.39GB | .8GB |
| Chipset | 3.84GB | 1.42GB | 300MB |
| Communication | 300MB | 222MB | 100MB |
| Dock |  | 223MB | 100MB |
| Input | 2.7GB | 2.02GB | 224MB |
| Network | 4.51GB | 2.89GB | 500MB |
| Security | 371MB | 278MB | 100MB |
| Storage | 185MB | 132MB | 50MB |
| System Utilities |  | 14MB | 10MB |
| **Video** | **49GB** |  |  |
| Total | 24GB | 16.5GB | 4.25GB |

---

## Detailed Breakdown

The following are the largest components of the Dell Drivers

| Component | Dell Family \(75,735.94 MB\) | Dell Model \(196,303.89 MB\) |
| :--- | :--- | :--- |
| Video - Intel | 28,783.85 MB | 72,634.09 MB |
| Video - AMD | 15,524.66 MB | 23,629.44 MB |
| Audio | 12,883.25 MB | 33,902.95 MB |
| Video - Nvidia | 7,328.78 MB | 10,466.10 MB |
| Wireless - Intel | 2,929.16 MB | 8,058.45 MB |
| Touchpad - Dell | 1,730.99 MB | 3,586.79 MB |
| Thunderbolt - Intel | 1,141.05 MB | 2,580.03 MB |
| Dell WiFi and BT | 712.89 MB | 2,635.88 MB |
| Bluetooth - Intel | 261.47 MB | 501.33 MB |

Removing the Drivers from the above results in 

Dell Family = 4,439.84 MB \(94.1% Size Reduction\)

Dell Model = 38,308.83 MB \(80% Size Reduction\)


---

Modified: {{ file.mtime }}