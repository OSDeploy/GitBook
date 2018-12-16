# Edit OSDeploy Branding GPO

Now that you have imported your OSDeploy GPOs, you can edit them.  OSDeploy Branding should contain all your unique settings for your Enterprise.

## Filter Policies for Easy Viewing

The easiest way to see configured Policies is with a Filter set to Configured Policies

![](../../../.gitbook/assets/2018-08-31_13-37-06.png)

## Configure Start Pages

Set your proper Edge Start Page

![](../../../.gitbook/assets/2018-08-31_13-38-16.png)

## Logon Image, Default Associations, Start Layout, and Theme \(User\)

The remainder of the Policies are as needed.  Disable the Policies you do not intend to use

![](../../../.gitbook/assets/2018-08-31_13-39-26.png)

## Edit Registry Preferences

Edit the existing registry entries for your Enterprise for both Computer and User Configuration

![](../../../.gitbook/assets/2018-08-31_13-42-11.png)

## Complete

Once you have made these changes, simply Backup or Copy this GPO and place it in OSConfig at the following path

```text
OSConfig\LocalPolicy\ImportGPO\OSDeploy Branding
```



