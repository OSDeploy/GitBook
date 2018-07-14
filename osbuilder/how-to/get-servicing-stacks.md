# OSBuilder: Get Servicing Stacks

To ensure you don't run into any problems when Servicing a Windows Image Offline, you need to ensure that you have the latest Servicing Stacks.

You can download the Servicing Stacks from Microsoft and place them in your OSBuilder\Content\ServicingStacks directory.  Each update should be placed in a separate directory matching the supported Operating System

![](/assets/2018-07-13_19-36-56.png)

---

### Get-OSBuilder -GetServicingStacks

OSBuilder can easily download the Servicing Stacks automatically using the -GetServicingStacks parameter.  Simply select the Servicing Stacks that you want to download and press OK.

![](/assets/2018-07-13_21-03-50.png)

---

### Get-OSBuilder

You can verify you have Servicing Stacks in OSBuilder by simply running Get-OSBuilder.  When you add content to the proper locations, they will be displayed using this function.

![](/assets/2018-07-13_21-07-57.png)

---

### stacks.json

If you ever want to see the information about all the Servicing Stacks, review the stacks.json file in the Content\ServicingStacks directory.  The Master online version is at [https://www.osdeploy.com/osbuilder/stacks.json](https://www.osdeploy.com/osbuilder/stacks.json)

![](/assets/2018-07-13_21-12-42.png)

---



