# Apply RegistryXML Files

While you can add your Registry settings in Group Policy Preferences, there is an easier way.  Simply place the RegistryXML file you created on the last page in your **OSConfig\RegistryXML\ImportXML** directory.  OSConfig will automatically apply any XML files in this directory to the Registry of the Deployment OS.

![](../../../.gitbook/assets/2018-09-05_1-54-27.png)

## Wrap-Up

After switching to RegistryXML, there is absolutely no way I am going back to multiple steps in my Task Sequence for making Registry modifications . . . Keep this in mind . . . **until you separate your Customizations from your Task Sequence, you will never be able to create Provisioning Packages to apply the Customizations.**

