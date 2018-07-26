# MDT Client Task Sequence

In the Post Install phase, add a New Group

* Add a Run Command Line step with a proper Name
* Add the following Command Line \(identical to the one in the Program\)

```text
cscript OSDrivers.vbs /OS:"Windows 10" /Arch:x64
```

* Disable 64-bit file system redirection
* Package: Select the OSDrivers Package

Repeat these steps for every OSDrivers Package you need to integrate

![](../../../.gitbook/assets/2018-02-16_14-36-02.png)

## Dism Apply Drivers

You will need to add a Command Line to inject the Drivers into the OS at the end of your OSDrivers Group

```text
dism.exe /Image:%OSDisk%\ /Add-Driver /Driver:%OSDisk%\Drivers /Recurse
```

