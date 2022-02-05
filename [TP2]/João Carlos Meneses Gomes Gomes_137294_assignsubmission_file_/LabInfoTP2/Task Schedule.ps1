$Origem1 = 'C:\LabInfoTP1\Script-Backup'
$Origem2 = 'C:\LabInfoTP1\InformacaoSistema'
$action1 = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument $Origem1
$action2 = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument $Origem2
$trigger =  New-ScheduledTaskTrigger -Daily -At 10:00
Register-ScheduledTask -Action $action1 -Trigger $trigger -TaskName "Backup" -Description "Backup diario do ficheiro"
Register-ScheduledTask -Action $action2 -Trigger $trigger -TaskName "InformacaoSistema" -Description "Backup da InformacaoSistema'"
