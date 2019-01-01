# Set-TimeZone

{% hint style="info" %}
Public Scripts: [https://github.com/OSDeploy/OSBuilder.Public/tree/master/Content/WinPE/Scripts](https://github.com/OSDeploy/OSBuilder.Public/tree/master/Content/WinPE/Scripts)
{% endhint %}

Here is a simple PowerShell script to set the TimeZone of WinPE

```text
#======================================================================================
#	Set Time Zone to Central Standard Time
#======================================================================================
Dism /Image:"$MountDirectory" /Set-TimeZone:"Central Standard Time" /LogPath:"$Logs\$((Get-Date).ToString('yyyy-MM-dd-HHmmss'))-Dism-SetTimeZone.log"

#======================================================================================
#	Testing
#======================================================================================
#	[void](Read-Host 'Press Enter to continue')
```

## Download

{% file src="../../../../../.gitbook/assets/set-timezone-central-standard-time.ps1" caption="TimeZone Central Standard Time" %}

