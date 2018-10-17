# Recovery

Start by selecting New-PEBuildTask and the Recovery tab.  This task will use WinRE.wim to create Recovery Media.  You have the option to include [AutoExtraFiles](../auto-extrafiles.md) and set the Scratch Space.  The default Scratch Space is 32MB, but if you do not select an option \(since this is not a Mandatory parameter\), this will automatically be set to 128MB.

{% api-method method="head" host="New-PEBuild" path="" %}
{% api-method-summary %}
New-PEBuild
{% endapi-method-summary %}

{% api-method-description %}

{% endapi-method-description %}

{% api-method-spec %}
{% api-method-request %}
{% api-method-path-parameters %}
{% api-method-parameter name="TaskName" type="string" required=true %}
Name of the Task
{% endapi-method-parameter %}
{% endapi-method-path-parameters %}
{% endapi-method-request %}

{% api-method-response %}
{% api-method-response-example httpCode=200 %}
{% api-method-response-example-description %}

{% endapi-method-response-example-description %}

```

```
{% endapi-method-response-example %}
{% endapi-method-response %}
{% endapi-method-spec %}
{% endapi-method %}

![](../../../.gitbook/assets/2018-10-15_23-52-31.png)

## Select OSMedia

You will be prompted to select an OSMedia to use for the PEBuild Task.  By design, if you entered a Windows Version in the Task Name \(1803, 1809\) you will only be shown OSMedia that matches that Windows Version.

![](../../../.gitbook/assets/2018-10-15_23-53-59.png)

## WinPE Additional Content

If you have added WinPE Content to OSBuilder \(DaRT, Drivers, Extra Files, ADK Package\), you will be able to select them to complete the Task.

![](../../../.gitbook/assets/2018-10-15_23-54-30.png)

## Complete Task

Once the Task is complete, you can use Invoke-PEBuildTask to build the Recovery Media

![](../../../.gitbook/assets/2018-10-15_23-58-03.png)



