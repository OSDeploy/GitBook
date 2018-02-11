# HP ProBook Issues

I made an attempt to Download HP ProBook Drivers using the Driver Automation Tool for 28 Systems.

![](/assets/2018-02-10_22-35-01.png)

---

## Duplicate Drivers

The main issue that I have is the duplicates.  A quick look shows that I have actually only downloaded only 11 different Driver Packs.

![](/assets/2018-02-10_22-37-04.png)

---

## Results

So here are the results.  When importing into MDT, the Duplicates should go away.  When using ConfigMgr Packages, you may be adding 28.8 GB more than you really need to.

|  | Count | Download Size | Extracted Size |
| :--- | :--- | :--- | :--- |
| Driver Automation Tool | 28 | 20.54 GB | 43.5 GB |
| Unique | 11 | 7.18 GB | 14.7 GB |
| Duplicates | 17 | 13.36 GB | 28.8 GB |



