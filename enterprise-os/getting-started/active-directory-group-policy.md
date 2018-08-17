# Active Directory Group Policy

The methods used to create an Enterprise OS requires Active Directory Group Policy.  If you have Full Control of Active Directory and you can create a GPO, then good for you.  My role in my Enterprise is to customize the Operating Systems, and to create our Deployment strategy for Operating Systems.  I am not a Security Expert . . . so I will not get deep into the Security side of things.

For the purpose of this guide, I will detail how to create a GPO for OS Customization only.  It is up to you to determine the strategies for enforcing and item level targeting.  To be clear, the GPO's that we will use will not be used for Policy on a Domain, but for OS Deployment only.

Back to AD . . . I have rights in my Enterprise to create a GPO, but not to link it to an OU.  I turn those into our AD team to implement, but if I am going to use a GPO for OS Customization only, then no need to turn over the GPO . . . which means I maintain full control.

If you do not have rights to create a GPO, get with your Active Directory guys to create these for you and grant you permission to edit them, and let them know it's ok if you don't get permission to link them to an OU.

I manage a mixed Enterprise of both Windows 10 and Windows 7.  While I will not get into detail my Windows 7 configuration, understand that some things I detail will not apply to you if you have Windows 10 only.  If you use Windows 7, make sure your GPO Names identify Win7 or Win10.

### Create GPO's

These are the GPO's that are required \(this may be updated as needed\).  I recommend using the same Prefix for all your GPO's so they are easy to identify.

| GPO Name | Purpose |
| :--- | :--- |
| OSDeploy Branding | Customizations specific to the Enterprise only, such as Internet Start Pages, Update Server Names, etc.  \(Computer and User Configurations\) |
| OSDeploy Computer Policy | Policies that apply to both Windows 10 and Windows 7 \(User Configuration Disabled\) |
| OSDeploy Computer Preference | Preferences \(Registry\) that apply to both Windows 10 and Windows 7 \(User Configuration Disabled\) |
| OSDeploy Computer Win10 | Policies and Preferences that apply to Windows 10 only, and cannot be used on Windows 7 \(User Configuration Disabled\) |
| OSDeploy Computer Win7 | Policies and Preferences that apply to Windows 7 only and cannot be used on Windows 10 \(User Configuration Disabled\) |
| OSDeploy User Policy | Policies that apply to both Windows 10 and Windows 7 \(Computer Configuration Disabled\) |
| OSDeploy User Preferences | Preferences that apply to both Windows 10 and Windows 7 \(Computer Configuration Disabled\) |
| OSDeploy User Win10 | Policies and Preferences that apply to Windows 7 only \(Computer Configuration Disabled\) |
| OSDeploy User Win7 | Policies and Preferences that apply to Windows 10 only \(Computer Configuration Disabled\) |

* Computer GPO's should have the GPO Status set to "User configuration settings disabled"
* User GPO's should have the GPO Status set to "Computer configuration settings disabled"





