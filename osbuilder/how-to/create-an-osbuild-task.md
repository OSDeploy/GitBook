# Create an OSBuild Task

An OSBuild is a customized Operating System.  After an OSBuild is created, it can no longer be modified.  You can create a new OSBuild Task and recreate the final OSBuild.

* Apply the latest Servicing Stack
* Apply the latest Cumulative Updates
* Dism /Image-Cleanup
* All WinPE's applied with the latest SSU and CU's
  * WinPE \(Boot.wim Index 1\)
  * Windows Setup \(Boot.wim Index 2\)
  * WinRE

An OSMedia Task does NOT perform any additional customizations \(that would be an OSBuild\)

---

### Prerequisites

Before getting started you need to have these three things ready

* Servicing Stacks
* Windows Updates \(Cumulative\)
* OSMedia \(Imported Operating Systems\)

Get-OSMedia will show me what I have imported.  In the image below I have 8 different Windows 10 Operating Systems.  I have a matching number of Servicing Stacks, Cumulative Updates, and Adobe Flash Security Updates.

![](/assets/2018-07-13_23-54-53.png)

---

### New-OSBuildTask -TaskName "Win10 x64 Ent 1803" -EnableNetFX3

The only requirement is a TaskName.  I selected the same name as my OSMedia Task.  Additionally I selected to EnableNetFX3

![](/assets/2018-07-20_0-30-43.png)

---

### Select a Source OSMedia

Select a single existing OSMedia to use for this Task and press OK

![](/assets/2018-07-19_23-51-57.png)

---

### Select Windows Update Directory

If NetFX3 was enabled, you will be prompted to select a Windows Updates directory.  Make sure the contents of this directory are up to date.

![](/assets/2018-07-20_0-35-20.png)

---

### Select Inbox Apps to Remove

You will be able to select Appx Packages to remove from the OSBuild

![](/assets/2018-07-20_0-37-30.png)

---

### Select Inbox Packages to Remove

![](/assets/2018-07-20_0-39-38.png)

---

### Select Inbox Capabilities to Remove

![](/assets/2018-07-20_0-40-02.png)

---



![](/assets/2018-07-20_0-40-18.png)









---

![](/assets/2018-07-20_0-40-49.png)

---



![](/assets/2018-07-20_0-44-08b.png)

![](/assets/2018-07-20_0-44-08c.png)





---

### Complete

When finished, the Task will be created.  Since we created an OSMedia Task, OSMedia is added at the beginning of the TaskName automatically.  ![](/assets/2018-07-14_0-49-55.png)

---

### Task Location

Tasks are saved in the Tasks directory in OSBuilder as a JSON file with all the information needed for performing the update.

![](/assets/2018-07-14_0-53-24.png)

---

### Wash, Rinse, and Repeat

Take the time now to repeat this step for every Operating System you imported

![](/assets/2018-07-14_0-56-46.png)

---



