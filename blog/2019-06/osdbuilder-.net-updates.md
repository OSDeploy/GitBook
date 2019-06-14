# OSDBuilder .Net Updates

I was pinged on why a fully patched Windows 10 1809 image is missing KB4480056, so this post is my workflow

![](../../.gitbook/assets/image%20%2888%29.png)

## Create a New OSDBuilder

When working on an issue, I try to make sure that everything is clean, so I'll create a new OSDBuilder instance

```text
OSDBuilder -SetPath D:\OSDBuilder\NetFX -CreatePaths
```

![](../../.gitbook/assets/image%20%28102%29.png)

## Copy OSMedia

In this test, I'm going to be working with Windows 10 x64 1809, so rather than Import and Update from scratch, I'll copy a fully patched OSMedia from another one of my OSDBuilder projects.  I'll verify that everything is fully patched

```text
OSMedia -Verbose
```

![](../../.gitbook/assets/image%20%28287%29.png)

## New-OSBuildTask

I'll create a New-OSBuild Task with the only purpose to enable NetFX 3.5

```text
New-OSBuildTask -TaskName "NetFX Update Test" -EnableNetFX3
```

![](../../.gitbook/assets/image%20%28243%29.png)

## New-OSBuild

I'll cheat again and copy the updates I need from another OSDBuilder project, and verify I have them downloaded using New-OSBuild \(without the Execute parameter\)

```text
New-OSBuild
```

![](../../.gitbook/assets/image%20%28195%29.png)

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

![](../../.gitbook/assets/image%20%28214%29.png)

## New-OSDBuilderISO

Time to do some testing to see how the updates worked

```text
New-OSDBuilderISO
```

![](../../.gitbook/assets/image%20%2841%29.png)

## Virtual Machine

Thank GOD for Virtual Machines.  Time to do some testing on the new image to see what updates are needed

![](../../.gitbook/assets/image%20%28236%29.png)

And the results?  Not good, I still needed KB4480056

![](../../.gitbook/assets/image%20%28122%29.png)

## Further Testing

So I went back and created an ISO of my OSMedia to build out to see if the issue is NETFX 3.5 being enabled in an OSBuild and the results were the same

{% hint style="info" %}
**Its important to note that the 2019-03 1809 Update from Microsoft has this issue as well**
{% endhint %}

Checking WSUS certainly shows that this update is Superseded

![](../../.gitbook/assets/image%20%2834%29.png)

But the newer .NET Framework Cumulative Updates are not updating the .NET Framework files

![](../../.gitbook/assets/image%20%28215%29.png)

So I add the previous Cumulative Update and proceed with updating my OSMedia

![](../../.gitbook/assets/image%20%2863%29.png)





































