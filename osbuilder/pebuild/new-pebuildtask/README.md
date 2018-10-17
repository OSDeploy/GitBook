# New-PEBuildTask

## Function

{% tabs %}
{% tab title="Recovery" %}
-TaskName: "Win10 x64 1809"

-AutoExtraFiles

-ScratchSpace: 256
{% endtab %}

{% tab title="WinPE" %}
-TaskName: "Win10 x64 1809"

-AutoExtraFiles

-ScratchSpace: 256

-SourceWim: WinRE
{% endtab %}

{% tab title="MDT" %}
-TaskName: "Win10 x64 1809"

-AutoExtraFiles

-ScratchSpace: 256

-SourceWim: WinRE

-DeploymentShare:  \\Server\Share
{% endtab %}
{% endtabs %}





