# Quick Instructions

If you don't feel like reading through all the documentation, here are the quick instructions in 10 steps.  These steps can be completed in about 8 minutes of Touch Time, and 54 - 142 minutes of Processing Time. \*[^1]

---

### 1. Install OSBuilder

> ###### Touch Time Required: 1 Minute

```
Install-Module -Name OSBuilder -Scope CurrentUser
```

[https://www.osdeploy.com/osbuilder/installation.html](https://www.osdeploy.com/osbuilder/installation.html)

---

### 2. Download Updates \(SSU, CU, Adobe\)

> ###### Touch Time Required: 1 Minute
>
> ###### Processing Time: 10 - 20 Minutes

```
Get-OSBuilder -DownloadUpdates Latest
```

[https://www.osdeploy.com/osbuilder/how-to/download-servicing-stacks.html](https://www.osdeploy.com/osbuilder/how-to/download-servicing-stacks.html)

[https://www.osdeploy.com/osbuilder/how-to/download-windows-updates.html](https://www.osdeploy.com/osbuilder/how-to/download-windows-updates.html)

---

### 3. Import an Operating System

> ###### Touch Time Required: 1 Minute
>
> ###### Processing Time: 8 - 15 Minutes

```
Import-OSMedia
```

[https://www.osdeploy.com/osbuilder/how-to/import-an-operating-system.html](https://www.osdeploy.com/osbuilder/how-to/import-an-operating-system.html)

---

### 4. Create an OSMedia Task

> ###### Touch Time Required: 1 Minute

```
New-OSMediaTask -TaskName "Win10 Ent x64 1803"
```

[https://www.osdeploy.com/osbuilder/how-to/create-an-osmedia-task.html](https://www.osdeploy.com/osbuilder/how-to/create-an-osmedia-task.html)

---

### 5. Run the OSMedia Task

> ###### Touch Time Required: 1 Minute
>
> ###### Processing Time: 25 - 75 Minutes

```
Invoke-OSBuilderTask -ExecutionMode Execute
```

[https://www.osdeploy.com/osbuilder/how-to/executionmode-execute.html](https://www.osdeploy.com/osbuilder/how-to/executionmode-execute.html)

---

### 6. Create an OSBuild Task

> ###### Touch Time Required: 1 Minute

```
New-OSBuildTask -TaskName "Win10 x64 Ent 1803" -EnableNetFX3
```

[https://www.osdeploy.com/osbuilder/how-to/create-an-osbuild-task.html](https://www.osdeploy.com/osbuilder/how-to/create-an-osbuild-task.html)

---

### 7. Run the OSBuild Task

> ###### Touch Time Required: 1 Minute
>
> ###### Processing Time: 10 - 30 Minutes

```
Invoke-OSBuilderTask -ExecutionMode Execute
```

[https://www.osdeploy.com/osbuilder/how-to/executionmode-execute.html](https://www.osdeploy.com/osbuilder/how-to/executionmode-execute.html)

---

### 8. Create an ISO

> ###### Touch Time Required: 1 Minute
>
> ###### Processing Time: 1 - 2 Minutes

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

2\) Download Updates \(SSU, CU, Adobe\)  
5\) Run the OSMedia Task  
7\) Run the OSBuild Task

---



[^1]: Estimated time using a Dell Precision 7510 \(Intel Core i7 / 16GB RAM / SSD\) running Windows 10 x64 and NO RUNNING ANTIVIRUS

