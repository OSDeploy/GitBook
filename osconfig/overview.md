# OSConfig Overview

**OSConfig will be complete on September 1**

OSConfig is a **method** of applying Operating System configuration during a Windows Deployment in One Step, without having multiple steps in your Task Sequence. This allows for **simple** configuration that is **independent** of a Task Sequence.

## OSConfig Deployment Scenarios

OSConfig has been testing in the following Operating System Deployment Scenarios

* Standalone \(autounattend.xml\)
* MDT Client Task Sequence
* MDT Upgrade Task Sequence
* ConfigMgr New PC Task Sequence
* ConfigMgr Upgrade Task Sequence
* Currently testing with Provisioning Packages \(AAD\)

The flexibility of OSConfig makes this method of Operating System configuration **ideal**, as it is completely modular.  This gives you the ability to freely to design whatever configuration you can script without any limitations.

### Supported Operating Systems

The OSConfig method has been tested on Windows 7 and Windows 10, and should work without issue on Windows Server deployments.

