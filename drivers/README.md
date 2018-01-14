# Drivers

Whether you use OSD or MDT, you are going to need to download and import some Drivers.  In my Enterprise we use Dell as our Primary Manufacturer \(Make\), so I will be focused on detailing the methods used for Dell systems, but whether you use Lenovo, HP, or Microsoft, the lessons learned in this section should be similar.

Be prepared, managing Drivers will take some time and effort.

---

## Create a Repository

Let's start out by creating a Repository for our Drivers, preferably in the root of a Drive \(with plenty of space\)

```
OSDeploy
    OSDrivers       (Production)
    OSDriversDEV    (Development)
        Apps        (Utilities and Scripts)
        Download    (Compressed Master Drivers)
        Extract     (Extracted Master Drivers)
        Working     (Working Copy of Production Drivers)
```

![](/assets/2017-10-30_13-44-19.png)





