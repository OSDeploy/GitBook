# Basic Task

Tasks are created with **`New-OSBuildTask`**.  You must specify a **`TaskName`** \(unique\).  You can optionally specify a **`CustomName`**.  The **`CustomName`** will be given to the output Directory in **OSBuilds**

## Prerequisites

{% page-ref page="../../functions/osmedia/import-osmedia.md" %}

{% page-ref page="../update-osmedia/" %}

## Functions

{% page-ref page="../../functions/osbuild/new-osbuildtask.md" %}

## **New-OSBuildTask**

Start with the following PowerShell command

```text
New-OSBuildTask -TaskName "Reference Image Windows 10 x64 1809" -CustomName "Reference Image Windows 10 x64 1809"
```

You will be prompted to elect an **OSMedia** to use for creating the **OSBuild**

![](../../../../.gitbook/assets/image%20%28141%29.png)

After selecting an **OSMedia**, the selected **OSMedia** details will be displayed

![](../../../../.gitbook/assets/image%20%2831%29.png)

If no configuration **Parameters** have been used, and you don't have existing **Content**, you will see some reminders and warnings

![](../../../../.gitbook/assets/image%20%2897%29.png)

And finally the Task will be completed with absolutely nothing of real importance

![](../../../../.gitbook/assets/image%20%28193%29.png)

## Task JSON

The **Task** configuration will be saved as a **JSON** in **&lt;OSDBuilder Home&gt;\Tasks**

![](../../../../.gitbook/assets/image%20%2850%29.png)



