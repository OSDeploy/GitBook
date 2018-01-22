# Driver Repository

Before working with Drivers, you will need to make a Driver Repository. This will be where you Download, Extract, Study, and Test the Drivers before you import them into SCCM or MDT.

When I work with Drivers, I ensure that everything Driver related has a place.  I work with a standardized structure.

* Drivers
  * Apps
  * Download
    * Core
    * Models \(Driver Automation Tool Repository\)
      * Dell \(Created by SCConfigMgr Driver Automation Tool\)
      * Dell-Family \(Dell Family Pack Downloader Repository\)
      * Microsoft \(Created by SCConfigMgr Driver Automation Tool\)
    * Video
  * Extract
  * Scripts
  * Test
    * Alpha
    * Beta
    * Gamma
    * Release

---

## Drivers\Apps

This will contain tools that I download related to Drivers.  In here I have the following:

* **TechNet Utility Spotlight - Automate Device Driver Integration**
  * [https://technet.microsoft.com/en-us/library/2006.05.utilityspotlight.aspx](https://technet.microsoft.com/en-us/library/2006.05.utilityspotlight.aspx)
* **Dell Family Pack Downloader**
  * [https://www.dell.com/community/ImageAssist/Family-Pack-Downloader-for-Dell-Driver-Packs/m-p/5145080](https://www.dell.com/community/ImageAssist/Family-Pack-Downloader-for-Dell-Driver-Packs/m-p/5145080)
* **SCConfigMgr Driver Automation Tool**
  * [http://www.scconfigmgr.com/driver-automation-tool/](http://www.scconfigmgr.com/driver-automation-tool/)

I will detail what each of these tools are in further reading

---

## Drivers\Download

This is where I will download all of my Drivers.  When working with Model Packs, all the original CAB or ZIP files will remain here, unmodified.  This way if I need to extract a new copy, everything is in one place.

---

## Drivers\Extract

This will contain an Extracted copy of all my Drivers.  I consider this my Master Source before I do any modifications to the content.

---

## Drivers\Scripts

When working with Drivers, I often write PowerShell scripts to perform a cleanup.  Keeping everything in this directory allows me to always be able to locate one of my working scripts as needed when working with Drivers.

---

## Drivers\Test\Alpha

When I first start to work with Drivers, 100% of what I am working with goes into Alpha.  To build this, I start with a fresh copy from my Drivers\Extract content.  I will typically remove Core Drivers \(I'll touch on that later\) from here.  This is also known as my Phase 1.

## Drivers\Test\Beta

I will replicate the Drivers from Alpha and perform a Phase 2 removal of Drivers.  Drivers removed in Bravo are typically Manufacturer Core Drivers.

## Drivers\Test\Gamma

Phase 3 is a more refined cleaning and updating of Driver content.  This may not be necessary for most environments.

---

## Drivers\Test\Release

When everything from my testing checks out and is ready to go, the content from here is then released to SCCM or OSD.

