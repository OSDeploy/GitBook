# LocalPolicy

LocalPolicy is the bridge to bringing your Group Policy Objects into Local Policy.  Currently Group Policy and Registry Group Policy Preferences are applied using OSConfig and the Import-GPO.ps1

{% hint style="danger" %}
LGPO.exe is required for LocalPolicy to apply.  This is not included in the OSConfig download
{% endhint %}

![](../../../.gitbook/assets/2018-08-31_2-11-57.png)

## ImportGPO

GPO Backups or GPO copies from Sysvol placed in this directory will be applied to Local Policy using Import-GPO.ps1

## ImportTXT

LGPO Text files placed in this directory will be processed by LGPO.exe using Import-TXT.ps1

## LGPO

Directory containing LGPO.exe as detailed on this link

{% embed data="{\"url\":\"https://www.osdeploy.com/osconfig/downloads/lgpo\",\"type\":\"link\",\"title\":\"LGPO - OSDeploy\",\"icon\":{\"type\":\"icon\",\"url\":\"https://blobscdn.gitbook.com/v0/b/gitbook-28427.appspot.com/o/spaces%2F-LDKRxGiKLYjW1gana2O%2Favatar.png?generation=1532585359921615&alt=media\",\"aspectRatio\":0},\"thumbnail\":{\"type\":\"thumbnail\",\"url\":\"https://www.gitbook.com/share/space/thumbnail/-LDKRxGiKLYjW1gana2O.png\",\"width\":1200,\"height\":630,\"aspectRatio\":0.525}}" %}

## Import-GPO.ps1

Script to process GPO files contained in the ImportGPO directory

## Import-TXT.ps1

Script to process LGPO Text files contained in the ImportTXT directory







