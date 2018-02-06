# Sample Repository

## Get-OSDriverDownloads

LocalFolder should be a path to save the OSDriver Repository

Check your Include, Exclude, and Pack options and then click the Run button

![](/assets/2018-02-05_14-49-42.png)

The command line that is automatically generated is

```
Get-OSDriverDownloads -LocalFolder D:\OSDrivers -ExcludeWin7 -Excludex86 -IncludeOSDCore -IncludeOSDVideo -PackUSBNetwork
```

After you execute Get-OSDriverDownloads, OSDrivers.vbs will be automatically copied to your LocalFolder.

---

## OSD-Core

If you selected IncludeOSDCore, you will be presented with a listing of all Drivers that apply to you.  Simply select the Drivers you wish to include and press OK

![](/assets/2018-02-05_14-38-22.png)

---

## OSD-Video

Select the Video Drivers you need and press OK

![](/assets/2018-02-05_14-52-08.png)

---

## CORE-Dell

These are the Dell Family Driver Packs.  Simply select the ones that you need and press OK.

![](/assets/2018-02-05_14-55-32.png)

---

## Download Progress

Your selected Drivers will download automatically.

![](/assets/2018-02-05_14-57-10.png)

---

## Complete

When the downloads are finished, you will have a complete OSDriver Repository :\)

