# OSBuilder Overview

OSBuilder is a second attempt at automating applying Updates to a Windows Image offline.

---

### Get-OSBuilder

This is the base function that all the other OSBuild functions call.

![](/assets/2018-07-02_15-18-44.png)

-HideDetails will show the basic directory structure, including support for Language Packs, injecting Drivers, adding Extra Files, applying a Start Layout, and more. 

![](/assets/2018-07-02_15-19-54.png)

The full details also include a listing of the OSBuilder content

![](/assets/2018-07-02_15-24-07.png)

---

### Import-OSMedia

Just a single parameter, the OSMediaName

![](/assets/2018-07-02_15-25-47.png)

On the outside, importing an Operating System is an easy enough step.  The difference between a normal export of an index, versus this method is that OSBuild will gather all the information about the Operating System components.  In the screenshot below, the basic information is captured, as well as all Appx Packages, Windows Capabilities, Windows Optional Features, and Windows Packages.

![](/assets/2018-07-02_15-27-52.png)

Not only is everything exported in TXT file for easy readability, but they are also exported PowerShell arrays in JSON and XML.

![](/assets/2018-07-02_15-30-39.png)

---

### New-OSBuildTask \(Basic\)

This next big change is that instead of running a configuration live, the only option is to save a Task.  There is no need to include a Patch Date in this step.

![](/assets/2018-07-02_15-34-46.png)

From here I select my imported OSMedia

![](/assets/2018-07-02_15-35-54.png)

Select a Servicing Stack path which contains the proper Servicing Stack for my Operating System

![](/assets/2018-07-02_15-36-43.png)

And finally a Windows Update path \(or paths depending on my directory structure\)

![](/assets/2018-07-02_15-37-41.png)

The configuration is saved as an OSBuilder Task with all the input that is needed.

![](/assets/2018-07-02_15-39-01.png)

![](/assets/2018-07-02_15-40-07.png)

---

### New-OSBuildTask \(Advanced\)

The Advanced options kick things up a bit.  I'll document this more in detail later.

![](/assets/2018-07-02_15-41-52.png)

Since the full list of Packages was extracted during Import-OSMedia, there is no need to mount the WIM to manage AppxPackages, Capabilities, Features, or Packages.  They are immediately displayed so they can be selected for removal.

![](/assets/2018-07-02_15-49-56.png)





---

### Invoke-OSBuildTask

This is the function that actually does the build.  The PatchUpdate parameter is appended to the ImageName and the completed OSBuild.  Using the Demo will simulate the OSBuild process without actually mounting 

![](/assets/2018-07-02_15-43-31.png)

One executed, I can select a single Task, or multiple Tasks.

![](/assets/2018-07-02_15-44-43.png)



![](/assets/2018-07-02_15-48-05.png)











