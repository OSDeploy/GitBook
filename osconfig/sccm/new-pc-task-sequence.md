# New PC Task Sequence

Adding OSConfig to a New PC Task Sequence is done in three Run Command Line steps.  In the Setup Operating System phase, immediately after Setup Windows and Configuration Manager, create a New Group called OSConfig.

---

### OSConfig Remove Existing

While this step is not really required for a New PC Task Sequence, this will maintain consistency with Upgrade Task Sequences \(you can disable this step if you prefer\).  Under the Options tab, check the Continue on error.  Enter the following in the Command line

```
cmd /c rd %ProgramData%\OSConfig /S /Q
```

![](/assets/2018-05-31_12-22-06.png)

---

### OSConfig Apply Package

Another Run Command Line step is all it takes to copy the Package Content to C:\ProgramData\OSConfig

```
cmd.exe /c md %ProgramData%\OSConfig & cmd.exe /c xcopy ".\*" %ProgramData%\OSConfig /y /e
```

![](/assets/2018-05-31_12-24-53.png)

---

### OSConfig Execution

This is the final Command Line to actually run OSConfig.

```
PowerShell.exe -ExecutionPolicy Bypass -File %ProgramData%\OSConfig\OSConfig.ps1
```

![](/assets/2018-05-31_12-26-41.png)

---

### Task Sequence Progress

Since this is a simple OSD Task Sequence without MDT Integration, we really don't have a way to tell that OSConfig has executed properly during Windows Setup.  You should see the following screens during Windows Setup

![](/assets/2018-05-31_12-54-56.png)![](/assets/2018-05-31_12-57-33.png)

---

### Lock and Logon Screens

The first time we see that everything executed properly is when the Lock and Logon Screens show up.  This is exactly how I configured it :\)

![](/assets/2018-05-31_12-58-35.png)

![](/assets/2018-05-31_12-58-44.png)

---

### Desktop

Everything looks great on the Desktop.  I can then go into C:\ProgramData\OSConfigLogs to see the results of my scripts.

![](/assets/2018-05-31_13-00-28.png)

![](/assets/2018-05-31_13-01-22.png)



