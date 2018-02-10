# Create a Custom Driver Cab

So I see that Dell posted an update to Intel Management Engine Components Installer which is Urgent.  I have highlighted the important fields and will go ahead and download the driver.

[http://www.dell.com/support/home/us/en/19/drivers/driversdetails?c=us&l=en&s=gen&driverid=19Y3F](http://www.dell.com/support/home/us/en/19/drivers/driversdetails?c=us&l=en&s=gen&driverid=19Y3F)

![](/assets/2018-02-09_22-40-51.png)

---

## Saving the Download

If I am creating a Custom Cab for OSDrivers, then I should stay organized and place it in the Custom category.  The OSD directory is reserved for content replicated from osdeploy.com

```
OSDrivers.vbs
Custom
Custom\OSD
Custom\OSD\X-Dell
Custom\OSD\X-Dell\Chipset
OSD
OSD\Core
OSD\Core USB Network
OSD\Dell Win10 x64
OSD\Video
```

By following the same logical structure as the OSD directory, the OSDrivers PowerShell Module will properly integrate the content into the correct subsets.  Understanding this, the driver should be placed in Custom\OSD\X-Dell\Chipset

![](/assets/2018-02-09_22-45-57.png)

---

## OS Compatibility

This is listed on Dell's page for this download.  Since it is x86 and x64, I should not place this in the Name.

![](/assets/2018-02-09_22-55-12.png)

---

## File Naming

To follow the OSDrivers file naming structure, the file should be renamed to

**Dell Intel Management Engine Components 11.7.0.1054 A01 19Y3F.exe**

Even though this is an Intel download, it should be named with Dell prefix since it was obtained from Dell.

---

## OSDrivers TXT File

I have enough information to build a TXT file for OSDrivers which should be named

**Dell Intel Management Engine Components 11.7.0.1054 A01 19Y3F.txt**

```
[OSDrivers]
URL = http://www.dell.com/support/home/us/en/19/drivers/driversdetails?c=us&l=en&s=gen&driverid=19Y3F
Windows 7 x86 = Yes
Windows 7 x64 = Yes
Windows 10 x64 = Yes
Windows Server 2016 = Yes
Make = Dell
```

---

## Extract the Drivers with 7zip

With this installation in particular, I had to complete the following

* Expand with 7zip: Dell Intel Management Engine Components 11.7.0.1054 A01 19Y3F.exe
* Review mup.xml to locate the "extractdrivers" command
* Open a Command Prompt to the same directory as the mup.xml
* 








