# Servicing Sessions



```text
[xml]$XmlDocument = Get-Content -Path 'C:\Windows\servicing\Sessions\Sessions.xml'
$XmlDocument.Sessions.Session.Tasks.Phase.package | ? {$_.id -like "*RollupFix*" -and $_.targetState -eq 'Installed'} | Sort-Object id
```

```text
id                                                          name      targetState options
--                                                          ----      ----------- -------
Package_for_RollupFix~31bf3856ad364e35~amd64~~16299.371.1.3 KB4093112 Installed   0      
Package_for_RollupFix~31bf3856ad364e35~amd64~~16299.431.1.8 KB4103727 Installed   0      
Package_for_RollupFix~31bf3856ad364e35~amd64~~16299.492.1.9 KB4284819 Installed   0      
Package_for_RollupFix~31bf3856ad364e35~amd64~~16299.611.1.7 KB4343897 Installed   0      
Package_for_RollupFix~31bf3856ad364e35~amd64~~16299.665.1.5 KB4457142 Installed   0      
Package_for_RollupFix~31bf3856ad364e35~amd64~~16299.726.1.6 KB4462918 Installed   0      
Package_for_RollupFix~31bf3856ad364e35~amd64~~16299.785.1.4 KB4467686 Installed   0      
Package_for_RollupFix~31bf3856ad364e35~amd64~~16299.846.1.4 KB4471329 Installed   0      

```

