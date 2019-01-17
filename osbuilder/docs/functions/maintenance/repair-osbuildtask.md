# Repair-OSBuildTask

## Purpose <a id="purpose"></a>

The purpose of **Repair-OSBuildTask** is to update an old OSBuild Task to the current version. This function requires **PowerShell ISE** for Gridview to function properly.

## Example <a id="usage"></a>

In this example I have some OSBuild Tasks which can be identified by the OSBuild prefix in the Json File Name.

![](../../../../.gitbook/assets/2019-01-08_1-10-12.png)

A current [**New-OSBuildTask**](../osbuild/new-osbuildtask/) contains more information and can no longer be used with [**New-OSBuild**](../osbuild/new-osbuild.md)\*\*\*\*

![](../../../../.gitbook/assets/2019-01-08_1-12-40.png)

When using an old OSBuild Task with [**New-OSBuild**](../osbuild/new-osbuild.md), you will receive an error

![](../../../../.gitbook/assets/2019-01-08_1-14-59.png)

In PowerShell ISE,  execute **Repair-OSBuildTask** without any parameters.  You will be prompted to select an existing [**OSMedia**]() for use with each of the OSBuild Tasks that need to be updated

![](../../../../.gitbook/assets/2019-01-08_1-37-27.png)

Repeat this process for every PEBuild Task that needs an update.  Once Repair-PEBuildTask is complete, there should be no results in subsequent executions

![](../../../../.gitbook/assets/2019-01-08_1-42-03.png)

Everything should look good after this process is complete

![](../../../../.gitbook/assets/2019-01-08_1-43-17.png)

A backup of the old OSBuild Task will be created in a Repair subdirectory

![](../../../../.gitbook/assets/2019-01-08_1-44-56.png)



