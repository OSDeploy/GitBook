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

Even though the Driver Automation Tool starts on the Make/Model tab, I will select the Common Settings tab and modify the Repository Path.

I place everything in a Models directory.  The Driver Automation Tool will automatically create subdirectories based on the Make

```
D:\Drivers\Download\Models
```

![](/assets/1-21-2018 11-25-55 PM.png)

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

If you have several different Computer Models to download, be prepared for this process to take some time.  Go grab a lunch!

![](/assets/1-21-2018 11-27-51 PM.png)

---

## Downloaded Files

I decided to download everything for Windows 10 x64 and was quite happy when everything was complete and organized in my Driver Repository.  Looks like I selected a few models that I don't need, but your mileage may vary.

![](/assets/2017-10-27_12-11-04.png)

---

## Final Thoughts

The SCConfigMgr Driver Automation Tool is an excellent that every Admin should consider using.  The time saved in using this tool is incredible.  Kudos to Maurice for Developing this for everyone's use.

---

## Suggestions

### Download Only

While my selection suggests "Download Only", my Driver Pack is Extracted.  Having the option to not Extract the Driver Pack could prove useful.  Additionally, the ability to download all CAB files in a single directory so I can extract them using 7-Zip as an option.

### Extract Directory

The ability to Extract the Drivers to a separate Driver Repository is something I would like to see added in the future.  I like to keep the Downloaded Driver Packs separate from the Extracted Driver Packs, but I can easily overcome this with a simple Robocopy

```
robocopy D:\Drivers\Download\Model\Dell D:\Drivers\Extract\Model\Dell *.* /e /move /xd "Driver Cab"
```

---

## Issues

I did notice that I the following Dell Models did not download the Driver Packs from Dell.

```
Latitude 12 Rugged Extreme (7204)
Latitude 14 Rugged (5404)
Latitude 14 Rugged Extreme (7404)
```

I am not sure what the issue was, but I ended up downloading the CAB file manually.  I noticed that the file name itself has **WIN10 **in CAPS, but the XML source shows **Win10**.  I am not sure if this is the cause for the failure, I will update when I get more information.

Here are the files that failed

![](/assets/2017-10-27_12-16-11.png)

And my Driver Automation Tool Event Log

![](/assets/1-21-2018 10-25-02 PM.png)

---



