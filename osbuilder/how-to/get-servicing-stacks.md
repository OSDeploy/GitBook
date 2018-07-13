# OSBuilder: Get Servicing Stacks

To ensure you don't run into any problems when Servicing a Windows Image Offline, you need to ensure that you have the latest Servicing Stacks.

You can download the Servicing Stacks from Microsoft and place them in your OSBuilder\Content\ServicingStacks directory.  Each update should be placed in a separate directory based on &lt;OS&gt; &lt;Architecture&gt; &lt;Version&gt; similar to the ones that are created using **Get-OSBuilder -CreatePaths**

![](/assets/2018-07-13_14-28-05.png)

---

### Get-OSBuilder -GetServicingStacks

OSBuilder can easily download the Servicing Stacks automatically using the -GetServicingStacks parameter.  Simply select the Servicing Stacks that you want to download and press OK.

![](/assets/2018-07-13_14-30-02.png)The selected files will be downloaded

![](/assets/2018-07-13_14-41-09.png)

---

### Get-OSBuilder

You can verify you have Servicing Stacks in OSBuilder by simply running Get-OSBuilder

![](/assets/2018-07-13_14-42-42.png)

---



