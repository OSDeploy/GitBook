# Unattend

## Purpose

The purpose of the **Unattend Content** is to allow you to **immediately apply the Offline Servicing Phase** to an **OSBuild**, and to inject the select Unattend XML file to **C:\Windows\Panther\Unattend.xml** to process the **Generalize, Specialize, and OOBE Phases**

## Related Links

{% page-ref page="windows-system-image-manager.md" %}

{% embed url="https://docs.microsoft.com/en-us/powershell/module/dism/use-windowsunattend?view=win10-ps" %}

## Unattend Root File \*.xml Structure

Unattend is a Root File \*.xml Structure Content Directory.  This means that **OSDBuilder** will search Content\Unattend for all \*.xml files

## Example

### New-OSBuildTask

Create a **`New-OSBuildTask`** and select the Unattend XML file when prompted

![](../../../../../.gitbook/assets/image%20%2892%29.png)

### New-OSBuild

I can now create a **`New-OSBuild`** and add some Skip parameters to speed up my testing

```text
New-OSBuild -SkipComponentCleanup -SkipUpdates -SkipTemplates -Execute
```

![](../../../../../.gitbook/assets/image%20%2840%29.png)



