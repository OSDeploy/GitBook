# Active Directory GPO

You can create a Local Policy for OSConfig by creating an Active Directory Group Policy Object. If you have Full Control of Active Directory and you can create a GPO, then good for you. My role in my Enterprise is to customize the Operating Systems, and to create our Deployment strategy for Operating Systems. I am not a Security Expert . . . so I will not get deep into the Security side of things when working with GPOs.

For the purpose of this guide, I will detail how to create a GPO for OS Customization only. It is up to you to determine the strategies for enforcing and item level targeting. To be clear, the GPO's that we will use will not be used for Policy on a Domain, but for OS Deployment only.

Back to AD . . . I have rights in my Enterprise to create a GPO, but not to link it to an OU. I turn those into our AD team to implement, but if I am going to use a GPO for OS Customization only, then no need to turn over the GPO . . . which means I maintain full control.

If you do not have rights to create a GPO, get with your Active Directory guys to create these for you and grant you permission to edit them, and let them know it's ok if you don't get permission to link them to an OU.

I manage a mixed Enterprise of both Windows 10 and Windows 7 so this guide will detail both

If you do not have rights to Active Directory Group Policy Management, then why not create a VM Domain Controller?

## Create GPO's

I recommend creating the following GPOs in Active Directory

| GPO Name | Purpose |
| :--- | :--- |
| OSDeploy Branding | Policies and Preferences specific to YOUR Enterprise only, such as Internet Start Pages, Server Names, etc. |
| OSDeploy Win10 | Policies and Preferences that apply to Windows 10 only, and cannot be used on Windows 7 |
| OSDeploy Win7 | Policies and Preferences that apply to Windows 7 only and cannot be used on Windows 10 |



