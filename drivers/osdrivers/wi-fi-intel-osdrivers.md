## Wi-Fi Intel OSDrivers

This article assumes you have already followed the [Wi-Fi Intel](/drivers/intel-wireless.md) Drivers process

To make things easier, lets remove the ZIP files that we no longer need and rename the directories to a proper naming convention that standardizes the OS and Architecture.

![](/assets/Rename Directories.png)

---

To convert to an OSDriver format I will need to extract all the PNPIDS that are in the INF files, so I will focus on one directory at a time.  The **WiFi - Intel 20.0.2 Win10 x64** directory has 4 INF files that I need to open in Notepad++

![](/assets/INF Files.png)

---

Each IN file should have all the PNPIDS that are supported in the commented out ControlFlags section.  Copy all the entries from these sections into a new Text file.

![](/assets/INF PNPIDS.png)

---

Now we need to make this a little more readable.  Replace all spaces with nothing.  Replace all semicolons with nothing.  Replace all "&REV" \(inside the quotes\) with a comma.  Your file should look similar to the below image.

![](/assets/CSV File.png)

---

Save this file as a CSV using the same name as the Directory we are working with.  In this case it will be **WiFi - Intel 20.0.2 Win10 x64.csv**.  Open the file in Excel and delete all the other columns except A.  On the Data tab, sort the column alphabetically, then Remove Duplicates.  Save and close the file.  Change the extension of this file from a CSV to an INI.  Open the file in Notepad++

Add the \[OSDrivers\] and \[PNPIDS\] sections.  Include an Operating System condition.  Save the file and repeat this process for your additional directories.

![](/assets/Create INF.png)

![](/drivers/CSV File.png)

---

Once this is complete for all the Drivers we want to convert, we are ready to create CAB files.

![](/assets/OSD Dir.png)

Open PowerShell ISE and run Module New-OSDriverCab for each directory to create the CAB files.

![](/assets/New-OSDriverCab.png)

---

When this step is complete, we can now copy our INI and CAB files to our OSDrivers Master Repository.

![](/assets/OSDrivers Completed CABS.png)

---

Completed import into the OSDrivers Master Repository

![](/assets/OSDrivers Wi-Fi Complete.png)


---

Modified: {{ file.mtime }}