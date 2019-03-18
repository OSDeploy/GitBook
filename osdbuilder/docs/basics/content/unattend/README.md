# Unattend

{% hint style="warning" %}
**An Unattend XML that is injected into a Windows Image during OSDBuilder will only process the Offline Servicing phase**

**This is NOT what you want to use if you want to add an Unattend.xml Answer File for Specialize or Generalize**
{% endhint %}

## Related Links

{% page-ref page="windows-system-image-manager.md" %}

{% embed url="https://docs.microsoft.com/en-us/powershell/module/dism/use-windowsunattend?view=win10-ps" %}

## Unattend Root File \*.xml Structure

Unattend is a Root File \*.xml Structure Content Directory.  This means that **OSDBuilder** will search Content\Unattend for all \*.xml files

## Example

### New-OSBuildTask

Create a **`New-OSBuildTask`** and select the Unattend XML file when prompted

![](../../../../../.gitbook/assets/image%20%2874%29.png)

### New-OSBuild

I can now create a **`New-OSBuild`** and add some Skip parameters to speed up my testing

```text
New-OSBuild -SkipComponentCleanup -SkipUpdates -SkipTemplates -Execute
```

![](../../../../../.gitbook/assets/image%20%2836%29.png)

### Show-OSDBuilderInfo

I can use this function to verify that my Features were Enabled

![](../../../../../.gitbook/assets/image%20%28141%29.png)

### New-OSBuilderVHD

Create a VHD for testing of the image using **`New-OSDBuilderVHD`**

![](../../../../../.gitbook/assets/image%20%28104%29.png)

### Testing

Ok, this didn't work as expected, so I'll have to do some more research

![](../../../../../.gitbook/assets/image%20%28144%29.png)













































