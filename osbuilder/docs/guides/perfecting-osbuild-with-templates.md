# Perfecting OSBuild with Templates

Creating a custom OSBuild in a single Task can get quite complicated, with more options to configure than an Apple Watch.  This is where **OSBuilder 19.1.31 "San Antonio"** makes things easier.

## Baby Steps

When working with Templates, Baby Steps are important.  Instead of trying to create a perfect OSBuild Task which make take weeks to develop, spend time creating Templates that are perfected due to the smaller scope.

## New-OSBuildTask with Custom Name

Create a New-OSBuild Task without any customizations and give it a CustomName.  This will be used as a Control Task

```text
New-OSBuildTask -TaskName 'My Custom Windows 10 x64 1809' -CustomName 'My Custom Windows 10 x64 1809'
```

![](../../../.gitbook/assets/2019-01-29_15-01-14.png)

## Remove Appx Provisioned Package Template

By now you should know what Appx Provisioned Packages you want to remove.  Use the following PowerShell command line to create an OSBuild Task to remove the ones you don't want.

```text
New-OSBuildTask -TaskName 'Template Windows 10 x64 1809 Appx' -RemoveAppxProvisionedPackage
```

You will need to select an Operating System and then multi-select the Appx Provisioned Packages to remove and press OK

![](../../../.gitbook/assets/2019-01-29_14-52-52.png)

When complete, the Task will be saved in the OSBuilder Tasks directory.  Here is what the selection above looks like in the Task JSON file.  In this format, it should be easy to edit manually if you need to make changes

![](../../../.gitbook/assets/2019-01-29_14-56-26.png)

Move the Task JSON file into the OSBuilder Templates directory

![](../../../.gitbook/assets/2019-01-29_14-57-21.png)

## New-OSBuild -ByTaskName

You can easily validate the Template by using **`New-OSBuild`** with the **`ByTaskName`** parameter.  When using **`New-OSBuild`** without the **`Execute`** parameter, it will only validate the OSBuild, which is ideal for testing

```text
New-OSBuild -ByTaskName 'My Custom Windows 10 x64 1809'
```

The command above will start the **`New-OSBuild`** process.  The first step is to display the Task information

![Task Information](../../../.gitbook/assets/2019-01-29_15-03-41.png)

**`New-OSBuild`** will then select the latest UBR for this Task OSMedia automatically.  After the newest OSMedia is selected, Templates will be processed.  In the example below, the Appx Template that was create is applied

![](../../../.gitbook/assets/2019-01-29_15-04-09.png)

## Global Defaults Template

By design, all Templates will be applied to a matching **OSMedia Family**, meaning if you create a Template with Windows 10 x64 1809 the Template will only apply to that specific **&lt;OS&gt;&lt;Arch&gt;&lt;ReleaseId&gt;**

To create a Template for **All** OSBuilds, use the word **Global** \(not case sensitive\) in the **`TaskName`**

```text
New-OSBuildTask -TaskNAme 'Template Global Defaults' -EnableNetFX3 -WinPEAutoExtraFiles
```

The command above will allow me to ensure that all my OSBuilds have these two settings enabled

![](../../../.gitbook/assets/2019-01-29_15-08-13.png)

## Global Scripts Template

I have a few PowerShell scripts that I like to apply on all of my OSBuilds, so I can create a **`New-OSBuildTask`** for only my Global PowerShell Scripts.  Once created, I can move the OSBuild Task JSON file into my OSBuild Templates

![](../../../.gitbook/assets/2019-01-29_15-10-48.png)

## Global Testing

Time to do another round of testing with the new Templates

```text
New-OSBuild -ByTaskName 'My Custom Windows 10 x64 1809'
```

In the screenshot below, the two Global Templates were applied as well as the Appx Template.  The OSBuild Task Information shows the combination of all three Templates

**This is the proper way to Perfect an OSBuild**

![](../../../.gitbook/assets/2019-01-29_15-12-14.png)

## Damage Control

Now let's make sure that we don't cause any Template bleed between Operating Systems.  I create a **`New-OSBuildTask`** for Windows 10 x64 1803 and remove everything for **`RemoveAppxProvisionedPackage`**

![](../../../.gitbook/assets/2019-01-29_15-14-15.png)

The Task JSON file clearly shows all the Appx Provisioned Packages being removed

![](../../../.gitbook/assets/2019-01-29_15-15-16.png)

I then move the Task JSON into Templates and test again with New-OSBuild.  This is the expected result, the Template is skipped because the OSMedia Family didn't match

![](../../../.gitbook/assets/2019-01-29_15-16-05.png)











