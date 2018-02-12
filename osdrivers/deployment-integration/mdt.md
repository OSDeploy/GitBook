# Microsoft Deployment Toolkit {#mdt-task-sequence}

OSDrivers can be easily integrated into MDT.  Simply copy your Repository to your Deployment Share.

When adding to an MDT Task Sequence, place it in the Preinstall Phase. Assuming your OSDrivers Repository is at %DeployRoot%\OSDrivers then use the following Command line.

```
cscript.exe "%DeployRoot%\OSDrivers\OSDrivers.vbs"
```

Start in path will have similar configuration

```
%DeployRoot%\OSDrivers
```

![](https://www.osdeploy.com/assets/2018-02-05_13-18-35.png)

