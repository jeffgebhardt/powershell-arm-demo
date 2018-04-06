# Create Resource Group
$resourceGroupName = "<rg name>"
$resourceGroupLocation = "<rg location>"
$rg = New-AzureRmResourceGroup -Name $resourceGroupName -Location $resourceGroupLocation

# Deploy Template
$parameters = @{
	storageAccountType = "<storage type>";
	storageAccountNamePrefix = "<name prefix>";
}

$templatePath = "<path>"
New-AzureRmResourceGroupDeployment -ResourceGroupName $rg.ResourceGroupName -TemplateFile $templatePath -TemplateParameterObject $parameters -Verbose