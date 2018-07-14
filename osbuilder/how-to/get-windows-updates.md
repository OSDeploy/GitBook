# OSBuilder: Get Windows Updates

Similar to the method used to get Servicing Stacks, you can download Windows Updates using OSBuilder.  Keep in mind that I manually update the list, so to make sure you have the latest updates, always check [Windows Update Catalog](https://www.catalog.update.microsoft.com/Home.aspx).

Updates are saved in OSBuilder\Content\WindowsUpdates

![](/assets/2018-07-13_19-37-07.png)

---

### Get-OSBuilder -GetWindowsUpdates

This parameter allows you to select Cumulative Updates and Adobe Flash Player Security Updates.  If the list is too hard, use the Filter bar or add criteria to shorten the list.  Select the downloads you want and press OK

![](/assets/2018-07-13_21-16-42.png)

![](/assets/2018-07-13_21-18-42.png)

---

### Get-OSBuilder

Once downloaded, simply run Get-OSBuilder to make sure they are present

![](/assets/2018-07-13_21-22-57.png)

---

### updates.json

If you ever want to see the information about all the Windows Updates, review the updates.json file in the Content\WindowsUpdates directory.  The Master online version is at [https://www.osdeploy.com/osbuilder/updates.json](https://www.osdeploy.com/osbuilder/updates.json)

![](/assets/2018-07-13_21-25-07.png)

---



