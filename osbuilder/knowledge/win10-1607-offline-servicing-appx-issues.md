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

[https://social.technet.microsoft.com/Forums/windows/en-US/83e9be65-729b-4c4d-88e4-252a4ca38a34/cannot-remove-windows-10-apps-during-task-sequence?forum=mdt](https://social.technet.microsoft.com/Forums/windows/en-US/83e9be65-729b-4c4d-88e4-252a4ca38a34/cannot-remove-windows-10-apps-during-task-sequence?forum=mdt)

Apparently it is quite possible that applying the Cumulative Update causes this issue, so I need to remove my Appx BEFORE applying the Cumulative Update.

---

### New-OSBuildTask -TaskName "Win10 1607 x86 Appx"

So I delete my OSMedia 1607 \(with the CU\) and go back to the original imported version.  I then create a New-OSBuildTask and select Windows 10 x86 1607 only remove Appx Packages, and nothing else.  When testing I choose to always start with x86 as it is smaller, so I get results quicker.

![](/assets/2018-07-20_12-51-25.png)

![](/assets/2018-07-20_12-50-24.png)

---

### Invoke-OSBuilderTask -ExecutionMode "Execute Stepped"

I will now Invoke the Task with -ExecutionMode "Execute Stepped"

![](/assets/2018-07-20_12-58-38.png)

---

### Execute Stepped

This method adds several "Press Enter to continue" stops throughout the process.  This allows me to target the specific action that I am looking into.  Additionally, since I am still mounted, I can perform some other testing.

![](/assets/2018-07-20_13-02-33.png)

---

### Results

I guess I just confirmed that Appx Packages can't be removed Offline on Windows 10 1607.  It seems that the original release was able to, but subsequent released can't.

![](/assets/2018-07-20_13-05-59.png)

But Remove Capability works fine!

![](/assets/2018-07-20_13-07-49.png)

So no removing Appx Packages from Windows 10 1607!  I won't make any changes to OSBuilder to address this as you may have a version older 14393.447 that does work properly.

---



