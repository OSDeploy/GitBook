# Quick Instructions

If you don't feel like reading through all the documentation, here are the quick instructions in 10 steps

---

### 1. Install OSBuilder

```
Install-Module -Name OSBuilder -Scope CurrentUser
```

[https://www.osdeploy.com/osbuilder/installation.html](https://www.osdeploy.com/osbuilder/installation.html)

---

### 2. Download Updates \(SSU, CU, Adobe\)

```
Get-OSBuilder -DownloadUpdates Latest
```

[https://www.osdeploy.com/osbuilder/how-to/download-servicing-stacks.html](https://www.osdeploy.com/osbuilder/how-to/download-servicing-stacks.html)

[https://www.osdeploy.com/osbuilder/how-to/download-windows-updates.html](https://www.osdeploy.com/osbuilder/how-to/download-windows-updates.html)

---

### 3. Import an Operating System

```
Import-OSMedia
```

[https://www.osdeploy.com/osbuilder/how-to/import-an-operating-system.html](https://www.osdeploy.com/osbuilder/how-to/import-an-operating-system.html)

---

### 4. Create an OSMedia Task

```
New-OSMediaTask -TaskName "Win10 Ent x64 1803"
```

[https://www.osdeploy.com/osbuilder/how-to/create-an-osmedia-task.html](https://www.osdeploy.com/osbuilder/how-to/create-an-osmedia-task.html)

---

### 5. Run the OSMedia Task

```
Invoke-OSBuilderTask -ExecutionMode Execute
```

[https://www.osdeploy.com/osbuilder/how-to/executionmode-execute.html](https://www.osdeploy.com/osbuilder/how-to/executionmode-execute.html)

---

### 6. Create an OSBuild Task

```
New-OSBuildTask -TaskName "Win10 x64 Ent 1803" -EnableNetFX3
```

[https://www.osdeploy.com/osbuilder/how-to/create-an-osbuild-task.html](https://www.osdeploy.com/osbuilder/how-to/create-an-osbuild-task.html)

---

### 7. Run the OSBuild Task

```
Invoke-OSBuilderTask -ExecutionMode Execute
```

[https://www.osdeploy.com/osbuilder/how-to/executionmode-execute.html](https://www.osdeploy.com/osbuilder/how-to/executionmode-execute.html)

---

### 8. Create an ISO

```
New-OSBuilderISO
```

[https://www.osdeploy.com/osbuilder/how-to/create-an-iso.html](https://www.osdeploy.com/osbuilder/how-to/create-an-iso.html)

---

### 9. ???

---

### 10. Profit

\(Profit is made in the time savings versus other methods of Offline Servicing\)

---

### Updating your OSBuild with new Cumulative Updates

Repeat steps \#2 and \#7 -10

---



