# Intel Wireless Drivers

The Intel Wireless Drivers should be downloaded from Intel using the IT Administrator Link.  You should download the ALL version

[https://www.intel.com/content/www/us/en/support/articles/000017246/network-and-i-o/wireless-networking.html](https://www.intel.com/content/www/us/en/support/articles/000017246/network-and-i-o/wireless-networking.html)

![](/assets/1-6-2018 12-07-13 AM.png)

**Alternate Method:**

[https://www.intel.com/content/www/us/en/support/articles/000005559/network-and-i-o/wireless-networking.html](https://www.intel.com/content/www/us/en/support/articles/000005559/network-and-i-o/wireless-networking.html)

---

## Intel Wireless for Windows 10 x64

```
[OSDrivers]
Windows 10 x64 = Yes
MasterPNPID =
URL = https://www.intel.com/content/www/us/en/support/articles/000017246/network-and-i-o/wireless-networking.html

[WQL]
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_08B1%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_08B2%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_08B3%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_08B4%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_095A%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_095B%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_24F3%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_24F5%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_24FB%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_24FD%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_2526%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_2720%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_30DC%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_3165%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_3166%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_31DC%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_34F0%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_9DF0%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_A370%'

[PNPIDS]
PCI\VEN_8086&DEV_08B1
PCI\VEN_8086&DEV_08B2
PCI\VEN_8086&DEV_08B3
PCI\VEN_8086&DEV_08B4
PCI\VEN_8086&DEV_095A
PCI\VEN_8086&DEV_095B
PCI\VEN_8086&DEV_24F3
PCI\VEN_8086&DEV_24F5
PCI\VEN_8086&DEV_24FB
PCI\VEN_8086&DEV_24FD
PCI\VEN_8086&DEV_2526
PCI\VEN_8086&DEV_2720
PCI\VEN_8086&DEV_30DC
PCI\VEN_8086&DEV_3165
PCI\VEN_8086&DEV_3166
PCI\VEN_8086&DEV_31DC
PCI\VEN_8086&DEV_34F0
PCI\VEN_8086&DEV_9DF0
PCI\VEN_8086&DEV_A370
```

---

## Intel Wireless for Windows 10 x86

```
[OSDrivers]
Windows 10 x86 = Yes
MasterPNPID =
URL = https://www.intel.com/content/www/us/en/support/articles/000017246/network-and-i-o/wireless-networking.html

[WQL]
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_08B1%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_08B2%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_08B3%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_08B4%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_095A%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_095B%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_24FB%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_3165%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_3166%'

[PNPIDS]
PCI\VEN_8086&DEV_08B1
PCI\VEN_8086&DEV_08B2
PCI\VEN_8086&DEV_08B3
PCI\VEN_8086&DEV_08B4
PCI\VEN_8086&DEV_095A
PCI\VEN_8086&DEV_095B
PCI\VEN_8086&DEV_24FB
PCI\VEN_8086&DEV_3165
PCI\VEN_8086&DEV_3166
```

---

## Intel Wireless for Windows 7 x64

```
[OSDrivers]
Windows 7 x64 = Yes
MasterPNPID =
URL = https://www.intel.com/content/www/us/en/support/articles/000017246/network-and-i-o/wireless-networking.html

[WQL]
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_08B1%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_08B2%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_08B3%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_08B4%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_095A%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_095B%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_24F3%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_24F5%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_24FB%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_24FD%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_3165%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_3166%'

[PNPIDS]
PCI\VEN_8086&DEV_08B1
PCI\VEN_8086&DEV_08B2
PCI\VEN_8086&DEV_08B3
PCI\VEN_8086&DEV_08B4
PCI\VEN_8086&DEV_095A
PCI\VEN_8086&DEV_095B
PCI\VEN_8086&DEV_24F3
PCI\VEN_8086&DEV_24F5
PCI\VEN_8086&DEV_24FB
PCI\VEN_8086&DEV_24FD
PCI\VEN_8086&DEV_3165
PCI\VEN_8086&DEV_3166
```

---

## Intel Wireless for Windows 7 x86

```
[OSDrivers]
Windows 7 x86 = Yes
MasterPNPID =
URL = https://www.intel.com/content/www/us/en/support/articles/000017246/network-and-i-o/wireless-networking.html

[WQL]
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_08B1%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_08B2%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_08B3%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_08B4%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_095A%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_095B%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_24F3%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_24F5%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_24FB%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_24FD%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_3165%'
Select * FROM Win32_PnPEntity WHERE DeviceID LIKE '%VEN_8086&DEV_3166%'

[PNPIDS]
PCI\VEN_8086&DEV_08B1
PCI\VEN_8086&DEV_08B2
PCI\VEN_8086&DEV_08B3
PCI\VEN_8086&DEV_08B4
PCI\VEN_8086&DEV_095A
PCI\VEN_8086&DEV_095B
PCI\VEN_8086&DEV_24F3
PCI\VEN_8086&DEV_24F5
PCI\VEN_8086&DEV_24FB
PCI\VEN_8086&DEV_24FD
PCI\VEN_8086&DEV_3165
PCI\VEN_8086&DEV_3166
```