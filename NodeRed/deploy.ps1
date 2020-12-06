Connect-AzAccount

Set-AzContext "Main Subscription"

$resourceGroupName = Read-Host -Prompt "Enter the Resource Group name"
New-AzResourceGroup -Name $resourceGroupName -Location "west europe"
$templateFile = "D:\Source\Azure-ArmTemplates\NodeRed\nodeRed.json" 
New-AzResourceGroupDeployment -Name NodeRedTemplate -ResourceGroupName $resourceGroupName -TemplateFile $templateFile