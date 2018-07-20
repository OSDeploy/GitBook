# Release Information

### 18.7.19.\* \(July 19, 2018\)

* **Online Documentation has not been updated yet to detail the changes.  I'll work on that over the weekend.  Thanks for understanding!**
* Modified Paths to WindowsUpdates and ServicingStacks
* TestMode renamed to -ExecutionMode "Test Builds"
* Operating System names are abbreviated
  * Windows 10 x64 Enterprise 1803 \(old format\)
  * Win10 x64 Ent 1803 \(new format\)
  * It is recommended that you rename these manually, or **run it through an OSMedia Task again and it will apply the new name format, and update the Sources directory at the same time**
* Abbreviated OS Names consistent throughout OSBuilder
* Abbreviated OS Names for Servicing Stack and Windows Update downloads will be applied during the next CU Release
* Added ExecutionMode to Invoke-OSBuilder
  * Information - This will show the information about the selected Task without running it
  * Test Build - Performs a simulation and copies the output to OSBuilder\TestBuilds.  Recommend to run this with -Verbose
  * Execute Stepped - This option will enable a "Press Enter to continue" so you can manually manipulate the process
  * Execute - This will execute the Task
* Added UseLatestSource to Invoke-OSBuilder
  * If you have a Task specifically points to an Operating System \(Win10 Ent x64 1803 17134.112\), enabling this option will search for a newer UBR and execute with that source.
  * For this to work, make sure your UBR is at the end of your OSMedia source
* OSMedia and OSBuild Tasks will update the Sources directory of the Media automatically.  **If you have previously updated an OSMedia, run it through an OSMedia Task again and it will apply the corrections.**
* Enabling NetFX3 in a Task will force a selection for reapplying the Cumulative Update
* OSBuild Tasks no longer include SSU or CU \(unless enabling NetFX3\)
* OSMedia Tasks are specific to updating the SSU, CU, and Sources.  No other customizations are allowed.  This method allows you to continually update OSMedia without having to use the original source Media from Microsoft
* Tasks have changed and all previous Tasks will need to be rebuilt.  Delete existing ones

---

### 18.7.17.\* \(July 17, 2018\)

* **New-OSBuildTask**
  * Removed OSMedia ParameterSet
* **New-OSMediaTask**
  * Resolved issue where Task Name was not allowed

---

### 18.7.16.\* \(July 16, 2018\)

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

#### Servicing Stacks and Windows Update Downloads

Now displays the UBR of the download.  This can be validated against the OSMedia or OSBuild to ensure proper integration

![](/assets/2018-07-13_13-01-27.png)

#### Module Update Checking

When running Get-OSBuilder, it will automatically check for a newer version and display a message if an update is recommended.  Internet connection required for this function to work

![](/assets/2018-07-13_13-10-21.png)

#### Servicing Stack and Windows Update Checking

When running Get-OSBuilder, it will automatically check for newer Servicing Stacks and Windows Updates and display a message if an update is recommended.  Internet connection required for this function to work

![](/assets/2018-07-13_13-13-10.png)

