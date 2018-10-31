---
description: Updated 2018.10.30
---

# OSMedia Archive

When you perform a successful [**`Update-OSMedia`**](../osmedia/update-osmedia/), the OSMedia directory will contain multiple directories with different UBRs \(the higher the number, the newer the Patch level\)

![](../../.gitbook/assets/2018-10-30_14-32-15.png)

This may also lead to confusion as you are presented with multiple UBRs of the same Windows Version

![](../../.gitbook/assets/2018-10-30_14-33-33.png)

Its a good idea to MOVE previous UBRs into a subdirectory of OSMedia called **Archive**

![](../../.gitbook/assets/2018-10-30_14-35-31.png)

This results in less confusion going forward \(future releases of OSBuilder may do this automatically\)

![](../../.gitbook/assets/2018-10-30_14-37-27.png)

 I recommend keeping the original Imported version and the previous version if your Drive Space permits, you may even need to use an OSMedia Archive when you get a [**Failed UBR Change**](osmedia-failed-ubr-change.md)\*\*\*\*

