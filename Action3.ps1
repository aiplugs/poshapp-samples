param(
	[Parameter(ValueFromPipeline=$true)]
	[PSObject[]]
	$InputObject
)
process {
	Write-Information "Hello, World"

	for ($i = 1; $i -le 10; $i++) {
		Write-Host "$i of 10"
		Start-Sleep -Seconds 3
	}
}