# Upgrade Task Sequence

Adding OSConfig to an Upgrade Task Sequence is done in three steps.  In Post-Processing, immediately after the Upgrade the Operating System, create a New Group.

---

### Remove Existing Content

To make sure that OSConfig is cleared before running again, a simple Run Command Line does the trick

```
cmd /c rd %ProgramData%\OSConfig /S /Q
```

![](/assets/2018-05-31_10-03-31.png)

---

### Apply Package Content

Another Run Command Line step is all it takes to copy the Package Content to C:\ProgramData\OSConfig

```
cmd.exe /c md %ProgramData%\OSConfig & cmd.exe /c xcopy ".\*" %ProgramData%\OSConfig /y /e
```

![](/assets/2018-05-31_10-04-01.png)

---

### Execute OSConfig

Final Command Line to actually run the PowerShell script.

```
PowerShell.exe -ExecutionPolicy Bypass -File %ProgramData%\OSConfig\OSConfig.ps1
```

![](/assets/2018-05-31_10-04-29.png)

---

Task Sequence Progress







