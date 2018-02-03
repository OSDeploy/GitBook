## Reducing the Driver Repository Size

The more Computer Models you support, the larger your Driver Repository will become.  If I were to download all Dell Driver Packs, it would consume almost 192 GB of Drive Space.

| Driver Method | Number of Packs | Downloaded Size | Extracted Size |
| ---: | ---: | ---: | ---: |
| Dell Model Packs | 138 | 84.1 GB | 191.70 GB |

Keep in mind you will have to replicate this content in your Enterprise.  How many Deployment Shares or Distribution Points do you have?

---

## Stale Driver Packs

Computer Manufacturers dedicate resources to newer Computer Models, which may result in older Computer Models not receiving Driver Pack updates.  The age of some of these Computer Models also suggests that Windows 8.1 Drivers were used in creating the Driver Pack.  The number of updates in the 0 - 50 Day range are not normal and were possibly updated to address the Security Issues of Spectre and Meltdown.

| Dell Driver Pack Age | Number of Driver Packs |
| :--- | :--- |
| 0 - 50 Days | 36 |
| 50 - 100 Days | 15 |
| 100 - 300 Days | 3 |
| 300 - 500 Days | 9 |
| 500 - 700 Days | 10 |
| 700 - 907 Days | 2 |

---

## Driver Security Updates

Updated Drivers may be required to Patch Security Issues.  As we can see from an Nvidia Driver Release Highlight, Drivers are being updated to address Spectre and Meltdown.  Since we see that Driver Packs can sometimes be forgotten, addressing updated Drivers related to Security will require Driver Optimization.

![](/assets/1-22-2018 1-49-05 AM.png)

---

## Data Deduplication

Similar Hardware is found in multiple Computer Systems, which means that Drivers to address this Hardware is found in multiple Driver Packs.  A Video Card can be used on multiple Computer Models, which now means that the Driver may be found in multiple Driver Packs.

---

## Consolidating Multiple Versions

Just as there is Data Duplication due to identical Hardware, there will be multiple Versions of these Drivers.

---

## Improving Server Performance

What impact will your SCCM Server have when addressing thousands of files?  With a large number of files, even Binary Differential Replication will need to check these files.

Additionally all of these files will probably be scanned by some type of Security Agent, which will require CPU cycles.

---

## Improving OS Performance

Keeping the Drivers in your OS may improve OS Performance as you upgrade to newer Windows Builds.  Newer Drivers are typically tested with these updated Builds to provide some enhancements and benefits.

