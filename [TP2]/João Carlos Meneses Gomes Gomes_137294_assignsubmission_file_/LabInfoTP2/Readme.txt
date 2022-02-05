Nome: João Carlos Meneses Gomes
Nº18580

Importante utilizar o comando "Set-ExecutionPolicy Unrestricted" para desbloquear a execução destas scripts 

Script-Backup e InformacaoSistema:

Carateristicas:
• Copiar uma determinada pasta de ficheiros para uma outra localização; 
• No  final  de  execução,  deverá  ser  enviado  um  email  ao  administrador informando o resultado da execução da tarefa; 
• Retirar  informação  acerca  do  hardware  e  software  instalado  num  computador, informação sobre utilizadores;

Configurações necessárias  para  execução  da  script  em  qualquer computador:
Origem - Caminho original do ficheiro a efetuar cópia;
Destino - Caminho para onde será efetuada a cópia;
MailRec - Recetor do email com o status da cópia;
MailFrom - Caixa de email de onde será enviado o Status;
Smtp - Servidor de email;
port - Porta de servidor de email;

Script Task Schedule:

Carateristicas:
• Agendamento de automatico de tarefas;

Configurações necessárias  para  execução  da  script  em  qualquer computador:
Script1:
Origem1 -> Colocar Caminho onde se encontra a script a executar;
Origem2 -> Colocar Caminho onde se encontra a script a executar;
Action1 -> Executar a script em powershell.exe e o argumento onde está localizada a script
Action2 -> Executar a script em powershell.exe e o argumento onde está localizada a script
Trigger -> Acontecimento que dispulta a ação configurada, neste caso é uma hora especifica;






