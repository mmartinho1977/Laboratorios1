$Origem='C:\Laboratorios';
$Destino='C:\Users\joni_\OneDrive\Área de Trabalho\Teste';
$Logfile="C:\Users\joni_\OneDrive\Área de Trabalho\log\backup.txt";
$Report="C:\Users\joni_\OneDrive\Área de Trabalho\log\report.txt";
$MailRec='a1291cavado@gmail.com';
$mailFrom='a18580@alunos.ipca.pt';
$Password=ConvertTo-SecureString "Jonifixe27@" -AsPlainText -Force;
$Authentication = New-Object System.Management.Automation.PSCredential ($mailFrom, $Password);
$Smtp='smtp.office365.com';
$port='587';
$EmailSubject="Backup Status";
$successEmailBody=" Backup Completo";
$failEmailBody="Backup Incompleto";

## Processo de backup
        if (!(Test-Path -path $Destino))
        {New-Item $Destino -type directory
        }
        
        robocopy $Origem $Destino *.* /XO /COPY:DATSO /E /purge /R:10 /log:$Logfile /NP
        
## Verificar os diretórios

        $checkOrigem = Dir $Origem
        $checkDestino = Dir $Destino
        Compare-Object $checkOrigem $checkDestino -PassThru > $Report
        
## Email de backup completo

        function sendsuccessEmail{
        Send-MailMessage -from $mailFrom -to $mailRec -Credential $Authentication -UseSsl -subject $EmailSubject -body $successEmailBody -Attachments $Logfile -priority High -DeliveryNotificationOption onSuccess, onFailure -smtpServer $Smtp -Port $port
        }
        
## Email de backup incompleto
        function sendFailEmail{
        Send-MailMessage -from $mailFrom -to $mailRec -Credential $Authentication -UseSsl -subject $EmailSubject -body $failEmailBody -Attachments $Logfile -priority High -DeliveryNotificationOption onSuccess, onFailure -smtpServer $Smtp -Port $port
        }
        
##Se o Report está vazio, então enviar email de completo
        $File = Get-ChildItem $Report
        if ($File.Length -eq 0) {sendSuccessEmail}
        
##Se o Report não está vazio, então enviar email de incompleto
        $File = Get-ChildItem $Report
        if ($File.Length -gt 0) {sendFailEmail}
