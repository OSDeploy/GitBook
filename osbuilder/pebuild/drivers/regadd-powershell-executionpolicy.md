# RegAdd PowerShell ExecutionPolicy

{% file src="../../../.gitbook/assets/regadd-powershell-executionpolicy.inf" %}

By default, WinPE has the PowerShell ExecutionPolicy set to **Restricted**

![WinPE Default PowerShell ExecutionPolicy](../../../.gitbook/assets/2018-10-18_23-55-22.png)

If you want to set this to **Bypass**, just add the RegAdd PowerShell ExecutionPolicy Driver to make this change automatically.  No need to run PowerCfg or mount the WinPE Registry

![RegAdd PowerShell ExecutionPolicy Driver](../../../.gitbook/assets/2018-10-18_23-55-32.png)

## OSBuilder.Public Repository

This Driver is included in the OSBuilder.Public Repository at: **OSBuilder.Public\Content\WinPE\Drivers\RegAdd PowerShell ExecutionPolicy**

{% embed url="https://github.com/OSDeploy/OSBuilder.Public" caption="OSBuilder.Public\\Content\\WinPE\\Drivers\\RegAdd PowerShell ExecutionPolicy" %}

## 

