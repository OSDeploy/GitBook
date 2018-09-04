# PowerShell Script to PPKG

In this example, the PowerShell script Set-OemModel.ps1 will be converted to a Provisioning Package.  This script is part of OSConfig and found in the OSConfig\Scripts directory.  This script has a simple purpose of setting the OEM Model information in System Properties.

![](../../.gitbook/assets/2018-09-02_23-55-52%20%281%29.png)

## Windows Imaging and Configuration Designer

If you don't have WICD installed, you can get it from the Windows 10 ADK.  Create a new Project

![](../../.gitbook/assets/2018-09-04_12-58-43.png)

## Switch to Advanced Editor

Switch from the Basic to the Advanced Editor

![](../../.gitbook/assets/2018-09-04_12-59-34.png)

## Remove Runtime Settings

Select Runtime settings from the right Navigation Pane and select Remove

![](../../.gitbook/assets/2018-09-04_13-01-41.png)

## Create a ProvisioningCommand

In the left Navigation Pane, expand ProvisioningCommands and PrimaryContext.  Add a Name and press the Add button

![](../../.gitbook/assets/2018-09-04_13-05-18.png)

## Set the Command

Select the Command on the Left Navigation Pane.  In the Main window, Browse for the PowerShell file and enter the following CommandLine

```text
PowerShell.exe -ExecutionPolicy Bypass -File Set-OemModel.ps1
```

Set the other values

![](../../.gitbook/assets/2018-09-04_13-13-17.png)

## Export the Provisioning Package

Select Export from the top Menu and then select Provisioning package

![](../../.gitbook/assets/2018-09-04_13-16-02.png)

## Build Owner

Change the Build Owner to IT Admin

![](../../.gitbook/assets/2018-09-04_13-16-57.png)

## Build Security

Leave this blank for general Provisioning

![](../../.gitbook/assets/2018-09-04_13-17-55.png)

## Save Path

Set the proper location to save the Provisioning Package

![](../../.gitbook/assets/2018-09-04_13-20-52.png)

## Build

Build the Provisioning Package

![](../../.gitbook/assets/2018-09-04_13-21-30.png)

![](../../.gitbook/assets/2018-09-04_13-22-10.png)

## Testing

You can easily test a Provisioning Package by simply double clicking on the file.  You will be prompted for confirmation

![](../../.gitbook/assets/2018-09-04_13-23-09.png)

![](../../.gitbook/assets/2018-09-04_13-24-13.png)

## Validation

Here is a before and after to show the results

![](../../.gitbook/assets/2018-09-04_13-32-32.png)

![](../../.gitbook/assets/2018-09-04_13-32-55.png)

## Download

You can download the Provisioning Package created in this page by selecting the link below

{% file src="../../.gitbook/assets/set-oemmodel.ppkg" %}

## Further Information

Provisioning Packages are expanded to the Current User %Temp% directory

![](../../.gitbook/assets/2018-09-04_13-27-55.png)

In the case of Provisioning Packages that are executed in OOBE, they are in the following location

```text
%SystemRoot%\System32\Config\SystemProfile\AppData\Local\Temp\ProvisioningPkgTmp\*
```



