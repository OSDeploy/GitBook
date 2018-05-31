# Upgrade Task Sequence

For an Upgrade Task Sequence, the steps will be identical to the ones in the New PC Task Sequence.  In an Upgrade, OSConfig is executed in the Post-Processing phase, immediately after the Upgrade the Operating System.

Start by creating a New Group called OSConfig \(with Continue on error\)

---

### OSConfig Remove Existing

To make sure that OSConfig is cleared before running again, a simple Run Command Line does the trick

```
cmd /c rd %ProgramData%\OSConfig /S /Q
```

![](/assets/2018-05-31_12-50-24.png)

---

### OSConfig Apply Package

Another Run Command Line step is all it takes to copy the Package Content to C:\ProgramData\OSConfig

```
cmd.exe /c md %ProgramData%\OSConfig & cmd.exe /c xcopy ".\*" %ProgramData%\OSConfig /y /e
```

![](/assets/2018-05-31_12-51-00.png)

---

### OSConfig Execution

Final Command Line to actually run the PowerShell script.

```
PowerShell.exe -ExecutionPolicy Bypass -File %ProgramData%\OSConfig\OSConfig.ps1
```

![](/assets/2018-05-31_12-51-41.png)

---

### Task Sequence Progress

The following screens should be visible during the Task Sequence

