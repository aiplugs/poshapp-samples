$activity = "Progress bar sample"
 
$status = "Status"
 
for($cnt = 0; $cnt -le 100; $cnt++)
{
    Write-Progress $activity $status -PercentComplete $cnt -CurrentOperation "$cnt %"
 
    Start-Sleep -Milliseconds 50
}