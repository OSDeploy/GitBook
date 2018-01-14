# Group Policy

You are going to make customizations in Group Policy.  At a minimum you need to make sure that your Active Directory Central Store is up to date with the latest ADMX files.  My Enterprise has a Directory Services team that manages Active Directory, so if you are in the same situation that I was in where I had to wait on another group to complete my requests, get it started now, so it will be there when you need them.

---

### Update the Central Store

Follow Microsoft's guide and links for downloading the Administrative Templates \(.admx\).

[How to create and manage the Central Store for Group Policy Administrative Templates in Windows](https://support.microsoft.com/en-us/help/3087759/how-to-create-and-manage-the-central-store-for-group-policy-administrative-templates-in-windows)

> This article describes how to use the new .admx and .adml files to create and administer registry-based policy settings in Windows. This article also explains how the Central Store is used to store and to replicate Windows-based policy files in a domain environment.

You will be able to download the ADMX Templates and the Group Policy Settings Reference for Windows and Windows Server from that link.

---

### Office ADMX Templates

Make sure you download and install the ADMX Templates for Microsoft Office

**Office 2016:** [https://www.microsoft.com/en-us/download/details.aspx?id=49030](https://www.microsoft.com/en-us/download/details.aspx?id=49030)

**Office 2013:** [https://www.microsoft.com/en-us/download/details.aspx?id=35554](https://www.microsoft.com/en-us/download/details.aspx?id=35554)

---

### Create an Active Directory Development OU

You will need to have rights to Create and Modify GPO's for Windows 10, so make sure you that you have rights to do so.  In your OS Development you will need to add Workstations to this OU so you can test your Group Policy settings and preferences.

---



