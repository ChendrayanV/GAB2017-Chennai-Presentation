$SimpleUbuntuVM = @{
    ResourceGroupName = 'AzureBootCamp2017Ubuntu'
    TemplateFile = "$PSScriptRoot\azuredeploy.json"
    TemplateParameterFile = "$PSScriptRoot\azuredeployparameter.json"
    Mode = 'Complete'
    Force = $true
    Verbose = $true
}
New-AzureRmResourceGroup -Name AzureBootCamp2017Ubuntu -Location 'westeurope' -Verbose
New-AzureRmResourceGroupDeployment @SimpleWindowsVM 