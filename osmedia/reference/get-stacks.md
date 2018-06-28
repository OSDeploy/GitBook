* 18.06.28 Initial Release

---

# Get-Stacks

Get-Stacks is introduced to help you get your Servicing Stacks into OSMedia.  It works by checking online for an updated Servicing Stack list where you can select the Stacks you want to download to OSMedia\Stacks.

---

### Selecting Servicing Stacks

There are no parameters for Get-Stacks, just run from a PowerShell command.  After checking online for [https://www.osdeploy.com/files/stacks.json](https://www.osdeploy.com/files/stacks.json), you should see a list of available Servicing Stack downloads.  Select the ones you want to download and press OK.

![](/assets/2018-06-27_22-32-19.png)

---

### Console Output

This is the typical result of running Get-Stacks, and yes there is a disclaimer.  Keep in mind that this list is not updated in real time from Microsoft.  I will have to edit this file manually, so if you absolutely need the latest updates, check [Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Home.aspx) for Critical Updates.

![](/assets/2018-06-27_22-37-58.png)

---

### Directory Contents

The downloaded MSU files are organized as the same name that Microsoft uses for the download in Windows Update Catalog, so keep things uniform

![](/assets/2018-06-27_22-58-26.png)

---

### stacks.json

Included in the Stacks directory is a copy of the stacks.json.  You can easily use this for reference or to construct your own download links.  The contents below were copied when I wrote this reference, so for the latest version, check [https://www.osdeploy.com/files/stacks.json](https://www.osdeploy.com/files/stacks.json)

```
[
    {
        "Title":  "2018-05 Update for Windows 10 Version 1607 for x64-based Systems (KB4132216)",
        "LastUpdated":  "2018-06-12",
        "KBNumber":  "KB4132216",
        "OsName":  "Windows 10",
        "OsVersion":  "1607",
        "OsArch":  "x64",
        "FileName":  "windows10.0-kb4132216-x64.msu",
        "URLFile":  "windows10.0-kb4132216-x64_9cbeb1024166bdeceff90cd564714e1dcd01296e.msu",
        "URLPath":  "http://download.windowsupdate.com/c/msdownload/update/software/crup/2018/05/"
    },
    {
        "Title":  "2018-05 Update for Windows 10 Version 1607 for x86-based Systems (KB4132216)",
        "LastUpdated":  "2018-06-12",
        "KBNumber":  "KB4132216",
        "OsName":  "Windows 10",
        "OsVersion":  "1607",
        "OsArch":  "x86",
        "FileName":  "windows10.0-kb4132216-x86.msu",
        "URLFile":  "windows10.0-kb4132216-x86_397ebbe49d273429a3e0ce8d6ced13fdb83e1718.msu",
        "URLPath":  "http://download.windowsupdate.com/c/msdownload/update/software/crup/2018/05/"
    },
    {
        "Title":  "2018-05 Update for Windows 10 Version 1703 for x64-based Systems (KB4132649)",
        "LastUpdated":  "2018-05-17",
        "KBNumber":  "KB4132649",
        "OsName":  "Windows 10",
        "OsVersion":  "1703",
        "OsArch":  "x64",
        "FileName":  "windows10.0-kb4132649-x64.msu",
        "URLFile":  "windows10.0-kb4132649-x64_7b1001d846a7a14b752a7ea4c7dd444d4c05b39b.msu",
        "URLPath":  "http://download.windowsupdate.com/c/msdownload/update/software/crup/2018/05/"
    },
    {
        "Title":  "2018-05 Update for Windows 10 Version 1703 for x86-based Systems (KB4132649)",
        "LastUpdated":  "2018-05-17",
        "KBNumber":  "KB4132649",
        "OsName":  "Windows 10",
        "OsVersion":  "1703",
        "OsArch":  "x86",
        "FileName":  "windows10.0-kb4132649-x86.msu",
        "URLFile":  "windows10.0-kb4132649-x86_ea616942f1348d22aeaf07ebee1759b3a8aa708a.msu",
        "URLPath":  "http://download.windowsupdate.com/c/msdownload/update/software/crup/2018/05/"
    },
    {
        "Title":  "2018-05 Update for Windows 10 Version 1709 for x64-based Systems (KB4132650)",
        "LastUpdated":  "2018-05-21",
        "KBNumber":  "KB4132650",
        "OsName":  "Windows 10",
        "OsVersion":  "1709",
        "OsArch":  "x64",
        "FileName":  "windows10.0-kb4132650-x64.msu",
        "URLFile":  "windows10.0-kb4132650-x64_80c6e23ef266c2848e69946133cc800a5ab9d6b3.msu",
        "URLPath":  "http://download.windowsupdate.com/c/msdownload/update/software/crup/2018/05/"
    },
    {
        "Title":  "2018-05 Update for Windows 10 Version 1709 for x86-based Systems (KB4132650)",
        "LastUpdated":  "2018-05-21",
        "KBNumber":  "KB4132650",
        "OsName":  "Windows 10",
        "OsVersion":  "1709",
        "OsArch":  "x86",
        "FileName":  "windows10.0-kb4132650-x86.msu",
        "URLFile":  "windows10.0-kb4132650-x86_32cfa99360557477b73b702baa5a5212ea971b38.msu",
        "URLPath":  "http://download.windowsupdate.com/c/msdownload/update/software/crup/2018/05/"
    },
    {
        "Title":  "2018-06 Update for Windows 10 Version 1803 for x64-based Systems (KB4338853)",
        "LastUpdated":  "2018-06-22",
        "KBNumber":  "KB4338853",
        "OsName":  "Windows 10",
        "OsVersion":  "1803",
        "OsArch":  "x64",
        "FileName":  "windows10.0-kb4338853-x64.msu",
        "URLFile":  "windows10.0-kb4338853-x64_80cfbdddcd6b20f1230efdf19ce7eac1400e55e9.msu",
        "URLPath":  "http://download.windowsupdate.com/c/msdownload/update/software/crup/2018/06/"
    },
    {
        "Title":  "2018-06 Update for Windows 10 Version 1803 for x86-based Systems (KB4338853)",
        "LastUpdated":  "2018-06-22",
        "KBNumber":  "KB4338853",
        "OsName":  "Windows 10",
        "OsVersion":  "1803",
        "OsArch":  "x86",
        "FileName":  "windows10.0-kb4338853-x86.msu",
        "URLFile":  "windows10.0-kb4338853-x86_0bfd32ab71957200b944b7a7fe6de2e55a9262aa.msu",
        "URLPath":  "http://download.windowsupdate.com/d/msdownload/update/software/crup/2018/06/"
    }
]
```

---

### Get-OSMedia

You can use Get-OSMedia to make sure that your Servicing Stacks are recognized by OSMedia.

![](/assets/2018-06-27_22-43-06.png)

---

