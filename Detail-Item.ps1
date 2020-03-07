param(
	[Parameter(ValueFromPipeline=$true,Mandatory=$true)]
	[PSObject[]]
	$InputObject
)
process {
    $InputObject
}