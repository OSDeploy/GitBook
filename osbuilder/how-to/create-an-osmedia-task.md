# Create an OSMedia Task

You can update existing OSMedia by performing the following tasks

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
* Windows Updates \(Cumulative and Adobe\)
* OSMedia \(Imported Operating Systems\)

Get-OSMedia will show me what I have imported.  In the image below I have 8 different Windows 10 Operating Systems.  I have a matching number of Servicing Stacks, Cumulative Updates, and Adobe Flash Security Updates.

![](/assets/2018-07-13_23-54-53.png)

---

### New-OSBuilderTask

For **New-OSBuilderTask**, select the OSMedia tab and type in a TaskName similar to the one I have selected below

![](/assets/2018-07-14_0-00-20.png)

---

### Select a Source OSMedia

Select a single existing OSMedia to use for this Task and press OK

![](/assets/2018-07-14_0-02-06.png)

---

### Select Servicing Stack Directory

Since OSBuilder recognizes the Build and Architecture of your Task, it does not show incompatible Servicing Stacks.  Select the Servicing Stack and press OK.  Make sure the contents of this directory are up to date

Future updates to OSBuilder may skip this prompt entirely

![](/assets/2018-07-14_0-03-06.png)

---

### Select Windows Update Directory

Just like the Servicing Stack selection, the Windows Update is the same.  Make sure the contents of this directory are up to date.

![](/assets/2018-07-14_0-07-29.png)

---

### Complete

When finished, the Task will be created

![](/assets/2018-07-14_0-09-52.png)

---

### Task Location

Tasks are saved in the Tasks directory in OSBuilder as a JSON file with all the information needed for performing the update.

![](/assets/2018-07-14_0-13-21.png)

---



