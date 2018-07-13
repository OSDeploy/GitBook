# Release Information

July 13, 2018: 18.7.15 released

Notable changes in include UBR and Update Checking

---

### Changes from Previous Versions

* Only Windows 10 Operating Systems can be imported at this time.  Support for Windows Server will be in the next week or so
* UBR \(Update Build Revision\) is appended to all Builds
* Directory naming convention convention has changed to the following format

```
OSMedia: <OS with Edition> <Arch> <Version> <UBR>
Example: Windows 10 Enterprise x64 1803 17134.165

Servicing Stacks: <OS> <Architecture> <Build>\<Release Date> <KB> Servicing Stack Update <OS> <Arch> <Version> <Build>\*.msu
Example: Windows 10 x64 1709\2018-07-05 KB4339420 Servicing Stack Update Windows 10 x64 1709 16299\*.msu

Cumulative Updates: <OS> <Architecture> <Build>\<Release Date> <KB> Cumulative Update <OS> <Arch> <Version> <UBR>\*.msu
Example: Windows 10 x64 1803\2018-07-09 KB4338819 Cumulative Update Windows 10 x64 1803 17134.165\*.msu

Other references to the Pilot format of <OS> <Version> <Arch> should be changed manually to <OS> <Arch> <Version>
for consistency
```



#### GetWindowsUpdates

Now displays the UBR of the download.  This can be validated against the OSMedia or OSBuild to ensure proper integration

![](/assets/2018-07-13_13-01-27.png)

#### Module Update Checking

When running Get-OSBuilder, it will automatically check for a newer version and display a message if an update is recommended.  Internet connection required for this function to work

![](/assets/2018-07-13_13-10-21.png)

#### Servicing Stack and Windows Update Checking

When running Get-OSBuilder, it will automatically check for newer Servicing Stacks and Windows Updates and display a message if an update is recommended.  Internet connection required for this function to work

![](/assets/2018-07-13_13-13-10.png)













