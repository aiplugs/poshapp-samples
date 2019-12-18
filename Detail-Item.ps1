param(
	[Parameter(ValueFromPipeline=$true,Mandatory=$true)]
	[PSObject[]]
	$InputObject
)
process {
    "Hello World"

    $InputObject

    123

    Get-Date

    $items = Get-ChildItem | Select -First 10 | %{
        [ordered]@{
            Name = $_.Name;
            Size = $_.Length;
            "Last Modified At" = $_.LastWriteTime
        }
    }

    Write-Output $items -NoEnumerate
}