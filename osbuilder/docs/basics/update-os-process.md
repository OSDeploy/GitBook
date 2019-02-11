# Update an OS Process

**So what exactly is the process to updating an OS with Offline Servicing?  There's actually quite a few steps involved ...**

```text
Download Dynamic Setup Update
Download Servicing Stack Update
Download Cumulative Update
Download DotNet Cumulative Update
Download Adobe Security Update
Download Dynamic Component Update
Update Media with Dynamic Setup Update
Mount WinPE
Mount WinRE
Mount WinSE
Update WinPE with Servicing Stack Update
Update WinRE with Servicing Stack Update
Update WinSE with Servicing Stack Update
Update WinPE with Cumulative Update
WinPE DISM Cleanup Image
Update WinRE with Cumulative Update
WinRE DISM Cleanup Image
Update WinSE with Cumulative Update
WinSE DISM Cleanup Image
Update Media Setup with WinSE
Dismount and Save WinPE
Dismount and Save WinRE
Dismount and Save WinSE
Export WinPE.wim
Export WinRE.wim
Export WinSE.wim
Rebuild Boot.wim
Mount OS Install.wim
Replace OS WinRE.wim
Update OS with Servicing Stack Update
Update OS with Dynamic Component Updates
Update OS with Cumulative Update
OS DISM Cleanup Image
Update OS with DotNet Cumulative Update
Update OS with Adobe Security Update
OS DISM Cleanup Image
Dismount and Save OS
Export Install.wim
```

**All these above steps are done with OSBuilder using the following PowerShell command**

```text
Update-OSMedia -DownloadUpdates -Execute
```

