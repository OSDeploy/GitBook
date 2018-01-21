# SCConfigMgr Driver Automation Tool

SCConfigMgr's Drive Automation Tool is by far the easiest and quickest method for Downloading and Importing Drivers for Dell, Lenovo, HP, or Microsoft.  This tool is developed by Microsoft MVP Maurice Daily

[https://twitter.com/modaly\_it](https://twitter.com/modaly_it)

[http://www.scconfigmgr.com/](http://www.scconfigmgr.com/)

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

ff

---

## Make/Model Selection

Open the Driver Automation Tool.  On the first tab, you have the ability to connect to Dell and provide some Operating System filtering.  From there, you can easily select the Models that I want to download.

![](/assets/2017-10-27_12-02-16.png)

---

## Download Local Only

While I have the ability to Download and Create Packages directly into SCCM, or Download and Import into MDT, I'll opt instead to just Download and Extract to my local computer.  If you are trying to Download and Import into SCCM or MDT, I strongly recommend testing with a single download first to ensure that everything is set properly.

I make sure my Downloads are going into the Repository Path of **D:\OSDEPLOY\OSDRIVERSDEV\DOWNLOAD\WIN10\DELL**

![](/assets/2017-10-30_13-59-57.png)

---

## Downloaded Files

Since my Enterprise uses several different models over several different generations, I will choose to download ALL Latitude, OptiPlex, Precision, and Venue Tablet Drivers \(excluding Embedded PC and XPS systems\).

I'll let this run overnight since this will take several hours to complete.  Once it is down, I have everything created nice and neat in my Repository.  I see that I download some files I know for sure I may not need, but in the end everything is complete.

![](/assets/2017-10-27_12-11-04.png)

---

## Download Issues

I did notice that I the following directories did not Download and Extract properly

```
Latitude 12 Rugged Extreme (7204)
Latitude 14 Rugged (5404)
Latitude 14 Rugged Extreme (7404)
```

Further checking in the log shows what the URL for the download is, but they failed.  From what I can tell is that the CAB file that was downloaded manually has WIN10 in CAPS, so it make a Case Sensitive issue.  Once I manually downloaded the file and placed it in the proper Driver Cab directory, the Driver Automation Tool extracted it as planned.

![](/assets/2017-10-27_12-16-11.png)

---



