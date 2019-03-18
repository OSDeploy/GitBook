# Update OSDBuilder

## Check OSDBuilder for Updates

You can use**`Get-OSDBuilder`** to check if there is an update to the **OSDBuilder** PowerShell Module.  Keep in mind that updating the **OSDBuilder** PowerShell Module will also update the **OSDUpdate Catalogs**

If there is an updated version available, you will see a notification on the bottom.  This will also remind you of the PowerShell Command to update **OSDBuilder**

![](../../../.gitbook/assets/image%20%28136%29.png)

## OSDBuilder -Update

Executing **`OSDBuilder -Update`** is the same as running the following commands

```text
Uninstall-Module -Name OSDBuilder -AllVersions -Force
Install-Module -Name OSDBuilder -Force
Import-Module -Name OSDBuilder -Force
```

![](../../../.gitbook/assets/image%20%28143%29.png)

## OSDBuilder is OK

If everything is OK and no updates are needed, the **OSDBuilder Module version** will be displayed in Green

![](../../../.gitbook/assets/image%20%28123%29.png)



