---
description: Updated 18.10.29
---

# Enable Windows Optional Feature

When creating an OSBuild for Windows 10, your have the option to enable a Windows Optional Feature

## -EnableWindowsOptionalFeature

Using this parameter with [**`New-OSBuildTask`**](./), you will be prompted to select Windows Optional Features to enable in your OSBuild.

```text
New-OSBuildTask -TaskName Demo -EnableWindowsOptionalFeature
```

Simply multi-select the Windows Optional Features to enable and press OK

![](../../../../../.gitbook/assets/2018-10-29_0-25-49.png)

The selected Windows Optional Features will be added to the OSBuild Task.  When executing [**`New-OSBuild`**](../new-osbuild.md), these Windows Optional Features will be enabled

![](../../../../../.gitbook/assets/2018-10-29_0-26-47enable.png)

