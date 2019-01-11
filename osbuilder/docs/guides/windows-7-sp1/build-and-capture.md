# Build and Capture

Windows 7 SP1 is now ready to be added to a Build and Capture Task Sequence, with some things to understand.  For starters, you can see that the WIM is rather large.  Windows 7 does not support performing a DISM Image Cleanup offline, so you need to complete this in a Build and Capture Task Sequence

![](../../../../.gitbook/assets/2019-01-02_0-12-55.png)

## Resources

For more information on how to do this, I strongly recommend you follow [**Ioan Popovici**](https://twitter.com/IoanPopovici) of [**SCCM Zone**](https://sccm-zone.com/) ****and check out these links

{% embed url="https://sccm-zone.com/creating-a-updated-windows-7-osd-image-with-sccm-build-and-capture-d629b5561413" %}

{% embed url="https://sccm-zone.com/cleaning-the-windows-image-before-sysprep-during-a-sccm-b-c-task-sequence-214b0bdb4088" %}

