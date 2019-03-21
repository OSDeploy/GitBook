# Update Steps

**So what exactly is the process to updating an OS with Offline Servicing?  There's actually quite a few steps involved ...**

```text
Download Dynamic Setup Update
Download Servicing Stack Update
Download Cumulative Update
Download DotNet Cumulative Update
Download Adobe Security Update
Download Dynamic Component Update
Update Media with Dynamic Setup Update
Mount WinPE (Boot.wim Index 1)
Mount WinRE (Exported during Import-OSMedia)
Mount WinSE (Boot.wim Index 2)
Update WinPE with Servicing Stack Update
Update WinRE with Servicing Stack Update
Update WinSE with Servicing Stack Update
Update WinPE with Cumulative Update
WinPE DISM Cleanup Image (to recover space)
Update WinRE with Cumulative Update
WinRE DISM Cleanup Image (to recover space)
Update WinSE with Cumulative Update
WinSE DISM Cleanup Image (to recover space)
Update Media Setup with WinSE
Dismount and Save WinPE
Dismount and Save WinRE
Dismount and Save WinSE
Export WinPE.wim (to compress)
Export WinRE.wim (to compress)
Export WinSE.wim (to compress)
Rebuild Boot.wim
Mount OS Install.wim
Replace OS WinRE.wim
Update OS with Servicing Stack Update
Update OS with Dynamic Component Updates
Update OS with Cumulative Update
OS DISM Cleanup Image (to recover space)
Update OS with DotNet Cumulative Update
Update OS with Adobe Security Update
OS DISM Cleanup Image (to recover space)
Dismount and Save OS
Export Install.wim (to compress)
```

**All these above steps are done with OSDBuilder using the following PowerShell command**

```text
Update-OSMedia -Download -Execute
```

