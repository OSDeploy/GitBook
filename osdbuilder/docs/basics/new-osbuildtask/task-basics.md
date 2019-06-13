# Task Basics

### Prerequisites

{% page-ref page="../../functions/osmedia/import-osmedia.md" %}

{% page-ref page="../update-osmedia/" %}

### Functions

{% page-ref page="../../functions/osbuild/new-osbuildtask.md" %}

## **New-OSBuildTask**

Tasks and Templates are created with the **`New-OSBuildTask`** function.  This can get quite complicated, so let's have a look at it in the PowerShell ISE Command Window.  I have populated the settings that you should start with

![](../../../../.gitbook/assets/image%20%2840%29.png)

### TaskName \(Mandatory\)

You must specify a **`TaskName`** as this is a Mandatory parameter.  This will be used to name the Task JSON filename

{% hint style="info" %}
**To edit a Task, you must use the same TaskName and SaveAs parameters**
{% endhint %}

## CustomName

You can optionally specify a **`CustomName`**.  The **`CustomName`** will be given to the output Directory in **OSBuilds** when **`New-OSBuild`** completes

## **Run Command**

When you are ready, run the PowerShell command

```text
New-OSBuildTask -TaskName "Win10 x64 1809 DEV" -CustomName "Win10 x64 1809 DEV"
```

You will be prompted to elect an **OSMedia** to use for creating the **OSBuild**.  Only the LATEST **OSMedia** will be shown.  After selecting an **OSMedia**, the selected **OSMedia** details will be displayed

![](../../../../.gitbook/assets/image%20%282%29.png)

Since no real configuration **Parameters** were used, there won't be much of anything else displayed

![](../../../../.gitbook/assets/image%20%28164%29.png)

And finally the Task will be completed with absolutely nothing of real importance

![](../../../../.gitbook/assets/image%20%28276%29.png)

## Task JSON

The **Task** configuration will be saved as a **JSON** in **&lt;OSDBuilder Home&gt;\Tasks**.  My **OSDBuilder Home** is **D:\OSDBuilder\Demo**

![](../../../../.gitbook/assets/image%20%28178%29.png)

## Edit a Task

{% hint style="info" %}
**To edit a Task, you must use the same TaskName and SaveAs parameters**
{% endhint %}

When you edit a Task, you are adding to it.  You must use the same **TaskName** \(and **SaveAs**\) that was previously used

Use the following Command without specifying the **`CustomName`** parameter

```text
New-OSBuildTask -TaskName "Win10 x64 1809 DEV"
```

In this case, a Warning will be presented letting you know that the Task will be edited.  Additionally, the **`CustomName`**  value existed previously, and is retained

![](../../../../.gitbook/assets/image%20%28239%29.png)



