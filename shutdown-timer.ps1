Param([DateTime]$Time)

if ($Time -eq $Null)
{
    $Time = Read-Host -Prompt 'Input time computer should shutdown'
}

Try
{
    Start-Sleep ((Get-Date $Time) - (Get-Date)).TotalSeconds
    Stop-Computer
}
Catch
{
    Write-Host "$($Error[0])" -ForegroundColor Red
}