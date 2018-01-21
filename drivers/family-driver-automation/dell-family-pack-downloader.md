# Dell Family Pack Downloader

The Dell Family Pack Downloader is a tool to automate the downloading of Dell Family Packs.  The utility is provided by Dell.

---

## Download

Download the Dell Family Pack Downloader

[http://en.community.dell.com/techcenter/enterprise-client/w/wiki/11438.dell-family-driver-packs](http://en.community.dell.com/techcenter/enterprise-client/w/wiki/11438.dell-family-driver-packs)

---

## Save

Save the Download in your Driver Apps

```
D:\Drivers\Apps\Dell Family Pack Downloader
```

---

## Install and Run

Install the Dell Family Pack Downloader and Run the Application

---

## Configuration - Download Directory

Configure the Family Pack Downloader to save the files in your Driver Download Repository

```
D:\Drivers\Download\Dell\Family
```

![](/assets/1-21-2018 1-22-07 PM.png)

---

## Configuration - Driver Pack Download Filter

You have the ability to include and exclude Operating Systems, including Architecture.  Additionally, you have the option to include and exclude Model Branches.  We don't use XPS systems in my Enterprise, so this was the only one that I excluded.  Save the configuration.

Make sure you have the Dell Family Pack downloader delete older versions of downloaded Family Packs.

![](/assets/1-21-2018 1-27-43 PM.png)

---

## Execution

Once everything is configured properly, Check for Updated Drivers and take a lunch.  This will take some time.  When complete, all your Family Packs should be downloaded.

![](/assets/1-21-2018 1-30-50 PM.png)

---

## Downloaded CAB / ZIP Drivers

After all 60 Family Packs are downloaded I see that most of the files are ZIP, while the remainder are CAB files.

| **Downloaded Family Packs** | 82.4 GB** \(60 Files\)** |
| :--- | :--- |
| Windows 7 \(No XPS\) | 44.5 GB \(32 Files\) |
| Windows 10 \(No XPS\) | 37.8 GB \(28 Files\) |

![](/assets/1-21-2018 1-50-33 PM.png)

---

## Extracted Drivers

Compressed Drivers are usually about 50% smaller than uncompressed.  When all the Family Packs are extracted, 160.51 GB of space is consumed.  Comparing the Extracted Driver size to Model Packs, we are able to include Windows 7 x86 and x64 in the same footprint as just Windows 10 x64.

| **Extracted Family Packs** | **160.51 GB** |
| :--- | :--- |
| Windows 7 x64 | 56.13 GB |
| Windows 7 x86 | 27.51 GB |
| Windows 10 x64 | 75.64 GB |
| Windows 10 x86 | 1.23 GB |

---



