param(
	[Parameter(ValueFromPipeline=$true)]
	[PSObject[]]
	$InputObject
)
process {
	foreach ($o in $InputObject) 
    {
        Write-Host $o.Name
    }
}