# LayoutModification.xml

To customize the Start Menu layout, we need to create a Minimal Start Menu by creating a C:\Users\Default\AppData\Local\Microsoft\Windows\Shell\LayoutModification.xml

![](/assets/CleanStart Start Menu.png)

---

From here you should configure your Start Menu with your preferences.  I recommend creating a Main Group with a few links.:

* Main
  * This PC \(Medium\)
  * Control Panel \(Medium\)
  * Tips / Get Started \(Medium\)
  * Run \(Small\)
  * Command Prompt \(Small\)

![](/assets/CleanStart Start Menu Minimal.png)

---

Once you have your Start Menu configured, you can create a LayoutModification.xml

* Open Windows PowerShell ISE as Administrator \(elevated\)
* Paste the following code \(make sure the first line pastes properly\)

```
##Export the Start Menu Layout
Export-StartLayout -Path C:\Users\Default\AppData\Local\Microsoft\Windows\Shell\LayoutModification.xml

#View the LayoutModification
Invoke-Item C:\Users\Default\AppData\Local\Microsoft\Windows\Shell\LayoutModification.xml

#Create a new Local User
net user /add LayoutModification

#Add LayoutModification to the Local Administrators Group
net localgroup administrators LayoutModification /add

#AutoLogon as LayoutModification
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name AutoAdminLogon -Value 1
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name DefaultUserName -Value "LayoutModification"
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name LastUsedUserName -Value "LayoutModification"
```

---

* Press the Run Script button

![](/assets/LayoutModification Run Script.png)

---

* LayoutModification.xml will open for viewing

![](/assets/LayoutModification Run Script Executed.png)

---

* Here's a copy for Reference

```
<?xml version="1.0"?>
<LayoutModificationTemplate xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification" Version="1">
    <LayoutOptions StartTileGroupCellWidth="6"/>
    <DefaultLayoutOverride>
        <StartLayoutCollection>
            <defaultlayout:StartLayout xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout" GroupCellWidth="6">
                <start:Group xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout" Name="Main">
                    <start:DesktopApplicationTile DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\computer.lnk" Row="0" Column="0" Size="2x2"/>
                    <start:DesktopApplicationTile DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\Control Panel.lnk" Row="0" Column="2" Size="2x2"/>
                    <start:DesktopApplicationTile DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\Command Prompt.lnk" Row="2" Column="1" Size="1x1"/>
                    <start:DesktopApplicationTile DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\Run.lnk" Row="2" Column="0" Size="1x1"/>
                    <start:Tile Row="0" Column="4" Size="2x2" AppUserModelID="Microsoft.Getstarted_8wekyb3d8bbwe!App"/>
                </start:Group>
            </defaultlayout:StartLayout>
        </StartLayoutCollection>
    </DefaultLayoutOverride>
</LayoutModificationTemplate>
```

---

* Restart the computer

* You should login automatically as the Local User LayoutModification with your Minimal Start Menu

![](/assets/LayoutModification Start Menu.png)

