# Office 2016

You are probably going to want to have Microsoft Office 2016 on your Start Menu, so let's get it installed

![](/assets/Office 2016 Install.png)

---

Now configure your Start Menu with Office 2016

![](/assets/Office 2016 Start Menu.png)

---

Run a new Export in PowerShell

* Open Windows PowerShell ISE as Administrator \(elevated\)

* Paste the following code \(make sure the first line pastes properly\)

```
##Export the Start Menu Layout
Export-StartLayout -Path C:\Users\Default\AppData\Local\Microsoft\Windows\Shell\LayoutModification.xml

#View the LayoutModification
Invoke-Item C:\Users\Default\AppData\Local\Microsoft\Windows\Shell\LayoutModification.xml

#Create a new Local User
net user /add LayoutOffice

#Add LayoutOffice to the Local Administrators Group
net localgroup administrators LayoutOffice /add

#AutoLogon as LayoutOffice
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name AutoAdminLogon -Value 1
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name DefaultUserName -Value "LayoutOffice"
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name LastUsedUserName -Value "LayoutOffice"

#Restart the Computer
shutdown /r /t 5
```

---

* Press the Run Script button

![](/assets/Office Layout Run Script.png)

![](/assets/Office Layout Run Script Execute.png)

---

* Computer will Restart and log in \(you may have to disable Enhanced Session\)

![](/assets/Office Layout Complete.png)

---

Here is what your LayoutModification.xml looks like

[XML Source](/osdeploy/start/LayoutModificationOffice2016.xml)

\(To view this image properly, right click and open image in new tab\)

![](/assets/LayoutModification Office.png)

Notice that things in the XML are not in the same order as they appear, so let's clean it up and put things in the proper order

[XML Source](/osdeploy/start/LayoutModificationOffice2016Formatted.xml)

\(To view this image properly, right click and open image in new tab\)

![](/assets/LayoutModification Office Formatted.png)

