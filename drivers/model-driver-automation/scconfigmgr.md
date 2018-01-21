# SCConfigMgr Driver Automation Tool

SCConfigMgr's Drive Automation Tool is by far the easiest and quickest method for Downloading and Importing Drivers for Dell, Lenovo, HP, or Microsoft.  This tool is developed by Microsoft MVP Maurice Daily

[https://twitter.com/modaly\_it](https://twitter.com/modaly_it)

[http://www.scconfigmgr.com/](http://www.scconfigmgr.com/)

While the Driver Automation Tool includes the ability to automatically Import the Drivers into MDT and SCCM, the goal in this post is to Download and Extract the Dell Model Driver Packs without Automatic Integration.

---

## Download

Download the SCConfigMgr Driver Automation Tool

[http://www.scconfigmgr.com/modern-driver-management/](http://www.scconfigmgr.com/modern-driver-management/)

[https://gallery.technet.microsoft.com/Driver-Tool-Automate-9ddcc010](https://gallery.technet.microsoft.com/Driver-Tool-Automate-9ddcc010)

---

## Save

Save the Download in your Driver Apps

```
D:\Drivers\Apps
```

---

## Extract and Run

Extract the contents of the ZIP file and Run the DriverAutomationTool.exe file

```
D:\Drivers\Apps\SCCM Driver Automation Tool
```

---

## Common Settings

Even though the Driver Automation Tool starts on the Make/Model tab, I will select the Common Settings tab and modify the Repository Path

```
D:\Drivers\Download\Dell\Win10x64-MODEL
```

![](/assets/1-21-2018 3-22-12 PM.png)

---

## Make/Model Selection

After launching the Driver Automation Tool, on the first tab is the Make / Model Selection.  I will select the following Configuration for my Enterprise.

* Deployment Platform: Download Only
* Download Type: Drivers
* Operating System: Windows 10
* Architecture: 64 bit
* Manufacturer: Dell

Once I complete this configuration, I will press the Find Models button

![](/assets/1-21-2018 3-23-43 PM.png)

---

## Selecting Computer Models

The Driver Automation Tool will return a list of Dell Computer Models.  Simply select the Dell Computer Models that you need and press the Add To Import List button.  I did notice that some Dell Computer Models were duplicated in the Available Models, but after adding to the Import List, the duplicate will be removed.

![](/assets/1-21-2018 3-27-00 PM.png)

---

## Start Download and Import Process

Once you have the Computer Models that you need, press the Start Download and Import Process button.

![](/assets/1-21-2018 3-30-41 PM.png)

---

## Download Progress

Be prepared for this process to take some time, grab a lunch!

![](/assets/1-21-2018 3-33-13 PM.png)

---

## Downloaded Files

Since my Enterprise uses several different models over several different generations, I will choose to download ALL Latitude, OptiPlex, Precision, and Venue Tablet Drivers \(excluding Embedded PC and XPS systems\).

I'll let this run overnight since this will take several hours to complete.  Once it is down, I have everything created nice and neat in my Repository.  I see that I download some files I know for sure I may not need, but in the end everything is complete.

![](/assets/2017-10-27_12-11-04.png)

---

## Final Thoughts

The SCConfigMgr Driver Automation Tool is an excellent that every Admin should consider using.  The time saved in using this tool is incredible.  Kudos to Maurice for Developing this for everyone's use.



There are two things that I would like to recommend in a future update.  The first is to allow the ability to Extract Drivers to a separate Driver Repository than the CAB files.









I did notice that I the following directories did not Download and Extract properly

```
Latitude 12 Rugged Extreme (7204)
Latitude 14 Rugged (5404)
Latitude 14 Rugged Extreme (7404)
```

Further checking in the log shows what the URL for the download is, but they failed.  From what I can tell is that the CAB file that was downloaded manually has WIN10 in CAPS, so it make a Case Sensitive issue.  Once I manually downloaded the file and placed it in the proper Driver Cab directory, the Driver Automation Tool extracted it as planned.

![](/assets/2017-10-27_12-16-11.png)

---



