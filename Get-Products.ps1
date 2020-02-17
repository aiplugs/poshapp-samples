param(
	[int]
	$Page,

	[int]
	$PageSize
)

$ep = "https://services.odata.org/V4/OData/OData.svc"
$h = @{ "Accept" = "application/json" }

$response = Invoke-RestMethod -Uri "$ep/Products" -Headers $h

$response.value | %{
    [ordered]@{
        ID = $_.Id;
		Name = $_.Name;
		Description = $_.Description;
		Price = "`$ " + $_.Price;
		ReleaseDate = $_.ReleaseDate;
		Rating = $_.Rating;
    }
}