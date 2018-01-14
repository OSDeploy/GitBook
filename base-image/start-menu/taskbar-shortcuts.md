# Taskbar Shortcuts

Modifying the Taskbar Shortcuts requires Windows 10 Enterprise 1607 or newer

![](/assets/Taskbar Default 1607.png)

---

You can find out more about customizing the Taskbar at this link

#### Customize Windows 10 taskbar \(Windows IT Center\)

[https://technet.microsoft.com/en-us/itpro/windows/manage/configure-windows-10-taskbar](https://technet.microsoft.com/en-us/itpro/windows/manage/configure-windows-10-taskbar)

---

To make customizations, you need to add to the LayoutModification.xml.  It may be a good idea to copy my [XML Source](/osdeploy/start/LayoutModification.xml) and edit as needed.  I opted for the "Replace" Taskbar feature to get rid of the Edge and Windows Store shortcuts.

[XML Source](/osdeploy/start/LayoutModification.xml)

![](/assets/LayoutModification Office with Taskbar.png)

---

* Copy your completed LayoutModification.xml to C:\Users\Default\AppData\Local\Microsoft\Windows\Shell
* Open Windows PowerShell ISE as Administrator \(elevated\)
* Paste the following code \(make sure the first line pastes properly\)
* Run the script

```
##Create a new Local User
net user /add LayoutComplete

#Add LayoutComplete to the Local Administrators Group
net localgroup administrators LayoutComplete /add

#AutoLogon as LayoutComplete
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name AutoAdminLogon -Value 1
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name DefaultUserName -Value "LayoutComplete"
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name LastUsedUserName -Value "LayoutComplete"

#Restart the Computer
shutdown /r /t 5
```

---

After restarting the computer, your Start Menu and Taskbar Shortcuts should be complete

![](/assets/LayoutModification Complete.png)

