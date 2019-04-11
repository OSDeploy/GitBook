# OSBuild Validate

## Prerequisites

{% page-ref page="../../functions/osmedia/import-osmedia.md" %}

{% page-ref page="../update-osmedia/" %}

{% page-ref page="../new-osbuildtask/" %}

## Functions

{% page-ref page="../../functions/osbuild/new-osbuild.md" %}

## New-OSBuild

You should first validate your **OSBuild** by using **New-OSBuild** without any parameters

The first step is to select an **OSBuild Task** and press OK.  Its important to note that this OSBuild Task was created with a **UBR of 17763.107**

![](../../../../.gitbook/assets/image%20%28209%29.png)

### OSBuild Task Information

The OSMedia that was used to create the **OSBuild Task** will be displayed, as well as the **OSBuild Configuration**

![](../../../../.gitbook/assets/image%20%2874%29.png)

### Updated Source OSMedia

The problem is that I seem to have an updated **OSMedia** that should be used

![](../../../../.gitbook/assets/image%20%28208%29.png)

This is not an issue as **OSDBuilder** will automatically select the latest release

{% hint style="info" %}
**Use the DontUseNewestMedia parameter if you do not want to use the latest OSMedia**
{% endhint %}

![](../../../../.gitbook/assets/image%20%28125%29.png)

### Task Templates

**OSDBuilder** will search the Templates directory for Tasks  In this case it founds the Task Template created in the previous section which contained NetFX3, WinPE AutoExtraFiles, Appx Provisioned Packages, and Enabled Hyper-V.  

{% hint style="info" %}
**To skip using Templates, use the SkipTemplates parameter**
{% endhint %}

![](../../../../.gitbook/assets/image.png)

### Content Templates and Updates

The remainder of the information relates to **Content Templates** and **Updates**

![](../../../../.gitbook/assets/image%20%28133%29.png)

