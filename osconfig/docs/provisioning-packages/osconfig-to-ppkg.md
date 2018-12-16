# OSConfig to PPKG

This is the Cheddar.  If you have OSConfig customized to your liking . . . you can proceed to the Finish Line  and create a Provisioning Package.

{% hint style="danger" %}
You need to get OSConfig.ps1 version 18.9.4 or newer to support Provisioning Packages properly.  [OSConfig Release Information](https://www.osdeploy.com/osconfig/downloads/osconfig)
{% endhint %}

You can following this process or use the Microsoft Guide linked below

{% hint style="info" %}
[Use a script to install a desktop app in provisioning packages](https://docs.microsoft.com/en-us/windows/configuration/provisioning-packages/provisioning-script-to-install-app)
{% endhint %}

## OSDeploy PowerShell Module

Before going any further, make sure you have the OSDeploy PowerShell Module installed, unless you want to create a CAB DDF file manually.

{% embed url="https://www.osdeploy.com/osconfig/downloads/osdeploy-powershell-module" %}

## Convert OSConfig to CAB

Use New-CAB \(OSDeploy PowerShell Module\) to create a CAB from a Directory using the following command

```text
New-CAB -SourceDirectory D:\DeploymentShare\OSDeploy\OSConfig
```

![](../../../.gitbook/assets/2018-09-04_14-32-23.png)

When complete, you will have a DDF \(Directive File\) and CAB

![](../../../.gitbook/assets/2018-09-04_14-35-01.png)

## Create a New Advanced Provisioning Package

Using WICD, create an Advanced Provisioning Package and enter some random details

![](../../../.gitbook/assets/2018-09-04_14-39-28.png)

All Windows desktop editions should work fine

![](../../../.gitbook/assets/2018-09-04_14-39-53.png)

## Create a Provisioning Command <a id="create-a-provisioningcommand"></a>

In the left Navigation Pane, expand ProvisioningCommands and PrimaryContext.  In the Name field, enter OSConfig and press the Add button

![](../../../.gitbook/assets/2018-09-04_14-44-50.png)

## Set the Command File <a id="set-the-command"></a>

Select the Command on the Left Navigation Pane. In the Main window, Browse to OSConfig.ps1.  Enter the following CommandLine

```text
PowerShell.exe -ExecutionPolicy Bypass -File OSConfig.ps1
```

Set the other values as shown

![](../../../.gitbook/assets/2018-09-04_14-50-26.png)

## Add a Dependency Package

Now its time to add a Dependency Package.  In the Left Navigation Pane, select DependencyPackages.  In the Main window, Browse to the OSConfig.cab and press the Add button.

![](../../../.gitbook/assets/2018-09-04_14-52-12.png)

## Export the Provisioning Package <a id="export-the-provisioning-package"></a>

Select Export from the top Menu and then select Provisioning package

![](../../../.gitbook/assets/2018-09-04_14-53-48.png)

## Build Owner <a id="build-owner"></a>

Change the Build Owner to IT Admin

![](../../../.gitbook/assets/2018-09-04_14-54-37.png)

## Build Security <a id="build-security"></a>

Leave this blank for general Provisioning

![](../../../.gitbook/assets/2018-09-04_13-17-55.png)

## Save Path <a id="save-path"></a>

Set the proper location to save the Provisioning Package

![](../../../.gitbook/assets/2018-09-04_14-56-28.png)

## Build <a id="build"></a>

Build the Provisioning Package

![](../../../.gitbook/assets/2018-09-04_14-56-52.png)

![](../../../.gitbook/assets/2018-09-04_14-57-21.png)

## Complete

Now you have a complete OSConfig as a Provisioning Package.  You can now use this in your OS Deployments

![](../../../.gitbook/assets/2018-09-04_14-58-17.png)

See this link for guides on adding the Provisioning Package in the Task Sequence

{% embed url="https://www.osdeploy.com/osconfig/deployment" %}



