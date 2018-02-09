# Organize Drivers

You need to develop a logical organization for your Drivers.  The following is my Directory Structure for my Driver Repository

* Drivers should be placed in a proper Category
* Manufacturers should be identified
* Logical Drivers should be segmented.  For example, I know my Video Drivers will take the most space.  I should have them in a standalone Category not nested under anything else.
* For large Drivers, such as Video, segmenting them further with Architecture in the Directory Name is ideal

```
Core
    Bluetooth
        Intel
    Chipset
        Intel
    Dock
        Intel
    Network
        Intel
        Realtek
    Storage
        Intel
    Wireless
        Intel
Core USB Network
    Asix
    Realtek
    SMSC
Dell Win7 x64
Dell Win7 x86
Dell Win10 x64
Video
    AMD x64
    AMD x86
    Intel x64
    Intel x86
    Nvidia x64
    Nvidia x86
```

---

## Subsets

There is a large benefit to using this method.  If I wanted to copy my Repository to somewhere else, but only wanted Windows 10 x64, then a simple Robocopy command would be able to handle this

```
robocopy %source% %destination% *.* /mir /ndl /xd Win7 x86
```

The important thing about my robocopy switches is that it will exclude any directory with Win7 or x86 in the name.  The result wil be a **subset**.

```
Core
    Bluetooth
        Intel
    Chipset
        Intel
    Dock
        Intel
    Network
        Intel
        Realtek
    Storage
        Intel
    Wireless
        Intel
Core USB Network
    Asix
    Realtek
    SMSC
Dell Win10 x64
Video
    AMD x64
    Intel x64
    Nvidia x64
```

This is absolutely critical.  You should NOT have more than one Driver Repository as they become difficult to manage.  If you work with MDT and OSD, you should know that it becomes impossible to keep them at parity.  You should leverage a MASTER Driver Repository and work with Subsets.

---

## File Naming Convention



