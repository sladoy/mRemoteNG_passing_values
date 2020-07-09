$login = $args[1] # User that will be used to open DameWare as a Administrator
$password = $args[2] # Password of the user that will be used to open DameWare as a Administrator
#----------------------------

$secured = ConvertTo-SecureString -AsPlainText -Force $password #Convert string to SecureString. PSCredential is not accepting any other kind of string
$cred = new-object System.Management.Automation.PSCredential $login, $secured #Creating secured object that will be used to autenticate the process.
#Start Process using selected file with credenials and arguments that are passed from mRemoteNG
Start-Process -FilePath <Path To File> -Credential $cred -WorkingDirectory <WD> -ArgumentList <Arguments>