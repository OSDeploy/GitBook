# Add DaRT to WinPE \(and WinRE\)

You can add Microsoft DaRT to the WinPE and WinRE images using OSBuilder in a few steps.  If you don't know what DaRT is, have a quick read

[https://docs.microsoft.com/en-us/microsoft-desktop-optimization-pack/dart-v10/](https://docs.microsoft.com/en-us/microsoft-desktop-optimization-pack/dart-v10/)

---

### Copy DaRT Tools CAB Files

In "C:\Program Files\Microsoft DaRT\v10" locate the Toolsx\*.cab files and copy them to the following location in OSBuilder

```
C:\OSBuilder\Content\WinPE\DaRT\DaRT 10
```

![](/assets/2018-07-10_19-46-28.png)

---

### Copy DaRT Config DAT File

In "C:\Program Files\Microsoft Deployment Toolkit\Templates" copy the DartConfig8.dat the following location in OSBuilder \(The DartConfig.dat is for an older version of WinPE\)

```
C:\OSBuilder\Content\WinPE\DaRT\DaRT 10
```

![](/assets/2018-07-10_19-50-02.png)

---

### Proper File Structure

Here is what your files should look like.  It doesn't matter whether the configuration file is named DaRTConfig.dat or DaRTConfig8.dat, OSBuilder handles both, just make sure you copied the DaRTConfig8.dat for Windows 10.

![](/assets/2018-07-10_19-36-46.png)

---

### OSBuilder Integration

Running Get-OSBuilder will show the added DaRT CAB files

![](/assets/2018-07-10_19-57-57.png)

When creating a New Task, you should receive a prompt to select the WinPE DaRT Package.

![](/assets/2018-07-10_19-59-25.png)

---

### Validating DaRT in WinRE

After creating an OSBuild, test the image on a system.  To boot to WinRE, open an elevated command prompt and enter the following

```
reagentc /boottore
```

Reboot the computer, and Windows RE should come up

![](/assets/2018-07-10_20-03-12.png)

![](/assets/2018-07-10_20-03-22.png)

---



