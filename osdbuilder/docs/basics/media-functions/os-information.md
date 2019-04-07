# OS Information

Every time an Operating System is mounted, information is exported and saved in the info directory.  To recover space, you may clear out any historical information that contains a date in the file name, but all other files are required by **OSDBuilder** and should not be deleted.  You can easily view the TXT files for information

![](../../../../.gitbook/assets/image%20%28213%29.png)

## Show-OSDBuilderInfo

To have PowerShell display the information about any **OSDBuilder Media** \(OSMedia, OSBuild, or PEBuild\), the following command can be used

```text
Show-OSDBuilderInfo
```

You will be prompted to select an **OSDBuilder Media** and press OK

![](../../../../.gitbook/assets/image%20%283%29.png)

This function will read the exported Operating System information and display the following

* **Enabled Appx Provisioned Packages**
* **Windows Packages**
* **Windows Packages \(Language\)**
* **Windows Capabilities**
* **Windows Capabilities \(Language\)**
* **Windows Optional Features \(Enabled\)**
* **Windows Optional Features \(Enable Pending\)**
* **Windows Optional Features \(Disabled\)**
* **Windows Optional Features \(Disabled with Payload Removed\)**
* **Windows Update Packages**
* **Windows Image Information**

![](../../../../.gitbook/assets/image%20%2872%29.png)

