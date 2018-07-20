# Win10 1607 Offline Servicing Appx Issues

So I came across an issue with OSBuilder, I was not able to remove Appx Packages and received an error

```
Remove-AppxProvisionedPackage : The system cannot find the file specified.
At C:\Users\OSDeploy\Documents\WindowsPowerShell\Modules\OSBuilder\Invoke-OSBuilderTask.ps1:768 char:45
+ ... st Build') {Remove-AppxProvisionedPackage -Path "$MountDirectory" -Pa ...
+                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : NotSpecified: (:) [Remove-AppxProvisionedPackage], COMException
    + FullyQualifiedErrorId : Microsoft.Dism.Commands.RemoveAppxProvisionedPackageCommand
```

![](/assets/2018-07-20_12-32-03.png)

---

### OSBuilder Validation

So I need to see if it is OSBuilder that is at fault, so I mounted my Install.wim and tested the process manually

![](/assets/2018-07-20_12-38-42.png)

```
Remove-AppxProvisionedPackage : The system cannot find the file specified.
At line:1 char:1
+ Remove-AppxProvisionedPackage -Path $mount -PackageName Microsoft.Zun ...
+ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : NotSpecified: (:) [Remove-AppxProvisionedPackage], COMException
    + FullyQualifiedErrorId : Microsoft.Dism.Commands.RemoveAppxProvisionedPackageCommand
```

---

### Online Validation

I'm not the only one with this problem it seems

[https://serverfault.com/questions/814362/removing-windows-10-built-in-apps-from-a-windows-10-image](#)

[http://www.edugeek.net/forums/windows-10/165029-how-get-rid-candy-crush-soda-saga-other-windows-10-start-menu-junk-good-7.html](http://www.edugeek.net/forums/windows-10/165029-how-get-rid-candy-crush-soda-saga-other-windows-10-start-menu-junk-good-7.html)

Apparently it is quite possible that applying the Cumulative Update causes this issue, so I need to remove my Appx BEFORE applying the Cumulative Update.

---

### New-OSBuildTask -TaskName "Win10 1607 x86 Appx"

So I delete my OSMedia 1607 \(with the CU\) and go back to the original imported version.  I then create a New-OSBuildTask and only remove Appx Packages, and nothing else.

![](/assets/2018-07-20_12-51-25.png)

![](/assets/2018-07-20_12-50-24.png)

---



