---
description: OSDUpdate 19.6.14+
---

# ConfigMgr Integration and Deployment

I'll keep this short and sweet as the weekend is here, but you should know how to put this together

## Create a Package with a Program

Create a Package containing the content, and a Program using the PowerShell Script

![](../../../.gitbook/assets/image%20%28285%29.png)

![](../../../.gitbook/assets/image%20%28289%29.png)

## Task Sequence

In the Task Sequence, add OSDUpdate as an Install Package.  That should be it!

![](../../../.gitbook/assets/image%20%28123%29.png)

