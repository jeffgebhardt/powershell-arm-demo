# Azure ARM template Deployment via PowerShell

### Requirements
* Azure Subscription
* Windows Powershell
    * AzureRM Module installed/loaded
---
### Setup your environment
1. Install AzureRM powershell module (If you already have it installed, skip to the next step.)
    * Documentation: https://docs.microsoft.com/en-us/powershell/azure/install-azurerm-ps?view=azurermps-5.6.0
	* Open up PowerShell ISE or PowerShell and run the following:
		* `Install-Module -Name AzureRM -AllowClobber` & `Import-Module -Name AzureRM`
2. Login to your Azure Subscription
    * If you don't have an Azure account, sign up for free here: https://azure.microsoft.com/en-us/free/
    * And then from PowerShell run: `Connect-AzureRmAccount`
	* If you you have multiple subcriptions, you will need to select the one you want to use:
		* `Select-AzureRmSubscription`
3. Clone this repository
    * `git clone https://github.com/jeffgebhardt/powershell-arm-demo`
    * Change directories to the root of the repository

### Modify azureDeploy.ps1
A couple parameters must be set, before deploying the template. Open up azureDeply.ps1 in your favorite editor and replace all of the following sections:
* `$resourceGroupName = "<rg name>"`
* `$resourceGroupLocation = "<rg location>"`
* `storageAccountType = "<storage type>";`
* `storageAccountNamePrefix = "<name prefix>";`
* `$templatePath = "<path>"`

**Example:**
* `$resourceGroupName = "storageDemo>"`
* `$resourceGroupLocation = "eastus"`
* `storageAccountType = "Premium_LRS";`
* `storageAccountNamePrefix = "storage";`
* `$templatePath = ".\template.json"`

### Deploy the template
Finally deploy the template using the PowerShell ISE (Hit F5) or with PowerShell: `.\azureDeploy.ps1`


### Wrap Up
Now that you are familiar with ARM templates and deploying them with PowerShell, try out some of the quick start templates and customize them to your needs:
* https://github.com/Azure/azure-quickstart-templates

Another helpful tool when developing ARM templates:
* https://docs.microsoft.com/en-us/azure/azure-resource-manager/vs-azure-tools-resource-groups-deployment-projects-create-deploy