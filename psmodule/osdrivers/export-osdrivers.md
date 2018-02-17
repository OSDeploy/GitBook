# Export-OSDrivers

This function can be used to copy an OSDrivers Repository, or to create Package Content



![](/assets/2018-02-17_1-32-24.png)

---

## 

---

## -PrimaryOSDrivers

This is the Directory Path to your MASTER OSDrivers Repository that you will be exporting from.

---

## -SecondaryOSDrivers

This is the Path where the drivers will be exported to

---

## -Windows Profile

This will filter down your Operating Systems to compatible ones.  This assumes that you applied proper naming of the files

---

## -Like

In the example above you can filter drivers to only include Drivers with the string you specify by using a Wildcard

---

## -NotLike

Similar to like, you can omit a Wildcard from the results

---

## -Subset

This will show files that are in directories following a specified value.  In the case of Video, this script is looking for **\*\Video\*** in the Path

---

## -Visibility

Public and Private Directories can be used in the Organization of your Drivers and used for filtering as well.

---

## Example

In the example image, I am taking my Primary OSDrivers Repository at D:\OSDrivers and exporting Nvidia Video Drivers that are compatible with Windows 10.  After execution, a Grid will be displayed with the results.  Select the files you want to Export and press OK.  Your -SecondaryOSDrivers will be created with OSDrivers.vbs and the files selected.

![](/assets/2018-02-17_1-40-38.png)

