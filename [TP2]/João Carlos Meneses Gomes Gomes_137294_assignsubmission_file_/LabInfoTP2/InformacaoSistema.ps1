$infofile="C:\Users\joni_\OneDrive\Área de Trabalho\log\InformacaoSistema.html";  

    function InformacaoSistema{
$OS = Get-CimInstance -Class Win32_OperatingSystem | ConvertTo-Html -Property Version,Caption,BuildNumber,Manufacturer -Fragment
$numProcesses = Get-WmiObject Win32_OperatingSystem |ConvertTo-Html -Property NumberOfProcesses -Fragment
$Process = Get-CimInstance -ClassName Win32_Processor | ConvertTo-Html -Property DeviceID,Name,Caption,MaxClockSpeed,SocketDesignation,Manufacturer -Fragment
$Bios = Get-CimInstance -ClassName Win32_BIOS | ConvertTo-Html -Property SMBIOSBIOSVersion,Manufacturer,Name,SerialNumber -Fragment
$Disc = Get-CimInstance -ClassName Win32_LogicalDisk | ConvertTo-Html -Property DeviceID,DriveType,ProviderName,VolumeName,Size,FreeSpace -Fragment
$Services = Get-CimInstance -ClassName Win32_Service |ConvertTo-Html -Property Name,DisplayName,State -Fragment
$ram = Get-WmiObject Win32_OperatingSystem | ConvertTo-Html -Property TotalVisibleMemorySize -Fragment
$free = Get-WmiObject Win32_OperatingSystem | ConvertTo-Html -Property FreePhysicalMemory -Fragment
$numUsers = Get-WmiObject Win32_OperatingSystem |ConvertTo-Html -Property NumberOfUsers -Fragment
$User = Get-LocalUser | Select * | ConvertTo-Html -Property Name,Description,PasswordLastSet,PasswordExpires,PasswordChangeableDate -Fragment
$boot = Get-WmiObject Win32_OperatingSystem |ConvertTo-Html -Property LastBootTime -Fragment
$arch = Get-WmiObject Win32_OperatingSystem |ConvertTo-Html -Property OSArchitecture -Fragment
$model = Get-WmiObject win32_ComputerSystemProduct | ConvertTo-Html -Property Name -Fragment
$manufacturer = Get-WmiObject win32_ComputerSystemProduct |ConvertTo-Html -Property Vendor -Fragment
$Report = ConvertTo-HTML -Body "$ComputerName  $OS $numProcesses $Process $ram $free $Bios $Disc $boot $arch $model $manufacturer $Services $numUsers $User " -Title "InformacaoSistema" 
$Report | Out-File $infoFile
}

InformacaoSistema;