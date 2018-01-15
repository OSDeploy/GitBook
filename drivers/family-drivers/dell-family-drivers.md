# Dell Family Packs

Dell Family Packs are a combination of Computer Models by Generation.  For example, Dell may release a new Generation of Laptops that have a 12", 13", or 15" display being the only difference.  These would be supported by a single Driver Package, rather than 3 individual Driver Packages.

Dell Family Packs are maintained at the following link

[http://en.community.dell.com/techcenter/enterprise-client/w/wiki/11438.dell-family-driver-packs](http://en.community.dell.com/techcenter/enterprise-client/w/wiki/11438.dell-family-driver-packs)

---

## Combining Models

In the Windows 10 Family Packs, the E9 Latitude Family supports 13 different Computer Models.

![](/assets/2017-10-27_14-17-09.png)

These 13 Models consume 15.9GB of Extracted Drivers, whereas the Extracted E9 Latitude Family Pack requires 5.02GB.  This is 68% reduction in size.

![](/assets/2017-10-27_14-23-12.png)

---

## Problems

Unfortunately switching from Model Name to a Model Family removes any automated logic if the drivers are matched with the Model.  You will have to implement a WMI "If Any" Condition is True when applying a Family Pack.

```
SELECT * from Win32_ComputerSystem WHERE Model LIKE "%Latitude 3180%"
SELECT * from Win32_ComputerSystem WHERE Model LIKE "%Latitude 3189%"
SELECT * from Win32_ComputerSystem WHERE Model LIKE "%Latitude 3380%"
SELECT * from Win32_ComputerSystem WHERE Model LIKE "%Latitude 3480%"
SELECT * from Win32_ComputerSystem WHERE Model LIKE "%Latitude 3580%"
SELECT * from Win32_ComputerSystem WHERE Model LIKE "%Latitude 5280%"
SELECT * from Win32_ComputerSystem WHERE Model LIKE "%Latitude 5289%"
SELECT * from Win32_ComputerSystem WHERE Model LIKE "%Latitude 5480%"
SELECT * from Win32_ComputerSystem WHERE Model LIKE "%Latitude 5580%"
SELECT * from Win32_ComputerSystem WHERE Model LIKE "%Latitude 7280%"
SELECT * from Win32_ComputerSystem WHERE Model LIKE "%Latitude 7380%"
SELECT * from Win32_ComputerSystem WHERE Model LIKE "%Latitude 7389%"
SELECT * from Win32_ComputerSystem WHERE Model LIKE "%Latitude 7480%"
```

Additionally downloading the Family Packs one at a time is a time consuming process.


---

Modified: {{ file.mtime }}