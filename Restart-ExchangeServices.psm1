function Restart-ExchangeServices {
    <#
    .SYNOPSIS
    Restarts running Microsoft Exchange services on the server.

    .DESCRIPTION
    Restarts running Microsoft Exchange services on the server.

    .EXAMPLE
    Restart-ExchangeServices

    #>
    
    $services = Get-Service | ? { $_.name -like "MSExchange*" -and $_.Status -eq "Running"}
    foreach ($service in $services) {Restart-Service $service.name -Force}
}