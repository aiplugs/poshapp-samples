$dependencies = @('Microsoft.PowerShell.SecretStore', 'Microsoft.PowerShell.SecretManagement')

foreach ($dep in $dependencies) 
{
	if (-not (Get-Module -ListAvailable -Name $dep)) {
		Install-Module -Name $dep -Scope CurrentUser
		Import-Module -Name $dep
	}
}


if ((Get-SecretVault | ?{ $_.Name -eq "SecretStore" } | measure).Count -ne 1) {
	Register-SecretVault -Name SecretStore -ModuleName Microsoft.PowerShell.SecretStore -DefaultVault
}

$credential = Get-Secret -Name MySecret -ErrorAction SilentlyContinue

if ($credential -eq $null) {
	$credential = Get-Credential
    Set-Secret -Name MySecret -Secret $credential
}

Write-Output $credential.UserName