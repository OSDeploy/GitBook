# OSBuild

{% hint style="danger" %}
**This guide requires OSDBuilder 19.4.11 or newer**
{% endhint %}

## New-OSBuild

When you have your Task sorted out you can create your build.  Here is what the WinPE Language integration should looks like

![](../../../../.gitbook/assets/image%20%28178%29.png)

Language Packs and Language Features will be installed, and Language Sources will be added.  A new Lang.ini will be generated \(in Sources\).  The Lang.ini is also copied to WinSE \(Windows Setup\)

![](../../../../.gitbook/assets/image%20%2848%29.png)

When complete, the new OSBuild will be created.  If you did not select a Custom Name, the Languages will be added to the default name.  Additionally an **OSBuild.json** file will be included which will contain the Task + Templates that were used to create the OSMedia

![](../../../../.gitbook/assets/image%20%28121%29.png)

## Results

Considering this Windows 10 contains 4 additional Languages, the size increase is not that large

![](../../../../.gitbook/assets/image%20%28139%29.png)

When booting to the ISO, you will be prompted to select a Language

![](../../../../.gitbook/assets/image%20%28212%29.png)

Here you can see that you have the ability to select different Languages for Windows Setup

![](../../../../.gitbook/assets/image%20%2878%29.png)



![](../../../../.gitbook/assets/image%20%2878%29.png)



