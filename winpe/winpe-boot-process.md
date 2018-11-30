# WinPE Boot Process

For a good read on WinPE, check out the Microsoft Docs

{% embed url="https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/winpe-intro" %}

## Winlogon

Winlogon.exe is executed on startup.  This will read the WinPE Registry at HKLM\System\Setup for the CmdLine value.  By default this is winpeshl.exe.  When winpeshl.exe executes, it reads values from winpeshl.ini

![](../.gitbook/assets/2018-11-27_21-59-27.png)

## Winpeshl.ini

{% tabs %}
{% tab title="Setup.wim" %}
_&lt;Does not exist&gt;_
{% endtab %}

{% tab title="WinPE.wim" %}
_&lt;Does not exist&gt;_
{% endtab %}

{% tab title="WinRE.wim" %}
\[LaunchApp\]

AppPath=X:\sources\recovery\recenv.exe
{% endtab %}

{% tab title="MDT" %}
\[LaunchApps\]

%SYSTEMROOT%\System32\bddrun.exe,/bootstrap
{% endtab %}

{% tab title="ConfigMgr" %}
\[LaunchApps\]

%SYSTEMDRIVE%\sms\bin\x64\TsBootShell.exe
{% endtab %}
{% endtabs %}

## ConfigMgr: TSBootShell.ini

```text
[Shell]
OrgName=OSDeploy
EnableDebugShell=true
Run=X:\sms\bin\x64\TsmBootstrap.exe /env:WinPE /configpath:%CONFIGPATH%
```

## Startnet.cmd

{% tabs %}
{% tab title="Setup.wim" %}
wpeinit
{% endtab %}

{% tab title="WinPE.wim" %}
wpeinit
{% endtab %}

{% tab title="WinRE.wim" %}
wpeinit
{% endtab %}

{% tab title="MDT" %}
wpeinit
{% endtab %}

{% tab title="ConfigMgr" %}
wpeinit
{% endtab %}
{% endtabs %}





