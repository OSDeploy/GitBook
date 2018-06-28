# Integrate Servicing Stack Updates

**Reference:**  
[Get-Stacks](/osmedia/reference/get-stacks.md)


Integrating Servicing Stack Updates can either be done manually, or by using Get-Stacks.  This function is introduced in OSMedia Version 18.6.28 or newer.

![](/assets/2018-06-28_11-26-40.png)

---

### Selecting Servicing Stacks

After checking online for [https://www.osdeploy.com/files/stacks.json](https://www.osdeploy.com/files/stacks.json), you should see a list of available Servicing Stack downloads.  Select the ones you want to download and press OK.

![](/assets/2018-06-27_22-32-19.png)

---

### Console Output

This is the typical result of running Get-Stacks, and yes there is a disclaimer.  Keep in mind that this list is not updated in real time from Microsoft.  I will have to edit this file manually, so if you absolutely need the latest updates, check [Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Home.aspx) for Critical Updates.

![](/assets/2018-06-27_22-37-58.png)

---

### Directory Contents

The downloaded MSU files are organized as the same name that Microsoft uses for the download in Windows Update Catalog, so keep things uniform

![](/assets/2018-06-27_22-58-26.png)

---

### stacks.json

Included in the Stacks directory is a copy of the stacks.json.  You can easily use this for reference or to construct your own download links.  The contents below were copied when I wrote this reference, so for the latest version, check [https://www.osdeploy.com/files/stacks.json](https://www.osdeploy.com/files/stacks.json)

---

### Get-OSMedia

You can use Get-OSMedia to make sure that your Servicing Stacks are recognized by OSMedia.  Servicing Stacks are applied using Update-OSBuild

![](/assets/2018-06-27_22-43-06.png)

---

