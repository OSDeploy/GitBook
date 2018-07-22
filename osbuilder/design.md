# OSBuilder Design

Most people are visual, so to help you understand how OSBuilder will work, here is the OSBuilder Lifecycle.  So let's talk about how this works.

### ![](/assets/2018-07-21_23-10-22.png)Patch Tuesday

On Patch Tuesday, download your required bits into OSBuilder using the following command

```
Get-OSBuilder -DownloadUpdates Latest
```

Make sure you remove any superseded Servicing Stacks and Cumulative Updates.

### OSMedia Task

Create an OSMedia Task and execute it.  This will automatically take the latest OSMedia version and update the new Servicing Stack and Cumulative Update to the Install.wim as well as the Boot.wim \(both indexes\) and WinRE.wim.  When this is complete, you will have a new OSMedia Image \(since the version should change\).

### OSBuild Task

The OSBuild Task will contain customizations, like enabling NetFX3, removing some Appx Packages, adding Drivers, or even adding a custom Start Layout.  The OSBuild Task will automatically use the latest OSMedia \(the one you just created\) and customize that.  Once the execution of this task is complete, you will have a custom OSBuild which can then deploy to your environment. You can choose to make multiple OSBuilds from the same OSMedia that have different configurations \(eg. one Enterprise and one Manufacturing OSBuild\)

### The Cycle

This is where your process repeats.  When Microsoft releases a new round of updates, download the updates you need, and remove the ones you don't from OSBuilder.  Then Invoke-OSBuilderTask and select both your OSMedia Task and your OSBuild Task.  The OSMedia will process first, creating an updated OSMedia and the OSBuild Task will automatically pick the new OSMedia version and customize it.  As long as there are no changes, you will spend 10 minutes or so downloading updates, and about a minute kicking off the Tasks.  While the build process will take a little while to run, you will probably spend 5 minutes or so in the Patch and Task kickoff parts.

