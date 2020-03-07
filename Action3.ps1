param(
	[Parameter(ValueFromPipeline=$true)]
	[PSObject[]]
	$InputObject
)
process {
	
	$colors = @(
		"White", 
		"DarkBlue", 
		"DarkGreen", 
		"DarkCyan", 
		"DarkRed", 
		"DarkMagenta", 
		"DarkYellow", 
		"Gray", 
		"DarkGray", 
		"Blue", 
		"Cyan", 
		"Red"
	)

	for ($i = 1; $i -le 10; $i++) {
		Write-Host "$i of 10" -ForegroundColor $colors[$i-1]
		Start-Sleep -Seconds 1
	}

}