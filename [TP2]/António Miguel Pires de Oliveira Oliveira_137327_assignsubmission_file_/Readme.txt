         ############################### IMPORTANTE ###################################

Será necessário utilizar o seguinte comando para poder executar as Scripts.
Set-ExecutionPolicy - ExecutionPolicy Unrestricted 



Na Pasta Scripts existem 3 Scripts:

TaskSchedule.ps1     -> Adiciona uma ScheduleTask ao Windows para executar diariamente ás 04h00m. Esta tarefa executa uma outra script presente nessa pasta chamada **backup.ps1**.
Esta script faz backups de uma pasta origem para uma pasta destino e envia um e-mail com o status do backup.
É tambem agendada uma outra tarefa, diariamente, que exporta para um ficheiro html todos os dados do sistema, atualizados.
	
Podemos observar na estrutura da nossa hierarquia que para além da pasta Scripts temos também as pastas de backup (origem/destino), e tabém uma pasta AP que é onde são armazenados os ficheiros de logs e reports, é também guardados o ficheiro de informação de sistema.
					
