param(
	[string]
	$String,

	[int]
	$Page = 0,

	[int]
	$PageSize = 10
)

function Format-Attributes($Attributes)
{
	$key = $Attributes.ToString();
	$mapping = @{
		Directory = "📁";
		Archive = "📄";
	}
	return $mapping[$key];
}

(Get-ChildItem).Count

Get-ChildItem | Select -Skip ($Page * $PageSize) -First $PageSize | %{
	[ordered]@{
		" " = Format-Attributes $_.Attributes;
		"💬 Name" = $_.Name;
		"📐 Size" = $_.Length;
        "🕒 LastWriteTime" = $_.LastWriteTime
	}
} 
