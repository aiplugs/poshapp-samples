$dClass = [System.Management.Automation.Host.FieldDescription]
$cClass = "System.Collections.ObjectModel.Collection"

$descriptions = New-Object "$cClass``1[$dClass]"

$description = New-Object $dclass "String"
$description.SetParameterType([System.String])
$descriptions.Add($description)

$description = New-Object $dclass "Int"
$description.SetParameterType([System.Int32])
$descriptions.Add($description)

$description = New-Object $dclass "Decimal"
$description.SetParameterType([System.Decimal])
$descriptions.Add($description)

$description = New-Object $dclass "DateTime"
$description.SetParameterType([System.DateTime])
$descriptions.Add($description)

$description = New-Object $dclass "Path"
$description.SetParameterType([System.String])
$descriptions.Add($description)


$caption = "Prompt" 
$message = "Please input field" 
 
$host.UI.Prompt($caption, $message, $descriptions)
