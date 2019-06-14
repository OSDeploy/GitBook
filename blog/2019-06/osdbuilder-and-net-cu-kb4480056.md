# OSDBuilder and .NET CU KB4480056

I was pinged on why a fully patched Windows 10 1809 image is missing **KB4480056**, so this post is my workflow

![](../../.gitbook/assets/image%20%2889%29.png)

## Create a New OSDBuilder

When working on an issue, I try to make sure that everything is clean, so I'll create a new OSDBuilder instance

```text
OSDBuilder -SetPath D:\OSDBuilder\NetFX -CreatePaths
```

![](../../.gitbook/assets/image%20%28103%29.png)

## Copy OSMedia

In this test, I'm going to be working with Windows 10 x64 1809, so rather than Import and Update from scratch, I'll copy a fully patched OSMedia from another one of my OSDBuilder projects.  I'll verify that everything is fully patched

```text
OSMedia -Verbose
```

![](../../.gitbook/assets/image%20%28289%29.png)

## New-OSBuildTask

I'll create a New-OSBuild Task with the only purpose to enable NetFX 3.5

```text
New-OSBuildTask -TaskName "NetFX Update Test" -EnableNetFX3
```

![](../../.gitbook/assets/image%20%28245%29.png)

## New-OSBuild

I'll cheat again and copy the updates I need from another OSDBuilder project, and verify I have them downloaded using New-OSBuild \(without the Execute parameter\)

```text
New-OSBuild
```

![](../../.gitbook/assets/image%20%28197%29.png)

## New-OSBuild -Execute -WaitDismount

Time to process the New-OSBuild.  I don't want my Install.wim to dismount so I can check on a few files to make sure they are updated, an no need to wait for Component Cleanup either

```text
New-OSBuild -Execute -WaitDismount -SkipComponentCleanup
```

## The OSBuild Process

Its important to understand what is happening here with NetFX 3.5

1. NetFX Updates are applied by force, meaning we don't care if the update was previously installed, we are going to do it again anyway.  This is by design and different than the way other updates are applied \(as those are skipped if they previously exist\)
2. NetFX 3.5 is enabled.  Keep in mind this is enabled from an OLD and UNPATCHED package, so now we have to throw some updates again
3. So the NetFX Cumulative Updates are reapplied
4. And the LCU is FORCED, so again, we don't care if it was already in there, we are making sure it is installed again

This is the proper way to do things folks!

![](../../.gitbook/assets/image%20%28216%29.png)

## New-OSDBuilderISO

Time to do some testing to see how the updates worked

```text
New-OSDBuilderISO
```

![](../../.gitbook/assets/image%20%2841%29.png)

## Virtual Machine

Thank GOD for Virtual Machines.  Time to do some testing on the new image to see what updates are needed

![](../../.gitbook/assets/image%20%28238%29.png)

And the results?  Not good, I still needed KB4480056

![](../../.gitbook/assets/image%20%28123%29.png)

## Further Testing

So I went back and created an ISO of my OSMedia to build out to see if the issue is NETFX 3.5 being enabled in an OSBuild and the results were the same

{% hint style="info" %}
**Its important to note that the 2019-03 1809 Update from Microsoft has this issue as well**
{% endhint %}

Checking WSUS certainly shows that this update is Superseded

![](../../.gitbook/assets/image%20%2834%29.png)

But the newer .NET Framework Cumulative Updates are not updating the .NET Framework files

![](../../.gitbook/assets/image%20%28217%29.png)

So I add the previous Cumulative Update and proceed with updating my OSMedia

![](../../.gitbook/assets/image%20%2864%29.png)

Checking the Mounted Install.wim shows the updated files working as expected

![](../../.gitbook/assets/image%20%2851%29.png)

Validated it installed and is working properly

![](../../.gitbook/assets/image%20%28183%29.png)

## Conclusion

**There seems to be an issue with .NET Cumulate Updates starting with KB4480056.  I assume Microsoft has seen this issue, which explains why Windows Update detects that it needs to be installed, even after installing Superseding updates, but it doesn't appear that this same logic is in WSUS as the update is marked as Superseded.  OSDBuilder will be updated to include this update**



