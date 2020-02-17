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
		"ReadOnly, Directory" = "📁";
		"ReadOnly, Directory, Archive, ReparsePoint" = "🌍";
	}
	return $mapping[$key];
}

(Get-ChildItem -Path $Home).Count

Get-ChildItem -Path $Home | Select -Skip ($Page * $PageSize) -First $PageSize | %{
	[ordered]@{
		" " = Format-Attributes $_.Attributes;
		"💬 Name" = $_.Name;
		"📐 Size" = $_.Length;
        "🕒 LastWriteTime" = $_.LastWriteTime
	}
} 
