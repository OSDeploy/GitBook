# Windows System Image Manager

You can easily create a Windows Unattend with Windows System Image Manager \(ADK\) to use in OSDBuilder

## Create a Windows Image Catalog

Open Windows System Image Manager to Select a Windows Image

![](../../../../../.gitbook/assets/image%20%2883%29.png)

In this example, I will be Servicing Windows Server 2019 \(Desktop Experience\).  The Install.wim will be mounted and a Catalog will be created

![](../../../../../.gitbook/assets/image%20%2853%29.png)

The Catalog will be saved with the Install.wim.  This file can be used for future builds with Windows System Image Manager so it doesn't have to mount the Install.wim

![](../../../../../.gitbook/assets/image%20%28130%29.png)

When complete, Packages will contain detailed information about the Windows Image

![](../../../../../.gitbook/assets/image%20%2811%29.png)

## Add Roles and Features

Select the Foundation Package and Add to Answer File

![](../../../../../.gitbook/assets/image%20%2890%29.png)

At this point you can Enable or Disable Features.  In this case I want to add SessionDirectory.  Rather than change the **Disabled** to **Enabled**, I need to **Enable Parent Features**

![](../../../../../.gitbook/assets/image%20%2839%29.png)

A simple Yes will add all the required Features

![](../../../../../.gitbook/assets/image%20%2830%29.png)

When complete, press the Save button on the toolbar to create the Unattend XML.  Save this file in the Content\Unattend directory

![](../../../../../.gitbook/assets/image%20%2870%29.png)

## Resolve Validation Errors

Keep an eye out for any Validation Errors.  This will cause the Unattend XML to fail

![](../../../../../.gitbook/assets/image%20%28113%29.png)

The Unattend XML is now ready to be added to a **`New-OSBuildTask`**

