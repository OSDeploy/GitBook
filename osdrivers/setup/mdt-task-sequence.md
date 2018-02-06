# MDT Task Sequence {#mdt-task-sequence}

OSDrivers can be inserted into an MDT Task Sequence in the Preinstall Phase. Assuming your OSDrivers Repository is at %DeployRoot%\OSDrivers then use the following Command line.

```
cscript.exe "%DeployRoot%\OSDrivers\OSDrivers.vbs"
```

Start in path will have similar configuration

```
%DeployRoot%\OSDrivers
```

![](https://www.osdeploy.com/assets/2018-02-05_13-18-35.png)

