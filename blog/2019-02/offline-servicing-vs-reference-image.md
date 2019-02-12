# Offline Servicing vs Reference Image

I got asked a question on Twitter, and rather than limiting my reply to 280 characters, I'll share as much as I can

{% embed url="https://twitter.com/beanska/status/1095333466114162693" %}

## Reference Image = Captured and maybe Sysprep

A **Reference Image** is an Image that has been customized and **Captured**.  This is also referred to as a "**Build and Capture**" because it is typically created in a Build and Capture Task Sequence, although it can be created manually through Audit Mode.  A Reference Image MAY also contain installed Applications \(Office, Runtimes\), but this is not always the case.

Regardless of the method use, it must still be **Captured** \(using PowerShell, DISM, ImageX, Ghost, etc\).  Additionally, Sysprep **should** be run on a system in this case, although this is not always the case

Here is Microsoft's take on this

{% embed url="https://docs.microsoft.com/en-us/windows/deployment/deploy-windows-mdt/create-a-windows-10-reference-image" %}

## Offline Servicing = Uncaptured and NO Sysprep

When we use the term "Offline Servicing", we typically mean an Image that comes factory fresh from Microsoft that we mount, and apply the latest Microsoft Updates to.  This includes adding Language Resources, or injecting files, even mounting the Registry to make cosmetic changes.



{% embed url="https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/mount-and-modify-a-windows-image-using-dism" %}

## Blurring the Lines

* **You can mount a Reference Image and make changes, so you can Offline Service a Reference Image**
* **You can download a clean ISO from Microsoft and call that your "Reference Image"**
* **OSBuilder is a method of Offline Servicing "Uncaptured"**

To be clear, the remainder of this document will consider a **Reference Image "Captured" vs Offline Servicing "Uncaptured"**









