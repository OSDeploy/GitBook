# Releases

## Install OSDBuilder PowerShell Module

{% page-ref page="../docs/basics/installation.md" %}

## 19.3.12 \(March 12, 2019\) Official Release

Ok, so changing the Module name from OSBuilder to OSDBuilder was not an easy one, but to be fair, the name change is more consistent with what I do \(OSD Stuff\) and easier to distinguish what it is used for.  I have tried to make the changes with minimal impact to you  Here are the things to know

* **OSDBuilder checks the Registry for your last OSBuilder path and picks up where OSBuilder left off**
* **OSDBuilder will use your current OSBuilder directory, without any material changes**
* **OSDUpdate Catalogs are now part of the OSDBuilder Module**
  * As long as you are on the latest **OSDBuilder**, you will have the latest **OSDUpdate** Catalogs
  * Since the **OSDUpdate** Catalogs are part of the Module, it's easy to go back to a previous Update Revision if necessary.  Just download an older **OSDBuilder** Module
  * You can stay on a Patch Revision until you are ready to update by staying on an older Module version

![](../../.gitbook/assets/image%20%2824%29.png)

* **Updates are downloaded to Content\OSDUpdate**
  * This should not impact you as **OSDBuilder** is being released on Patch Tuesday, when you have to get new updates anyway
  * Content\Updates will not be deleted automatically and is now an Orphan
* **Language Packages are no longer downloaded by OSDBuilder**
  * This was Microsoft's decision to stop doing this going forward starting with 1809
  * Existing downloads in Content\Updates will continue to work
  * You will need to download and use Language Pack ISO's from Microsoft MVLS going forward
* **Optional Downloads are thing**
  * These are available to download and install in OSDBuilder

![](../../.gitbook/assets/image%20%2852%29.png)

* **Alias Everything**
  * You can execute OSBuilder or OSDBuilder.  Changes have been aliased

![](../../.gitbook/assets/image%20%282%29.png)

