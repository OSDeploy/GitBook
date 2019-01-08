# Repair-PEBuildTask

## Purpose <a id="purpose"></a>

The purpose of **Repair-PEBuildTask** is to update an old PEBuild Task to the current version. This function requires **PowerShell ISE** for Gridview to function properly.

## Example <a id="usage"></a>

In this example I have some PEBuild Tasks which can be identified by the prefix in the Json File Name \(MDT, Recovery, and WinPE\)

![](../../../../.gitbook/assets/2019-01-07_23-17-40.png)

A current [**New-PEBuildTask**](../pebuild/new-pebuildtask/) contains more information and can no longer be used with [**New-PEBuild**](../pebuild/new-pebuild.md)\*\*\*\*

![](../../../../.gitbook/assets/2019-01-07_23-20-07.png)

When using an old PEBuild Task with [**New-PEBuild**](../pebuild/new-pebuild.md), you will receive an error

![](../../../../.gitbook/assets/2019-01-07_23-22-18.png)

In this case, in PowerShell ISE,  execute **Repair-PEBuildTask** without any Parameters.  You will be prompted to select an existing [**OSMedia**](../../instructions/detailed/osmedia/) for use with each of the PEBuild Tasks that need to be updated

![](../../../../.gitbook/assets/2019-01-07_23-25-35.png)

Repeat this process for every PEBuild Task that needs an update.  Once Repair-PEBuildTask is complete, there should be no results in subsequent executions

![](../../../../.gitbook/assets/2019-01-07_23-28-38.png)

Everything should look good after this process is complete

![](../../../../.gitbook/assets/2019-01-07_23-30-18.png)

A backup of all your files will be created in a Repair subdirectory

![](../../../../.gitbook/assets/2019-01-07_23-31-41.png)



