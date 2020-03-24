param(
     [string]
     $Name = "x"
)
$Regions = "eastasia","southeastasia","centralus","eastus", "eastus2", "westus", "northcentralus", "southcentralus",  "northeurope","westeurope", "japaneast", "brazilsouth", "australiaeast", "australiasoutheast", "canadacentral", "uksouth", "westus2", "koreacentral", "francecentral", "southafricanorth","switzerlandnorth"

$Regions | ForEach-Object -Parallel {
    func azure functionapp publish "$($using:Name)$($_)"
} -ThrottleLimit 100