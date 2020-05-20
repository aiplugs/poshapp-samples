param (
    [Parameter(ValueFromPipeline=$true)]
    [PSObject[]]
    $InputObject
)
process {
    $outfile = "$Home\out.txt"
    "Action1 Outputs" > $outfile
    foreach ($o in $InputObject) 
    {
        ConvertTo-Json $o >> $outfile
    }
    start $outfile
}
