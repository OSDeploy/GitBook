# Servicing Stacks

Before you jump in and start updating your Operating Systems offline, you need to understand why Servicing Stacks are important.

---

### What is a Servicing Stack?

You can google or bing this question and find many different answers, but there are many different answers depending on who or why you ask.  But for the purpose of my audience, the question probably relates to applying a Windows Update Package \(Cumulative Update\) to a Windows Image \(Offline\).  So now the simple answer.

**The Servicing Stack tells the Operating System \(Online or Offline\) how to process a Windows Update \(Package\)**

Think of it as two people that speaking different languages.  Neither person will understand each other, unless they speak the same language.  In other words, an Operating System doesn't understand how to apply the Update Package properly because they are speaking different languages.

---

### How are Servicing Stacks updated?

Servicing Stacks updates are released as a Critical Update, but can be included in Cumulative Updates

---

### Does Microsoft Tell Us?

Yes, but you probably didn't notice.  You need to look at the Windows 10 Update History

[https://support.microsoft.com/en-us/help/4099479](https://support.microsoft.com/en-us/help/4099479)

Look at the How to get this update section of any Cumulative Update and you will probably see a mention of the SSU

![](/assets/2018-06-27_9-39-14.png)In the case of Windows 10 1607 the June 12, 2018—KB4284880 \(OS Build 14393.2312\) release has some different verbiage

[https://support.microsoft.com/en-us/help/4284880](https://support.microsoft.com/en-us/help/4284880)

![](/assets/2018-06-27_9-41-39.png)

---

### Where are the Current Downloads?

Keep in mind this page is static, so you will have to check for updates monthly before updating your Windows Images

* **Windows 10 1607**
  * INFO: [Servicing stack update for Windows 10 Version 1607: May 17, 2018](https://support.microsoft.com/en-us/help/4132216)
  * DOWNLOAD: [Windows Update Catalog KB4132216](https://www.catalog.update.microsoft.com/Search.aspx?q=KB4132216)
* **Windows 10 1703**
  * INFO: [Servicing stack update for Windows 10 Version 1703: May 17, 2018](https://support.microsoft.com/en-us/help/4132649)
  * DOWNLOAD: [Windows Update Catalog KB4132649](https://www.catalog.update.microsoft.com/search.aspx?q=KB4132649)
* **Windows 10 1709**
  * INFO: [Servicing stack update for Windows 10 Version 1709: May 21, 2018](https://support.microsoft.com/en-us/help/4132650)
  * DOWNLOAD: [Windows Update Catalog KB4132650](https://www.catalog.update.microsoft.com/search.aspx?q=KB4132650)
* **Windows 10 1803**
  * INFO: [Servicing stack update for Windows 10, version 1803: June 26, 2018](https://support.microsoft.com/en-us/help/4338853)
  * DOWNLOAD: [Windows Update Catalog KB4338853](https://www.catalog.update.microsoft.com/search.aspx?q=KB4338853)

---

### Applying 2018-06 Cumulative Update without a SSU

For starters, SSU = Servicing Stack Update

In this example, I will use OSMedia and run the following in PowerShell ISE

```
New-OSBuild -OSBuildName "Windows 10 1607 x64 SSU Demo"
Edit-OSBuild -Action "Stay Mounted" -ManagePackages
```

This allows me to make an unmodified copy of Windows 10 1607 \(2016-11\) from my OSMedia Library and to mount the Windows Image.  The installed Windows Packages are displayed.

![](/assets/2018-06-26_23-43-41.png)

From the screenshot above, I can see the Windows Update Packages that are installed, nothing new

* KB3194623 - Compatibility update for upgrading to and recovering Windows 10 Version 1607: October 27, 2016
* KB3199986 - Servicing stack update for Windows 10 Version 1607 and Windows Server 2016: October 27, 2016
* KB3202790 - MS16-141: Security update for Adobe Flash Player: November 8, 2016
* KB3200970 - November 8, 2016 — KB3200970 \(OS Build 14393.447\)

The next step is to try to install the 2018-06 Cumulative Update using the following PowerShell commands

```
$Path = "C:\OSMedia\Mount"
$PackagePath = "C:\OSMedia\Updates\Windows 10 1607 x64\2018-06 Cumulative Update for Windows 10 Version 1607 for x64-based Systems (KB4284880)\windows10.0-kb4284880-x64.msu"
$LogPath = "C:\OSMedia\SSU.log"
Add-WindowsPackage -Path $Path -PackagePath $PackagePath -LogPath $LogPath
```

The first thing that seems out of place is that the update happened quick.  If you are processing the updates in a script, and not babysitting the process, you will miss the fact that something doesn't seem right.

![](/assets/2018-06-26_23-51-48.png)

---

### Checking the Log

So what happened?  According to the Log \(53 KB\) the Cumulative Update was looking for a Parent Package KB4132216, which if you check the Current Downloads above, you will see this KB is a Servicing Stack update.  Because the Parent Package was not installed on the system, this Update is not applicable and was not installed.  Since this Update is not applicable to this system, there is no error, no failure, which is what should happen if an Update is not applicable.

```
Exec: Processing started.  Client: DISM Package Manager Provider, Session: 4332_3354890, Package: Package_for_RollupFix~31bf3856ad364e35~amd64~~14393.2312.1.14
Exec: Using execution sequence: 26
Disabling LKG boot option
Appl: detect Parent, Package: Package_for_RollupFix~31bf3856ad364e35~amd64~~14393.2312.1.14, Parent: Package_for_KB4132216~31bf3856ad364e35~amd64~~10.0.1.0, Disposition = Detect, VersionComp: EQ, BuildComp: GE, RevisionComp: GE, Exist: present
Appl: detectParent: no parent found, go absent
Appl: Evaluating package applicability for package Package_for_RollupFix~31bf3856ad364e35~amd64~~14393.2312.1.14, applicable state: Absent
DISM Package Manager: PID=4332 TID=1504  Error in operation: the package is not applicable. (CBS HRESULT=0x800f081e) - CCbsConUIHandler::Error
Plan: Skipping package since its start state and target state are both absent for package: Package_for_RollupFix~31bf3856ad364e35~amd64~~14393.2312.1.14, current: Absent, pending: Default, start: Absent, applicable: Absent, targeted: Absent, limit: Installed
Perf: Entering stage: Planning
FLOW: Entering stage: Planning 
Exec: Single phase execution, there's no package planned, skip the rest of execution
```

![](/assets/2018-06-26_23-55-29.png)

![](/assets/2018-06-26_23-55-29b.png)

---

### DISM Applying 2018-06 Cumulative Update without a SSU

So instead of using PowerShell Add-WindowsPackage, I will try to use DISM instead.  From the image below, it seems that everything worked fine, although it took less than a minute to run, but I did get a 100%, and the operation completed successfully.  When checking the Log, same result as PowerShell, the Cumulative Update did not install.

![](/assets/2018-06-27_0-04-40.png)

---

### Apply the Servicing Stack First

After installing KB4132216 Servicing Stack Update for Windows 10 1607, the Add-Package log is a nice 62MB!  When reviewing the log, I see that the Parent Package is checked first.  Since the Parent Package \(SSU\) KB4132216 is installed first, the Cumulative Update is now installed properly.

```
Appl: detect Parent, Package: Package_for_RollupFix~31bf3856ad364e35~amd64~~14393.2312.1.14, Parent: Package_for_KB4132216~31bf3856ad364e35~amd64~~10.0.1.0, Disposition = Detect, VersionComp: EQ, BuildComp: GE, RevisionComp: GE, Exist: present
Appl: detectParent: parent found: Package_for_KB4132216~31bf3856ad364e35~amd64~~10.0.1.0, state: Installed
Appl: Evaluating package applicability for package Package_for_RollupFix~31bf3856ad364e35~amd64~~14393.2312.1.14, applicable state: Installed
Exec: Extracting package: Package_for_RollupFix~31bf3856ad364e35~amd64~~14393.2312.1.14
FLOW: Entering stage: Extracting
```

![](/assets/2018-06-27_0-09-43b.png)

---

### Checking the Parent Package Servicing Stack

It is possible to determine the Parent Package Servicing Stack.  Expanding the Cumulative Update MSU in 7zip will result in a directory of a few CAB files.  The largest file can then be extracted again in 7zip.  The update.mum will detail the Parent KB that is required for the update to be installed.

![](/assets/2018-06-27_0-15-05.png)

---

### Chaining Cumulative Updates

Since my Windows 10 1607 build was from 2016-11, I could have applied every Cumulative Update that has been released, in order.  This would have kept me from having issues with the Servicing Stack, as the necessary one would have always been installed in the previous Cumulative Update, but this would take a considerable amount of time just to test, and the resulting size of the WIM may be more than we would consider pushing out.

---

### Rule of Thumb

* Apply the Servicing Stack first, otherwise your Cumulative Update may look like it installed, but it more than likely did not
* Verify the Cumulative Update installed by using Get-WindowsPackage
* Verify the Cumulative Update installed by reviewing the DISM Log

---

### OSMedia Solution

I am working on adding Servicing Stacks to OSMedia in a future release . . .

![](/assets/2018-06-26_15-58-25.png)

---



