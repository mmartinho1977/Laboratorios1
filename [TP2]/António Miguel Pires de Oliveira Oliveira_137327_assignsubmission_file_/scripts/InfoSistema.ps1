$InformationFile="C:\tp1\Ap\SystemInfo.html";
##Função Informação de Sistema

function infoSistema{
    $so = Get-CimInstance -Class Win32_OperatingSystem | ConvertTo-Html -Property Version,Caption,BuildNumber,Manufacturer -Fragment
    $numProcessos = Get-WmiObject Win32_OperatingSystem |ConvertTo-Html -Property NumberOfProcesses -Fragment
    $Processos = Get-CimInstance -ClassName Win32_Processor | ConvertTo-Html -Property DeviceID,Name,Caption,MaxClockSpeed,SocketDesignation,Manufacturer -Fragment
    $Bios = Get-CimInstance -ClassName Win32_BIOS | ConvertTo-Html -Property SMBIOSBIOSVersion,Manufacturer,Name,SerialNumber -Fragment
    $Disco = Get-CimInstance -ClassName Win32_LogicalDisk | ConvertTo-Html -Property DeviceID,DriveType,ProviderName,VolumeName,Size,FreeSpace -Fragment
    $Servicos = Get-CimInstance -ClassName Win32_Service |ConvertTo-Html -Property Name,DisplayName,State -Fragment
    $ram = Get-WmiObject Win32_OperatingSystem | ConvertTo-Html -Property TotalVisibleMemorySize -Fragment
    $livre = Get-WmiObject Win32_OperatingSystem | ConvertTo-Html -Property FreePhysicalMemory -Fragment
    $numUsers = Get-WmiObject Win32_OperatingSystem |ConvertTo-Html -Property NumberOfUsers -Fragment
    $User = Get-LocalUser | Select * | ConvertTo-Html -Property Name,Description,PasswordLastSet,PasswordExpires,PasswordChangeableDate -Fragment
    $boot = Get-WmiObject Win32_OperatingSystem |ConvertTo-Html -Property LastBootTime -Fragment
    $arch = Get-WmiObject Win32_OperatingSystem |ConvertTo-Html -Property OSArchitecture -Fragment
    $model = Get-WmiObject win32_ComputerSystemProduct | ConvertTo-Html -Property Name -Fragment
    $manufacturer = Get-WmiObject win32_ComputerSystemProduct |ConvertTo-Html -Property Vendor -Fragment
    $ReportFile = ConvertTo-HTML -Body "$ComputerName  $so $numProcessos $Processos $ram $livre $Bios $Disco $boot $arch $model $manufacturer $Servicos $numUsers $User " -Title "System Info" 
    $ReportFile | Out-File $InformationFile
    }
    
    InfoSistema;