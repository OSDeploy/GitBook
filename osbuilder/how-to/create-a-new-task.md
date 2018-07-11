# Create a New Task

As soon as you have imported OSMedia, and have your Servicing Stacks and Windows Updates, you can create a New OSBuild Task.  There are a few parameters to specify, the UpdateWinPE and UpdateWinRE will apply the SSU and the CU to WinPE and WinRE respectively.

![](/assets/2018-07-10_14-43-42.png)

---

### Select OSMedia

Once the function has started, OSBuilder will check for Operating Systems in OSMedia.  Select the Operating System to use for the Build

![](/assets/2018-07-10_15-00-48.png)

---

### Select Servicing Stack Path

An option to select a Servicing Stack will be displayed.  OSBuilder will check the Version of the OSMedia you are using and display the proper path, this is why you don't see all available Servicing Stack paths.

![](/assets/2018-07-10_15-02-07.png)

---

### Select Windows Update Path

The same rules apply to Windows Updates.  The important thing to note is that 1803 and x64 need to be in the Directory Name for it to be recognized properly.

![](/assets/2018-07-10_15-03-56.png)

---

### Remove Inbox Appx Packages

OSBuilder will read the configuration file "C:\OSBuilder\OSMedia\&lt;OSMedia Name&gt;\info\json\Get-AppxProvisionedPackage.json" to display a list of Appx Packages.  Simply select the ones you want removed and press OK.

![](/assets/2018-07-10_15-05-35.png)

---

### Remove Inbox Packages

Same rules as the Appx Packages.  Select what you want to remove, or press Cancel or the ESC key to skip this step

![](/assets/2018-07-10_15-07-35.png)

---

### Remove Inbox Capability

Ditto.  Select what you want to remove, or Cancel/ESC

![](/assets/2018-07-10_15-09-24.png)

---

### Enable or Disable Inbox Optional Features

More options to Enable or Disable Windows Optional Features in your Build

![](/assets/2018-07-10_15-10-37.png)

![](/assets/2018-07-10_15-11-36.png)

---

### Task Creation

Once these steps are complete, OSBuilder will create a Task.

![](/assets/2018-07-10_15-15-42.png)

The tasks are saved as a JSON file in the OSBuilder\Tasks directory.

![](/assets/2018-07-10_15-16-52.png)

---

### Wash, Rince, and Repeat

Repeat this process for all Operating Systems you want to Build

---



