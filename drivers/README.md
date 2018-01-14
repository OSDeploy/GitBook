# Drivers

Whether you use OSD or MDT, you are going to need to download and import Drivers for your computers.  In my Enterprise we use Dell as our Primary Computer Manufacturer \(Make\), so I will be focused on detailing the methods used for Dell Computers, but whether you use Lenovo, HP, or Microsoft, the lessons learned in this section should be similar.

Be prepared, managing Drivers will take some time and effort.

---

## Create a Driver Repository

Before working with Drivers, you need to make a Driver Repository.  This will be where you Download, Extract, Study, and Test the Drivers before you import them into SCCM or MDT.

When I work with Drivers, I adopt the following structure.  I'll detail what each of them along the way.

```
D:\Drivers
D:\Drivers\Download
D:\Drivers\Extract
D:\Drivers\Study
D:\Drivers\Test
D:\Drivers\Test\Alpha
D:\Drivers\Test\Beta
D:\Drivers\Test\Release
```

![](/assets/1-14-2018 2-07-42 PM.png)

---

Modified: {{ file.mtime }}

