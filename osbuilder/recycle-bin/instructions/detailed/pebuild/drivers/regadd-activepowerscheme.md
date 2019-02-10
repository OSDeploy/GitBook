# RegAdd ActivePowerScheme

{% file src="../../../../../../.gitbook/assets/regadd-activepowerscheme.inf" %}

WinPE is set to use Balanced as the Default Power Scheme, but changing this to High Performance can cut down the OS Deployment time in WinPE.

![Default Power Scheme: Balanced](../../../../../../.gitbook/assets/2018-10-18_14-39-50.png)

This Driver will automatically set the Default Power Scheme to High Performance, without mounting the Registry or adding a Step in your Task Sequence.

![RegAdd INF](../../../../../../.gitbook/assets/2018-10-18_14-38-05.png)

![Recommended Default Power Scheme: High Performance](../../../../../../.gitbook/assets/2018-10-18_14-41-49.png)

## OSBuilder.Public Repository

This Driver is included in the OSBuilder.Public Repository at: **OSBuilder.Public\Content\WinPE\Drivers\RegAdd ActivePowerScheme**

{% embed url="https://github.com/OSDeploy/OSBuilder.Public" caption="OSBuilder.Public\\Content\\WinPE\\Drivers\\RegAdd ActivePowerScheme" %}

## 



