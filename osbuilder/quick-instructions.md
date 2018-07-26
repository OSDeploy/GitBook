# Quick Instructions

If you don't feel like reading through all the documentation, here are the quick instructions in 10 steps. These steps can be completed in about **8 minutes of Touch Time, and 54 - 142 minutes of Processing Time**

## 1. Install OSBuilder

> ### Touch Time Required: 1 Minute

```text
Install-Module -Name OSBuilder -Scope CurrentUser
```

[https://www.osdeploy.com/osbuilder/installation.html](https://www.osdeploy.com/osbuilder/installation.html)

## 2. Download Updates \(SSU, CU, Adobe\)

> ### Touch Time Required: 1 Minute
>
> ### Processing Time: 10 - 20 Minutes

```text
Get-OSBuilder -DownloadUpdates Latest
```

[https://www.osdeploy.com/osbuilder/how-to/download-servicing-stacks.html](https://www.osdeploy.com/osbuilder/how-to/download-servicing-stacks.html)

[https://www.osdeploy.com/osbuilder/how-to/download-windows-updates.html](https://www.osdeploy.com/osbuilder/how-to/download-windows-updates.html)

## 3. Import an Operating System

> ### Touch Time Required: 1 Minute
>
> ### Processing Time: 8 - 15 Minutes

```text
Import-OSMedia
```

[https://www.osdeploy.com/osbuilder/how-to/import-an-operating-system.html](https://www.osdeploy.com/osbuilder/how-to/import-an-operating-system.html)

## 4. Create an OSMedia Task

> ### Touch Time Required: 1 Minute

```text
New-OSMediaTask -TaskName "Win10 Ent x64 1803"
```

Select the OS that was imported in Step 3

[https://www.osdeploy.com/osbuilder/how-to/create-an-osmedia-task.html](https://www.osdeploy.com/osbuilder/how-to/create-an-osmedia-task.html)

## 5. Run the OSMedia Task

> ### Touch Time Required: 1 Minute
>
> ### Processing Time: 25 - 75 Minutes

```text
Invoke-OSBuilderTask -ExecutionMode Execute
```

Select the OSMedia Task that was created in Step 4

[https://www.osdeploy.com/osbuilder/how-to/executionmode-execute.html](https://www.osdeploy.com/osbuilder/how-to/executionmode-execute.html)

## 6. Create an OSBuild Task

> ### Touch Time Required: 1 Minute

```text
New-OSBuildTask -TaskName "Win10 x64 Ent 1803" -EnableNetFX3
```

Select the updated OSMedia that was created in Step 5

[https://www.osdeploy.com/osbuilder/how-to/create-an-osbuild-task.html](https://www.osdeploy.com/osbuilder/how-to/create-an-osbuild-task.html)

## 7. Run the OSBuild Task

> ### Touch Time Required: 1 Minute
>
> ### Processing Time: 10 - 30 Minutes

```text
Invoke-OSBuilderTask -ExecutionMode Execute
```

Select the OSBuild Task that was created in Step 6

[https://www.osdeploy.com/osbuilder/how-to/executionmode-execute.html](https://www.osdeploy.com/osbuilder/how-to/executionmode-execute.html)

## 8. Create an ISO

> ### Touch Time Required: 1 Minute
>
> ### Processing Time: 1 - 2 Minutes

```text
New-OSBuilderISO
```

Select the OSBuild that was created in Step 7

[https://www.osdeploy.com/osbuilder/how-to/create-an-iso.html](https://www.osdeploy.com/osbuilder/how-to/create-an-iso.html)

## 9. ???

## 10. Profit

\(Profit is made in the time savings versus other methods of Offline Servicing\)

## Updating your OSBuild with new Cumulative Updates

2\) Download Updates \(SSU, CU, Adobe\)  
5\) Run the OSMedia Task \(it will automatically select the newest OSMedia\)  
7\) Run the OSBuild Task \(it will automatically select the newest OSMedia\)

