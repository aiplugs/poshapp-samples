param(
	[int]
	$Page,

	[int]
	$PageSize
)


[ordered]@{
	No = "#1";
	Name = "Message";
	Value = "Hello, World!";
}

[ordered]@{
	No = "#2"
	Name = "Page";
	Message = $Page;
}

[ordered]@{
	No = "#3";
	Name = "PageSize";
	Message = $PageSize;
}

[ordered]@{
	No = "#4";
	Name = "Skip";
	Message = $Page * $PageSize;
}

