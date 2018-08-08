# Apply Local Policies

Now comes the fun part.  Replace your OSConfig.ps1 with this code and try run through your test again

```text
#======================================================================================
#	Author: David Segura
#	Version: 18.8.8
#	https://www.osdeploy.com/osconfig/development/apply-local-policies
#======================================================================================
#	Start OSConfig
Write-Host "Starting OSConfig..." -ForegroundColor Yellow
Write-Host ""
#======================================================================================
#	OSConfig Content
Write-Host "Importing LGPO Policy..." -ForegroundColor Yellow
Start-Process "$PSScriptRoot\LGPO\LGPO.exe" -ArgumentList ('/g',"$PSScriptRoot\Policy",'/v') -Wait
#======================================================================================
#	For Testing Only
#	Start-Process PowerShell_ISE.exe -Wait
#	Read-Host -Prompt "Press Enter to Continue"
#======================================================================================
```

{% hint style="info" %}
You can download this script from [GitHub](https://github.com/OSDeploy/OSConfig.Development/tree/master/Apply%20Local%20Policies)
{% endhint %}

### Getting Ready

After your VM restarts from WinPE, you will see the the exported Policies being applied with LGPO

![](../../.gitbook/assets/2018-08-08_0-26-17.png)

### Windows Start Layout and Wallpaper

When Windows comes up, enjoy the sweet customizations

![](../../.gitbook/assets/2018-08-08_0-17-46.png)

### Lock Screen

![](../../.gitbook/assets/2018-08-08_0-18-00.png)

### Logon Screen

![](../../.gitbook/assets/2018-08-08_0-18-05.png)

### Local Computer Policy

And best of all, since this configuration was done with a Policy, every change is visible in the Local Group Policy Editor.  When you "hack" the registry to add customizations, you don't see your changes reflected here.

![](../../.gitbook/assets/2018-08-08_0-18-48.png)



