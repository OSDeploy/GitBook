# Bare Metal Task Sequence

Programs do not run in WinPE, so instead of using the Package Program we need to specify a Command Line for Bare Metal installations.

Create a Group for OSDrivers and add a Run Command Line step to your Task Sequence

* Make sure the Command Line specifies the OS and the Architecture
* Disable 64-bit file system redirection
* Package: Select the OSDrivers Package

The Command Line is identical to the one used to create the Program for the Package.

```text
cscript OSDrivers.vbs /OS:"Windows 10" /Arch:x64
```

![](../../../.gitbook/assets/2-14-2018-2-38-01-pm.png)

## Rinse and Repeat

Add any additional OSDrivers steps in your Task Sequence.

![](../../../.gitbook/assets/2-14-2018-2-39-44-pm.png)

## Dism Apply Drivers

You will need to add a Command Line to inject the Drivers into the OS

```text
dism.exe /Image:%OSDisk%\ /Add-Driver /Driver:%OSDisk%\Drivers /Recurse
```

