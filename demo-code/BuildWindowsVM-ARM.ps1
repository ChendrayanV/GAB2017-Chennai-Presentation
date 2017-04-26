$SimpleWindowsVM = @{
    ResourceGroupName = 'AzureBootCamp2017'
    TemplateFile = "$PSScriptRoot\arm-templates\SingleWindowsServer\azuredeploy.json"
    TemplateParameterFile = "$PSScriptRoot\arm-templates\SingleWindowsServer\azuredeployparameter.json"
    Mode = 'Complete'
    Force = $true
    Verbose = $true
}
New-AzureRmResourceGroup -Name AzureBootCamp2017 -Location 'westeurope' -Verbose
New-AzureRmResourceGroupDeployment @SimpleWindowsVM 