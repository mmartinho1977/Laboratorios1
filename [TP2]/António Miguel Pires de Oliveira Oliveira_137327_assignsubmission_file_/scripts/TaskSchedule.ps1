$Path1 = 'C:\tp1\backup.ps1'
$action = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument $Path1
$trigger =  New-ScheduledTaskTrigger -Daily -At 04:00
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "Backup IPCA" -Description "Backup diario da pasta Origem"

$Path1 = 'C:\tp1\InfoSistema.ps1'
$action = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument $Path1
$trigger =  New-ScheduledTaskTrigger -Daily -At 04:00
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "Informacao do sistema" -Description "Informacao detalhada do sistema operativo"

