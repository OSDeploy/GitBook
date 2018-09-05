# Convert REG to RegistryXML

Here is where things get very easy . . . let's first find a REG file that we want to add to Group Policy.  A great place to find all kinds of REG files is to check at Ten Forums.  Here is one that will add an **Edit with PowerShell ISE as Administrator** in the Context Menu.  In the link below, download the REG file

{% embed data="{\"url\":\"https://www.tenforums.com/tutorials/114235-add-edit-powershell-ise-administrator-windows-10-a.html\",\"type\":\"link\",\"title\":\"Add Edit with PowerShell ISE as administrator in Windows 10\",\"description\":\"How to Add Edit with PowerShell ISE as administrator context menu in Windows 10\",\"icon\":{\"type\":\"icon\",\"url\":\"https://www.tenforums.com/fav/apple-touch-icon.png\",\"width\":180,\"height\":180,\"aspectRatio\":1},\"thumbnail\":{\"type\":\"thumbnail\",\"url\":\"https://www.tenforums.com/geek/gars/images/2/types/thumb\_\_ower\_hell\_\_\_\_.png\",\"width\":250,\"height\":250,\"aspectRatio\":1}}" %}

## Reg 2 GPP

Now head over to this link and upload the REG file

{% embed data="{\"url\":\"https://www.runecasters.com.au/reg2gpp\",\"type\":\"link\",\"title\":\"RuneCasters IT Solutions\",\"description\":\"Working magic to meet your IT needs! Providing mobile computer repair, maintenance and other related IT services to people in Cairns, Australia.\",\"icon\":{\"type\":\"icon\",\"url\":\"https://www.runecasters.com.au/templates/siteground-j16-42/favicon.ico\",\"aspectRatio\":0}}" %}

Now modify the **Collection Name** and click the **Convert and Download XML** button

![](../../.gitbook/assets/2018-09-05_1-44-19.png)

## Copy and Paste XML in GPP Registry

A simple right click and Copy on the XML file your downloaded, then Paste into Group Policy Management.  These Registry values will be added by OSConfig when adding the GPO to the LocalPolicy Customization

![](../../.gitbook/assets/2018-09-05_1-47-47.png)

## Show-RegistryXML

And here are the values that show up when using Show-RegistryXML

![](../../.gitbook/assets/2018-09-05_1-49-59.png)



