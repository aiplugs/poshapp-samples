param(
	[int]
	$Page,

	[int]
	$PageSize
)

$ep = "https://services.odata.org/V3/Northwind/Northwind.svc"
$h = @{ "Accept" = "application/json" }

$response = Invoke-RestMethod -Uri "$ep/Orders?`$skip=$($Page * $PageSize)&`$top=$PageSize&`$inlinecount=allpages" -Headers $h

[int]$response.'odata.count'

$response.value | %{
    [ordered]@{
        ID = $_.OrderID;
		Name = $_.ShipName;
		PostalCode = $_.ShipPostalCode;
		Address = $_.ShipAddress;
		City = $_.ShipCity;
		Country = $_.ShipCountry;
		OrderDate = $_.OrderDate;
    }
}