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

### New-OSBuilderTask

To simplify this process, simply select the New-OSBuilderTask function.  Select the OSMedia tab and type in a TaskName similar to the one I have selected below

![](/assets/2018-07-12_11-32-16.png)

---

### Select a Source OSMedia

Select a single existing OSMedia to update and press OK

![](/assets/2018-07-12_11-33-54.png)

---

### Select Servicing Stack and Windows Update Paths

When prompted, select the proper paths for your Servicing Stack and Windows Updates.  Make sure the content of these directories are up to date!

![](/assets/2018-07-12_12-21-08.png)

![](/assets/2018-07-12_12-22-00.png)

---

### Complete

When finished, the Task will be created.  Repeat this process for the other OSMedia you need to update.

![](/assets/2018-07-12_12-23-36.png)

---

### Task Location

Tasks are saved in OSBuilder\Tasks as a JSON file and contain all the information needed to perform the Update

![](/assets/2018-07-12_12-25-46.png)

---



