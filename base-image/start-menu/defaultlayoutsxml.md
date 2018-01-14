# DefaultLayouts.xml

The Start Menu is configured by the file C:\Users\Default\AppData\Local\Microsoft\Windows\Shell\DefaultLayouts.xml.

Reference Copy: [Windows 10 Enterprise x64 1607](/OSDeploy/Start Menu/DefaultLayouts.xml)

---

All the random apps that install on your computer the first time you login are because of this file, so let's get it out of the way.

* Restart your OSDeploy VM
* You should be prompted to Connect to OSDeploy.  This is Hyper-V using an Enhanced Session which will allow you to copy/paste in the OSDeploy VM.
  * If you do not receive this prompt, on your Virtual Machine Connection, select Menu &gt; View &gt; Enhanced Session

![](/assets/Hyper-V OSDeploy Connect.png)

---

* On your Enhanced session logon screen, press Sign in

![](/assets/Hyper-V OSDeploy Connect Enhanced.png)

---

* Open Windows PowerShell ISE as Administrator \(elevated\)

![](/assets/Powershell ISE.png)

---

* Press Yes in the UAC Prompt

![](/assets/Powershell ISE UAC.png)

---

* Expand the Script Pane

![](/assets/Powershell ISE Script.png)

---

* Paste the following code \(including the first line\)

```
##Rename the DefaultLayouts.xml
ren C:\Users\Default\AppData\Local\Microsoft\Windows\Shell\DefaultLayouts.xml DefaultLayouts.bak

#Create a new Local User
net user /add CleanStart

#Add CleanStart to the Local Administrators Group
net localgroup administrators CleanStart /add

#AutoLogon as CleanStart
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name AutoAdminLogon -Value 1
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name DefaultUserName -Value "CleanStart"
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name LastUsedUserName -Value "CleanStart"

#Restart the Computer
shutdown /r /t 5
```

---

* Press the Run Script button

![](/assets/DefaultLayouts Run Script.png)

![](/assets/DefaultLayouts Run Script Executed.png)

---

* Press OK \(this is due to your computer starting the Hyper-V Connection as an Enhanced Session

![](/assets/CleanStart VM Enhanced.png)

---

* Wait for the CleanStart Profile to be created

![](/assets/CleanStart Create Profile.png)

---

You should now have a minimal Start Menu to customize

![](/assets/CleanStart Start Menu.png)

---



