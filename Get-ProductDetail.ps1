param(
	[Parameter(ValueFromPipeline=$true,Mandatory=$true)]
	[PSObject]
	$InputObject
)

$ep = "https://services.odata.org/V4/OData/OData.svc"

$h = @{ "Accept" = "application/json" }

$id = $InputObject.ID

$response = Invoke-RestMethod -Uri "$ep/Products($id)?`$expand=ProductDetail" -Headers $h

$response
