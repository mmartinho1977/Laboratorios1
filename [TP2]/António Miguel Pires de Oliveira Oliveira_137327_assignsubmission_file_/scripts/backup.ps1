$date=Get-Date -Format “MM/dd/yyyy HH:mm”
$Origin='c:\tp1\pastaOrigem';
$Destination='c:\tp1\pastaDestino';
$LogFile='C:\tp1\Ap\backup.txt';
$ReportFile='C:\tp1\Ap\report.txt';
$ReceiverMail='*********Email-Destino***************';
$FromMail='a18562@alunos.ipca.pt';
$Password=ConvertTo-SecureString '************PASSWORD***********' -AsPlainText -Force;
$Authentication=New-Object System.Management.Automation.PSCredential ($FromMail, $Password);
$SmtpServer='mail.office365.com';
$Subject='Copia de seguranca do dia'+$date;
$successEmailBody='Copia de seguranca efetuada com sucesso';
$failEmailBody='Copia de seguranca nao efetuada';

        function SendMail($status) {

                if($status -eq "true"){
                $body=$successEmailBody
                }else {
                $body=$failEmailBody
                }

        send-mailmessage -from $FromMail -to $ReceiverMail -Credential $Authentication -UseSsl -subject $Subject -body $body -Attachments "$LogFile" -priority High -dno onSuccess, onFailure -smtpServer $SmtpServer 
        }


## Processo de backup/verificações

        if (!(Test-Path -path $Origin)){
        SendMail("false")
        write-host "A cópia não foi efetuada com sucesso, foi enviado um e-mail com essa informação"
        Exit
        }
      
 

        if (!(Test-Path -path $Destination)){
                New-Item $Destination -type directory
        }
        

        
        if(robocopy $Origin $Destination *.* /XO /COPY:DATSO /E /purge /R:10 /log:$LogFile /NP){
                $backupStatus="true";
                write-host "A cópia foi efetuada com sucesso e o e-mail foi enviado"
        }else {
                $backupStatus="false";
                write-host "A cópia não foi efetuada com sucesso, foi enviado um e-mail com essa informação"
        }
       
        
## Verificar as pastas

        $checkPath1 = Dir $Origin
        $checkPath2 = Dir $Destination

        Compare-Object $checkPath1 $checkPath2 -PassThru > $ReportFile
        


##Controlar Corpo do e-mail através do reportFile
        $File = Get-ChildItem $ReportFile
        if ($File.Length -eq 0) {
                $backupStatus="true"
        }
        

        $File = Get-ChildItem $ReportFile
        if ($File.Length -gt 0) {
                $backupStatus="false"
        }
        
SendMail($backupStatus)

