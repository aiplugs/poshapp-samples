param(
	[Parameter(ValueFromPipeline=$true,Mandatory=$true)]
	[PSObject]
	$InputObject
)

$ep = "https://services.odata.org/V3/Northwind/Northwind.svc"

$h = @{ "Accept" = "application/json" }

$id = $InputObject.ID

$response = Invoke-RestMethod -Uri "$ep/Orders($id)?`$expand=Order_Details,Customer" -Headers $h

"Order Info"

[ordered]@{
	OrderID = $response.OrderID
	OrderDate = $response.OrderDate
	RequiredDate = $response.RequiredDate
	ShippedDate = $response.ShippedDate
	ShipVia = $response.ShipVia
	Freight = $response.Freight
	ShipName = $response.ShipName
	ShipAddress = $response.ShipAddress
	ShipCity = $response.ShipCity
	ShipRegion = $response.ShipRegion
	ShipPostalCode = $response.ShipPostalCode
	ShipCountry = $response.ShipCountry
}

"Order Details"
Write-Output $response.Order_Details -NoEnumerate

"Customer Info"
$response.Customer

