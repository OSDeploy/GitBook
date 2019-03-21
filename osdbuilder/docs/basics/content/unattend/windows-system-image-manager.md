# Windows System Image Manager

**You can easily create a Windows Unattend with Windows System Image Manager \(ADK\) to use in OSDBuilder**

## Create a Windows Image Catalog

Open Windows System Image Manager to Select a Windows Image

![](../../../../../.gitbook/assets/image%20%2896%29.png)

In this example, I will be Servicing Windows 10 Enterprise x64 1809.  The Install.wim will be mounted and a Catalog will be created

![](../../../../../.gitbook/assets/image%20%2860%29.png)

The Catalog will be saved in the Sources directory with the Install.wim.  This file can be used for future builds with Windows System Image Manager so it doesn't have to mount the Install.wim

![](../../../../../.gitbook/assets/image%20%28172%29.png)

When complete, Packages will contain detailed information about the Windows Image

![](../../../../../.gitbook/assets/image%20%28138%29.png)

## Answer File

Creaate a new Answer File

![](../../../../../.gitbook/assets/image%20%28135%29.png)

## Add Features

Select the Foundation Package and then Add to Answer File

![](../../../../../.gitbook/assets/image%20%2853%29.png)

At this point you can Enable or Disable Features.  Make sure you **Enable Parent Features** to include all Dependencies.  You may also individually Enable or Disable Features

![](../../../../../.gitbook/assets/image%20%2873%29.png)

### Save Unattend XML

When complete, press the Save button on the toolbar to create the Unattend XML.  Save this file in the OSDBuilder\Content\Unattend directory

![](../../../../../.gitbook/assets/image%20%2898%29.png)

## Resolve Validation Errors

Keep an eye out for any Validation Errors.  This will cause the Unattend XML to fail

![](../../../../../.gitbook/assets/image%20%28132%29.png)

The Unattend XML is now ready to be added to a **`New-OSBuildTask`**

