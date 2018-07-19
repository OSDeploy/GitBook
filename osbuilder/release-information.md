# Release Information

### 18.7.17.* \(July 17, 2018\)

* **New-OSBuildTask**
  * Removed OSMedia ParameterSet
* **New-OSMediaTask**
  * Resolved issue where Task Name was not allowed

---

### 18.7.16.* \(July 16, 2018\)

* **Get-OSBuilder**
  * DownloadUpdates joins GetServicingStacks and GetWindowsUpdates parameters
  * DownloadUpdates has the option for Latest and Historic Updates.  Going forward, Historic will contain previous updates added to OSBuilder
* **Invoke-OSBuilderTask**
  * Replaces Invoke-OSBuilder
  * DaRT now added to Windows Setup \(Boot.wim Index 2\)
* **New-OSBuilderISO**
  * Initial Release
  * Allows the creation of an ISO of any OSMedia or OSBuild
* **New-OSBuildTask**
  * Replaces the New-OSBuilder OSBuild option
  * CUs are no longer applied to Windows Setup \(Boot.wim Index 2\) to prevent a setup.exe compatibility issue
    * [https://support.microsoft.com/en-us/help/4041170/windows-installation-cannot-find-driver-boot-wim](https://support.microsoft.com/en-us/help/4041170/windows-installation-cannot-find-driver-boot-wim)
* **New-OSMediaTask**
  * Replaces the New-OSBuilder OSMedia option
  * CUs are no longer applied to Windows Setup \(Boot.wim Index 2\) to prevent a setup.exe compatibility issue
    * [https://support.microsoft.com/en-us/help/4041170/windows-installation-cannot-find-driver-boot-wim](https://support.microsoft.com/en-us/help/4041170/windows-installation-cannot-find-driver-boot-wim)

If you have previously created OSMedia or OSBuilds and integrated the CU with Windows Setup, it is recommended that you rebuild your media.  I will work on a solution for this issue.

---

### 18.7.15.1 \(July 13, 2018\)

* Corrected an issue in Invoke-OSBuilder.ps1 script error

---

### 18.7.15 \(July 13, 2018\)

* Initial Public release

---

### Changes from Versions prior to 18.7.15

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

