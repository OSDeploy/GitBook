# OSMedia

## Definition

**OSMedia** is an abbreviation of **Operating System Media**.  **OSBuilder** defines OSMedia as an **Operating System Media without customizations**.

An Operating System ISO downloaded from Microsoft MVLS or MSDN would be considered **OSMedia**.

Microsoft releases monthly Security Updates, and sometimes releases updated OSMedia with these monthly Security Updates included.  OSBuilder "mirrors" this process to create updated OSMedia through Offline Servicing.  This is not considered a customization as there are no material changes to the Operating System itself.

A customized OSMedia with material changes to the Operating System itself is referred to as an [**`OSBuild`**](../osbuild/)**\`\`**

## Import-OSMedia

Before OSBuilder can work with an Operating System, it needs to be imported.  [**`Import-OSMedia`**](import-osmedia.md) is used to import the Operating System into OSBuilder.

**\`\`**[**`Import-OSMedia`**](import-osmedia.md) will perform the following actions

* Mount the Install.wim to determine the UBR
* Copy the Operating System to C:\OSBuilder\OSMedia\&lt;OS Name&gt; &lt;Arch&gt; &lt;Version&gt; &lt;UBR&gt;
* Perform a full inventory of installed Packages and Components

## Update-OSMedia

This function is used to apply Microsoft Security Updates to an imported Operating System

**\`\`**[**`Update-OSMedia`**](update-osmedia/) will perform the following actions

* **Media**
  * Expand Setup Update
* **WinPE** \(WinPE.wim, WinRE.wim, Setup.wim\)
  * Apply Servicing Stack
  * Apply Cumulative Update
  * Apply Dynamic Component Updates
* **OS**
  * Apply Servicing Stack
  * Apply Cumulative Update
  * Apply Dynamic Component Updates
  * Apply Adobe Security Updates



