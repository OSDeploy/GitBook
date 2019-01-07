# Repair-OSBuildTask

## Purpose

The purpose of Repair-OSBuildTask is to update an existing OSBuild Task to the current version.  This function requires PowerShell ISE for Gridview to function properly.

## Usage

In PowerShell ISE, simply execute Repair-OSBTask.  You will be prompted to select an existing OSMedia to associate with the OSBuild Task.

![](../../../../.gitbook/assets/2019-01-06_23-54-59.png)

This will be repeated for every OSBuild Task that needs to be repaired.

![](../../../../.gitbook/assets/2019-01-07_0-01-20.png)

One all OSBuild Tasks have been updated, no results should be returned in subsequent executions of **Repair-OSBuildTask**

