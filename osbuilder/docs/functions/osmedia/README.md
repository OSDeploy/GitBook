---
description: Updated 18.10.25
---

# OSMedia

OSMedia is defined as an Operating System without any customizations.  Any ISO downloaded from Microsoft MVLS or MSDN would be considered OSMedia.  An Operating System that has Security Updates applied using Offline Servicing is also considered OSMedia, as this is considered a customization.

## Import-OSMedia

Before OSBuilder can work with an Operating System, it needs to be imported.  [**`Import-OSMedia`**](import-osmedia/) is used to import the Operating System into OSBuilder.

**\`\`**[**`Import-OSMedia`**](import-osmedia/) will perform the following actions

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



