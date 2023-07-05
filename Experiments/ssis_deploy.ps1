# Variables
$TargetInstanceName = "NECESSARY"
$TargetFolderName = "SSISTest"
$ProjectFilePath = "C:\Users\grant\source\repos\SSISTest\DeployData\bin\Development\DeployData.ispac"
#$ProjectFilePath = "C:\Projects\Integration Services Project1\Integration Services Project1\bin\Development\Integration Services Project1.ispac"
$ProjectName = "SSISTest"

# Get the Integration Services catalog
$catalog = Get-Item SQLSERVER:\SSIS\$TargetInstanceName\Catalogs\SSISDB\

# Create the target folder
New-Object "Microsoft.SqlServer.Management.IntegrationServices.CatalogFolder" ($catalog, 
$TargetFolderName,"Folder description") -OutVariable folder
$folder.Create()

# Read the project file and deploy it
[byte[]] $projectFile = [System.IO.File]::ReadAllBytes($ProjectFilePath)
$folder.DeployProject($ProjectName, $projectFile)

# Verify packages were deployed.
dir "$($catalog.PSPath)\Folders\$TargetFolderName\Projects\$ProjectName\Packages" | 
SELECT Name, DisplayName, PackageId