# OSBuild

{% hint style="danger" %}
**This guide requires OSDBuilder 19.4.11 or newer**
{% endhint %}

## New-OSBuild

{% page-ref page="../../basics/new-osbuild/" %}

When you have your Task sorted out you can create your OSBuild.  Here is what the WinPE Language integration looks like

![](../../../../.gitbook/assets/image%20%28255%29.png)

The OS integration will include the Language Packs and Language Features will be installed, and Language Sources will be added.  A new Lang.ini will be generated \(in Sources\).  The Lang.ini is also copied to WinSE \(Windows Setup\)

![](../../../../.gitbook/assets/image%20%2867%29.png)

When complete, the new **OSBuild** will be created.  If you did not select a Custom Name, the Languages will be added to the default name.  Additionally an **OSBuild.json** file will be included which will contain the Task + Templates that were used to create the OSMedia

![](../../../../.gitbook/assets/image%20%28169%29.png)



