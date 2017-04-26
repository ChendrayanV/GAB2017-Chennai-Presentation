# Global Azure Boot Camp 2017 - Chennai
This repository is to share the contents "IaC using PowerShell" we presented in Global Azure Boot Camp 2017 on April 22, 2017 in Chennai. Level 100: Infra as Code | PowerShell | ARM | AzureRm 

<p align="center">
  <img src="https://global.azurebootcamp.net/wp-content/uploads/2016/09/2017-logo-400x270.png"/>
</p>

# Azure ARM and PowerShell Demo
The code shared in this section is show cased in GAB2017 as a demo. Few tips and tricks in PowerShell is also documented here for reference. 

#### Get Started
````PowerShell
# To know your PowerShell Version
PS C:\> ($PSVersionTable).PSVersion

# Update help to get latest information
PS C:\> Update-Help -Verbose

# Know about_Splatting
PS C:\> help about_Splatting

# When to use splatting? Look at the below code which is longer and bit hard to scroll to know the parameter value right?
PS C:\> Send-MailMessage -From 'someone@somedomain.com' -To 'someone@somedomain.com' -SMTPServer 'smtp.somedomain.com' -Subject 'mysubject' -Body 'body goes here'

# Now, let us use splatting and make it easy to read like below.
$EmailParameters = @{
    From = ''
    To = ''
    Smtpserver = ''
    Subject = ''
    Body = ''
}
Send-MailMessage @EmailParameters

# Use Write-Information cmdlet instead Write-Host
PS C:\> Write-Information -MessageData "Welcome to GAB 2017, Chennai!" -InformationAction Continue
# for more information refer PowerShell Information Stream https://blogs.technet.microsoft.com/heyscriptingguy/2015/07/04/weekend-scripter-welcome-to-the-powershell-information-stream/
````
#### Infrastructure as Code demo using AzureRm 

````PowerShell
# Login with Azure Account. The below cmdlet shows the login window.
PS C:\temp\GAB2017-Chennai-Presentation\demo-code> Login-AzureRmAccount
````

#### Build a Windows VM using PowerShell AzureRm Module 
````PowerShell
# This script file build the required entity for a Windows VM
PS C:\temp\GAB2017-Chennai-Presentation\demo-code> .\BuildWindowsVM.ps1
````
### Sample Output
![Text](https://github.com/ChendrayanV/GAB2017-Chennai-Presentation/blob/master/images/BuildVMAzureRM.jpg)

#### Build a Windows VM using ARM template and AzureRm module
````PowerShell
# Using a ARM template we build a VM which includes all the entities
PS C:\temp\GAB2017-Chennai-Presentation\demo-code> .\BuildWindowsVM-ARM.ps1
````

#### Build a Ubuntu VM using ARM template and AzureRm module
````PowerShell
# Using a ARM template we build a VM which includes all the entities
C:\temp\GAB2017-Chennai-Presentation\demo-code> .\BuildUbuntuVM-ARM.ps1
````
#### AzureRm PowerShell Tour
The reason we included this section is to show case the effective use of PowerShell in Azure environment.
````PowerShell
# The reason to alias help instead of Get-Help is to page the content for easy reading
PS C:\> help New-AzureRmVM -Detailed

# List available Resource Groups
PS C:\> Get-AzureRmResourceGroup

# List available Providers Namespace
PS C:\> (Get-AzureRmResourceProvider).ProviderNamespace

# List Location Information
(Get-AzureRmResourceProvider).Locations
```` 
### ARM Snippet
1. Launch Visual Studio Code
2. Click File - Choose Preferences - Select User Snippets
3. Press F1 and type json which creates json.json and appears in working pane with some comments
4. copy paste the json snippet code from [GitHub](https://github.com/rcarmo/azure-vscode-arm-snippets/blob/master/snippets/snippets.json) - Credits to [Contributor: rcarmo](https://github.com/rcarmo)
5. Save and Exit the VS Code
6. Create a AzureDeploy.json file and type arm. Enjoy the snippet! 

### References
Title | Video (Channel 9)
------|------------------
How to create an Azure ARM template in Visual Studio 2015 | [![ScreenShot](https://sec.ch9.ms/ch9/3ed6/bc4fbf4c-3d90-4876-94ad-54962f713ed6/HowToCreateAzureARMTemplate_220.jpg)](https://sec.ch9.ms/ch9/3ed6/bc4fbf4c-3d90-4876-94ad-54962f713ed6/HowToCreateAzureARMTemplate_mid.mp4)
Making an ARM template from SCRATCH | [![ScreenShot](https://sec.ch9.ms/ch9/75d6/3078420d-e175-4f53-9b9b-09536c3975d6/armtemplate1_220.jpg)](https://sec.ch9.ms/ch9/75d6/3078420d-e175-4f53-9b9b-09536c3975d6/armtemplate1_high.mp4)
PowerShell and Azure Automation | [![ScreenShot](https://sec.ch9.ms/ch9/08d8/bd759a13-4b36-42bf-8b13-4b5459f308d8/PowerShellandAzureAutomation_220.jpg)](https://sec.ch9.ms/ch9/08d8/bd759a13-4b36-42bf-8b13-4b5459f308d8/PowerShellandAzureAutomation_high.mp4)
101 of Azure ARM Templates | [![ScreenShot](https://sec.ch9.ms/ch9/2a38/bdbf46b3-7466-4545-9b11-90f527932a38/CLD321_220.jpg)](https://sec.ch9.ms/ch9/2a38/bdbf46b3-7466-4545-9b11-90f527932a38/CLD321_mid.mp4)

### Handy PDF References
Title | Download Link | Reference Link
------|---------------|---------------
Create a Windows virtual machine with PowerShell | [PDF Article](https://docs.microsoft.com/pdfstore/en-us/Azure.azure-documents/live/virtual-machines/windows.pdf) | [Web Link](https://docs.microsoft.com/en-us/azure/virtual-machines/windows/quick-create-powershell)
Azure Virtual Machine PowerShell samples | Same as above | [Web Link](https://docs.microsoft.com/en-us/azure/virtual-machines/windows/powershell-samples)
Understand the structure and syntax of Azure Resource Manager templates | [PDF Article](https://docs.microsoft.com/pdfstore/en-us/Azure.azure-documents/live/azure-resource-manager.pdf) | [Web Link](https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-authoring-templates)
Create your first Azure Resource Manager template | [PDF Article](https://docs.microsoft.com/pdfstore/en-us/Azure.azure-documents/live/azure-resource-manager.pdf) | [Web Link](https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-manager-create-first-template)
Getting started with Azure Automation DSC | [PDF Article](https://docs.microsoft.com/pdfstore/en-us/Azure.azure-documents/live/automation.pdf) | [Web Link](https://docs.microsoft.com/en-us/azure/automation/automation-dsc-getting-started) 

### Download Tools
Title | Download Link
------|--------------
Visual Studio Code | [Download](https://code.visualstudio.com/download)
PowerShell Extension | [Download](https://marketplace.visualstudio.com/items?itemName=ms-vscode.PowerShell)
Azure Resource Manager Tools | [Download](https://marketplace.visualstudio.com/items?itemName=msazurermtools.azurerm-vscode-tools)
Git for Windows | [Download](https://git-scm.com/download/win)
Latest WMF | [Download](https://msdn.microsoft.com/en-us/powershell/)
AzureRm Module (Only for PowerShell 5.0 and Greater) | [Download](https://www.powershellgallery.com/packages/AzureRM/3.8.0)

### Open Discussion
Title |Reference Link
------|--------------
I am new to PowerShell. Where can get good resources to learn? | [MVA](https://mva.microsoft.com/training-topics/powershell#!lang=1033) and [Channel9](https://channel9.msdn.com/Search?term=PowerShell#ch9Search&lang-en=en&pubDate=year) are best!
I do PowerShell but how to improve my skill? | Keep on practicing, Keep learning new tricks from [Blogs] or Social Netwoking like [PowerShell.Org](http://www.PowerShell.org)
Any PowerShell video for SQL IT Professional | [There you go - MVA](https://mva.microsoft.com/en-US/training-courses/16532)
Any guide for PowerShell Scripting | There are many! I suggest [Windows Powershell Scripting Guide](http://www.amazon.in/Windows-Powershell-Scripting-Guide-Wilson/dp/8120334590?tag=googinhydr18418-21&tag=googinkenshoo-21&ascsubtag=d917610b-b299-4fc9-84b0-b253d59bd3ba) 
Do we have any certification for PowerShell | No, No and No!
Where can we get AzureRm Module? | [From PowerShell Gallery](https://www.powershellgallery.com/packages/AzureRM/3.8.0) - Refer the version and install the latest
Who should to write PowerShell scripts? | Anybody works in IT and loves to automate things! It's common for both IT Pro's and Developers
It's bit complex to understand ARM template | Yes, but read [structs and syntax](https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-authoring-templates) to get basic idea. 
How can we write ARM template using VS Code? | It's a JSON file and possible to write using VS Code. However, bit time consuming so configure user snippets as shown in ARM Snippet section
Can we modify the configuration defined in ARM manually by logging to server? | Yes, it's possible.
How can we pass secure password while deploying? | [Use Key Vault](https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-manager-keyvault-parameter)
Can we use C# rather than PowerShell? | Yes, very well you can opt C#. Refer [Deploy an Azure VM using C#](https://docs.microsoft.com/en-us/azure/virtual-machines/windows/csharp)
Do we need to be expert in PowerShell to learn PowerShell DSC? | Well, knowing PowerShell will help a lot in PS DSC.

### Quick Access
Title | Quick Links
------|------------
Simple Ubuntu Server | [PowerShell Code](https://github.com/ChendrayanV/GAB2017-Chennai-Presentation/blob/master/demo-code/BuildUbuntuVM-ARM.ps1) , [ARM Template](https://github.com/ChendrayanV/GAB2017-Chennai-Presentation/blob/master/demo-code/arm-templates/SingleUbuntuServer/azuredeploy.json) and [Parameter JSON](https://github.com/ChendrayanV/GAB2017-Chennai-Presentation/blob/master/demo-code/arm-templates/SingleUbuntuServer/azuredeployparameter.json)
Simple Windows Server | [PowerShell Code](https://github.com/ChendrayanV/GAB2017-Chennai-Presentation/blob/master/demo-code/BuildWindowsVM-ARM.ps1) , [ARM Template](https://github.com/ChendrayanV/GAB2017-Chennai-Presentation/blob/master/demo-code/arm-templates/SingleWindowsServer/azuredeploy.json) and [Parameter JSON](https://github.com/ChendrayanV/GAB2017-Chennai-Presentation/blob/master/demo-code/arm-templates/SingleWindowsServer/azuredeployparameter.json)

### Disclaimer
1. This is a demo code so please validate and test in your environment. We used clear text password in the Parameter JSON file which is very bad practise. Please don't do it in any environment (Including Test)
2. The PowerShell and JSON codes are built on the fly for a demo. So, may have some mistakes. 
3. Azure DSC Demo code is not included for now. 

### Contact
Social Network | Identity
---------------|---------
Twitter | [@ChendrayanV](https://twitter.com/ChendrayanV)
LinkedIn | [Chendrayan Venkatesan](https://in.linkedin.com/in/chendrayanv)
Facebook | [Chendrayan Venkatesan](https://www.facebook.com/chendrayanv)